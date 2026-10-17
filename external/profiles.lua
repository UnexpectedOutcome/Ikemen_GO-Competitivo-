-- Player Profiles for IKEMEN GO v1.7.3
--
-- A profile carries a player's name, win/loss record, streaks, play-style
-- numbers (KOs, perfects, time-outs, super finishes, favourite fighters...)
-- and their own button layouts - one per controller type (keyboard, and each
-- kind of gamepad by its GUID), so the right layout loads for whatever the
-- player is holding.
--
--  * Before character select every human player picks a profile (or GUEST).
--    The cursor starts on the profile that player used last.
--  * During fights the profile name is shown in the lifebar corner (or above
--    the fighter / off - set in the PROFILES menu). Guests show nothing.
--  * Stats are updated after every finished fight.
--  * PROFILES menu item (main menu): make, rename, delete profiles, see stats,
--    save the current button setup to a profile, name tag style, and whether
--    to ask for profiles before character select.
--
-- Saved in save/profiles.json. Other modules (online lobby later) can use:
--   playerProfiles.get(playerNo) -> profile table or nil (guest)
--   playerProfiles.name(playerNo) -> '' for guests
--   playerProfiles.export(id)    -> plain table safe to send over the network

local PF = {VERSION = '1.7.3', file = 'save/profiles.json', legacyFile = 'external/mods/playerprofiles/profiles.json', active = {}, maxName = 12, maxProfiles = 32, pendingTitleUnlocks = {}}
playerProfiles = PF

local KEYS = {'up', 'down', 'left', 'right', 'a', 'b', 'c', 'x', 'y', 'z', 'start', 'd', 'w', 'menu'}
local UI = {
	up = {'U'}, down = {'D'}, left = {'B'}, right = {'F'},
	confirm = {'a', 'c', 'x', 'z', 's'},
	back = {'b', 'y', 'm'},
}
local LW, LH, LAYER = 1280, 720, 2
local P1C, P2C = {255, 70, 220}, {60, 220, 255}
local GOLD, WHITE, GREY, DARK = {255, 205, 60}, {240, 240, 250}, {150, 160, 185}, {12, 12, 24}

-------------------------------------------------------------------------------
-- storage
-------------------------------------------------------------------------------
local function fileExists(p)
	local f = io.open(p, 'r')
	if f then f:close() return true end
	return false
end

local function blankStats()
	return {
		matches = 0, wins = 0, losses = 0, draws = 0,
		streak = 0, bestStreak = 0, loseStreak = 0,
		roundsWon = 0, roundsLost = 0,
		koWins = 0, perfects = 0, timeWins = 0, specialFinishes = 0, superFinishes = 0, clutch = 0,
		vsHuman = 0, vsCpu = 0, winsVsHuman = 0,
		playTime = 0, -- ticks
		modes = {}, chars = {},
		lastPlayed = 0,
	}
end

local function clampByte(n)
	n = tonumber(n) or 0
	return math.max(0, math.min(255, math.floor(n + 0.5)))
end

local function normalizeColor(c, fallback)
	if type(c) ~= 'table' then return {fallback[1], fallback[2], fallback[3]} end
	return {clampByte(c[1] or c.r), clampByte(c[2] or c.g), clampByte(c[3] or c.b)}
end

function PF.defaults()
	return {version = 6, profiles = {}, last = {}, settings = {
		ask = true, tag = 'corner', tagalign = 0,
		tagcolors = {{255, 70, 220}, {60, 220, 255}},
		tagboxcolors = {{10, 8, 26}, {10, 8, 26}},
		tagboxalpha = 170, tagpadx = 8, tagpady = 14,
	}}
end

function PF.load()
	local d = nil
	local importedLegacy = false
	if fileExists(PF.file) then
		local ok, v = pcall(jsonDecode, PF.file)
		if ok and type(v) == 'table' then d = v end
	elseif fileExists(PF.legacyFile) then
		-- The community 1.3 fork saved beside the mod. Import it once into the
		-- normal save folder so existing users keep their profiles on upgrade.
		local ok, v = pcall(jsonDecode, PF.legacyFile)
		if ok and type(v) == 'table' then d, importedLegacy = v, true end
	end
	d = d or PF.defaults()
	d.profiles = d.profiles or {}
	d.version = 6
	d.last = d.last or {}
	d.settings = d.settings or {}
	if d.settings.ask == nil then d.settings.ask = true end
	d.settings.tag = d.settings.tag or 'corner'
	if d.settings.tag == 'custom' then d.settings.tag = 'corner' end
	-- Migrate the community fork's camelCase settings without discarding any
	-- v1.4 settings. Lower-case keys are the canonical v1.5 format.
	if d.settings.tagalign == nil then d.settings.tagalign = d.settings.tagAlign end
	if d.settings.tagsize == nil then d.settings.tagsize = d.settings.tagScale end
	if d.settings.tagpos == nil then d.settings.tagpos = d.settings.tagPos end
	if d.settings.tagboxalpha == nil then d.settings.tagboxalpha = d.settings.tagBoxAlpha end
	if d.settings.tagpadx == nil then d.settings.tagpadx = d.settings.tagPadX end
	if d.settings.tagpady == nil then d.settings.tagpady = d.settings.tagPadY end
	d.settings.tagcolors = d.settings.tagcolors or {d.settings.tagColor1, d.settings.tagColor2}
	d.settings.tagboxcolors = d.settings.tagboxcolors or {d.settings.tagBoxColor1, d.settings.tagBoxColor2}
	if d.settings.tagalign ~= -1 and d.settings.tagalign ~= 0 and d.settings.tagalign ~= 1 then d.settings.tagalign = 0 end
	d.settings.tagcolors[1] = normalizeColor(d.settings.tagcolors[1], P1C)
	d.settings.tagcolors[2] = normalizeColor(d.settings.tagcolors[2], P2C)
	d.settings.tagboxcolors[1] = normalizeColor(d.settings.tagboxcolors[1], {10, 8, 26})
	d.settings.tagboxcolors[2] = normalizeColor(d.settings.tagboxcolors[2], {10, 8, 26})
	d.settings.tagboxalpha = clampByte(d.settings.tagboxalpha == nil and 170 or d.settings.tagboxalpha)
	d.settings.tagpadx = math.max(0, math.min(80, tonumber(d.settings.tagpadx) or 8))
	d.settings.tagpady = math.max(0, math.min(80, tonumber(d.settings.tagpady) or 14))
	for _, p in ipairs(d.profiles) do
		p.stats = p.stats or blankStats()
		for k, v in pairs(blankStats()) do
			if p.stats[k] == nil then p.stats[k] = v end
		end
		p.controls = p.controls or {}
		if type(p.history) ~= 'table' then p.history = {} end
		p.title = tostring(p.title or 'ROOKIE CONTENDER')
		if type(p.unlockedTitles) ~= 'table' then p.unlockedTitles = {'rookie_contender'} end
		p.theme = tostring(p.theme or 'neon'):lower()
		if type(p.featuredBadges) ~= 'table' then p.featuredBadges = {} end
		if type(p.eventAchievements) ~= 'table' then p.eventAchievements = {} end
		if type(p.tournaments) ~= 'table' then p.tournaments = {} end
		-- Preserve the fork's magic profile names while offering an explicit,
		-- rename-safe setting in v1.5.
		if p.tagsource == nil and type(p.name) == 'string' and (p.name:lower() == 'author p1' or p.name:lower() == 'author p2') then
			p.tagsource = 'author'
		end
		p.tagsource = p.tagsource == 'author' and 'author' or 'profile'
	end
	PF.data = d
	if importedLegacy then PF.save() end
	return d
end

function PF.save()
	if PF.data == nil then return end
	pcall(jsonEncode, PF.data, PF.file)
end

function PF.byId(id)
	if id == nil or PF.data == nil then return nil end
	for i, p in ipairs(PF.data.profiles) do
		if p.id == id then return p, i end
	end
	return nil
end

function PF.get(pn) return PF.byId(PF.active[pn]) end

-- Online matches (Online Lobby mod): names come from the lobby, not from the
-- local profile picker. ikemenParty.online = {side = 1|2, names = {...}}.
local function onlineMatch()
	return netPlay ~= nil and netPlay() and ikemenParty ~= nil and ikemenParty.online ~= nil
end
PF.onlineMatch = onlineMatch
function PF.byName(name)
	for _, p in ipairs(PF.data and PF.data.profiles or {}) do
		if p.name == name then return p end
	end
	return nil
end

-- Event modules can award persistent, displayable achievements without
-- knowing the profile file format. eventId + key form a stable unique ID.
function PF.awardEvent(profileId, eventId, key, label, detail)
	local p = PF.byId(profileId) or PF.byName(profileId)
	if p == nil then return false end
	p.eventAchievements = p.eventAchievements or {}
	local id = tostring(eventId or 'community') .. ':' .. tostring(key or label or 'award')
	for _, a in ipairs(p.eventAchievements) do if a.id == id then return true end end
	p.eventAchievements[#p.eventAchievements + 1] = {
		id = id, event = tostring(eventId or 'COMMUNITY'), label = tostring(label or key or 'EVENT AWARD'),
		detail = tostring(detail or ''), earned = os.time(),
	}
	PF.save()
	return true
end

-- Tournament/lobby modules can publish placements to the profile dashboard.
-- `verified` should only be true when the result came from the online service
-- or a trusted tournament module, never from local self-reported input.
function PF.recordTournament(profileId, eventId, name, placement, fieldSize, season, verified)
	local p = PF.byId(profileId) or PF.byName(profileId)
	if p == nil then return false end
	p.tournaments = p.tournaments or {}
	local id = tostring(eventId or name or os.time())
	local row = nil
	for _, t in ipairs(p.tournaments) do if t.id == id then row = t break end end
	row = row or {id = id}
	row.name = tostring(name or eventId or 'TOURNAMENT')
	row.placement = math.max(1, tonumber(placement) or 1)
	row.fieldSize = math.max(row.placement, tonumber(fieldSize) or row.placement)
	row.season = tostring(season or '')
	row.verified = verified == true
	row.time = os.time()
	local found = false
	for _, t in ipairs(p.tournaments) do if t == row then found = true break end end
	if not found then table.insert(p.tournaments, 1, row) end
	if PF.refreshTitleUnlocks then PF.refreshTitleUnlocks(p, false) end
	PF.save()
	return true
end

-- Ranked data is display-only and must come from the lobby/server integration.
-- It is deliberately not accepted from the editable local profile save.
function PF.onlineRankFor(p)
	if ikemenParty == nil then return nil end
	for _, fn in ipairs({'rankFor', 'onlineRank', 'profileRank'}) do
		if type(ikemenParty[fn]) == 'function' then
			local ok, data = pcall(ikemenParty[fn], p.name, p.id)
			if ok and type(data) == 'table' then return data end
		end
	end
	return nil
end

function PF.name(pn)
	if onlineMatch() then
		local ok, n = pcall(ikemenParty.onlineName, pn)
		return ok and n or ''
	end
	local p = PF.get(pn)
	return p and p.name or ''
end

-- Resolve the fighter currently leading a tag/turns team. This keeps both
-- author labels and above-fighter labels attached to the active member.
local function memberPlayerIndex(side, member, sel)
	if sel and sel.pn ~= nil then return sel.pn end
	if main and main.coop and not (gameMode and gameMode('versuscoop')) then return side + member - 1 end
	return side == 1 and member * 2 - 1 or member * 2
end

local function activeFighter(side)
	if not start or not start.p or not start.p[side] then return nil, nil end
	local sels = start.p[side].t_selected
	if type(sels) ~= 'table' or #sels == 0 then return nil, nil end
	for i, v in ipairs(sels) do
		local idx = memberPlayerIndex(side, i, v)
		local ok, active = pcall(function()
			if not player(idx) then return false end
			if teamLeader then return teamLeader() == idx end
			if standby then return not standby() end
			return #sels == 1
		end)
		if ok and active then return idx, v.ref end
	end
	return memberPlayerIndex(side, 1, sels[1]), sels[1].ref
end

local function authorOfRef(ref)
	if ref == nil then return nil end
	local ok, info = pcall(getCharInfo, ref)
	if ok and type(info) == 'table' and type(info.author) == 'string' and info.author ~= '' then return info.author end
	local ok2, data = pcall(function() return start.f_getCharData(ref) end)
	if ok2 and type(data) == 'table' and type(data.author) == 'string' and data.author ~= '' then return data.author end
	return nil
end

function PF.displayName(pn)
	if onlineMatch() then return PF.name(pn) end
	local p = PF.get(pn)
	if p == nil then return '' end
	if p.tagsource == 'author' then
		local side = PF.sideOf()[pn]
		local _, ref = activeFighter(side)
		return authorOfRef(ref) or p.name or ''
	end
	return p.name or ''
end

function PF.nameTaken(name, exceptId)
	for _, p in ipairs(PF.data.profiles) do
		if p.id ~= exceptId and p.name:lower() == name:lower() then return true end
	end
	return false
end

function PF.create(name)
	if #PF.data.profiles >= PF.maxProfiles then return nil, 'too many profiles' end
	name = (name or ''):gsub('^%s+', ''):gsub('%s+$', '')
	if name == '' then return nil, 'empty name' end
	if PF.nameTaken(name) then return nil, 'name already used' end
	local id = string.format('%x%04x', os.time(), math.random(0, 0xffff))
	local p = {id = id, name = name, created = os.time(), stats = blankStats(), controls = {}, history = {},
		title = 'ROOKIE CONTENDER', unlockedTitles = {'rookie_contender'}, theme = 'neon', featuredBadges = {}, eventAchievements = {}, tournaments = {}, tagsource = 'profile'}
	table.insert(PF.data.profiles, p)
	PF.save()
	return p
end

function PF.delete(id)
	local _, i = PF.byId(id)
	if i == nil then return end
	table.remove(PF.data.profiles, i)
	for k, v in pairs(PF.active) do if v == id then PF.active[k] = nil end end
	for k, v in pairs(PF.data.last) do if v == id then PF.data.last[k] = nil end end
	PF.save()
end

-- network-safe copy (no controls, numbers and strings only)
function PF.export(id)
	local p = PF.byId(id)
	if p == nil then return nil end
	local s = p.stats
	return {id = p.id, name = p.name, matches = s.matches, wins = s.wins, losses = s.losses,
		draws = s.draws, streak = s.streak, bestStreak = s.bestStreak, favorite = PF.favorite(p),
		title = p.title, unlockedTitles = p.unlockedTitles, theme = p.theme, featuredBadges = p.featuredBadges}
end

-------------------------------------------------------------------------------
-- controls: one layout per device ("keyboard", "pad:<GUID>")
-------------------------------------------------------------------------------
local function opt(name)
	local ok, v = pcall(gameOption, name)
	if ok then return v end
	return nil
end

function PF.padIndex(pn)
	local c = opt('Joystick_P' .. pn)
	if type(c) ~= 'table' or c.Joystick == nil then return nil end
	local j = tonumber(c.Joystick)
	if j == nil or j < 0 then return nil end
	if getJoystickPresent and not getJoystickPresent(j) then return nil end
	return j
end

function PF.padKey(j)
	local guid = getJoystickGUID and getJoystickGUID(j) or ''
	if guid ~= nil and guid ~= '' then return 'pad:' .. guid end
	local n = getJoystickName and getJoystickName(j) or ''
	if n ~= nil and n ~= '' then return 'pad:' .. n end
	return nil
end

function PF.padName(j)
	local n = getJoystickName and getJoystickName(j) or ''
	if n == nil or n == '' then n = 'Gamepad ' .. (j + 1) end
	return n
end

local function layoutFrom(c)
	local t = {}
	for i, k in ipairs(KEYS) do t[i] = tostring(c[k] or '') end
	return t
end

-- copy this player's current button setup (keyboard + connected pad) into a profile
function PF.captureControls(prof, pn)
	local saved = {}
	local kc = opt('Keys_P' .. pn)
	if type(kc) == 'table' then
		prof.controls.keyboard = {name = 'Keyboard', keys = layoutFrom(kc)}
		saved[#saved + 1] = 'Keyboard'
	end
	local j = PF.padIndex(pn)
	if j ~= nil then
		local key = PF.padKey(j)
		local jc = opt('Joystick_P' .. pn)
		if key and type(jc) == 'table' then
			prof.controls[key] = {name = PF.padName(j), keys = layoutFrom(jc)}
			saved[#saved + 1] = PF.padName(j)
		end
	end
	PF.save()
	return saved
end

-- back to what config.ini says for this player
function PF.restoreControls(pn)
	local kc = opt('Keys_P' .. pn)
	if type(kc) == 'table' then pcall(setKeyConfig, pn, -1, layoutFrom(kc)) end
	local jc = opt('Joystick_P' .. pn)
	if type(jc) == 'table' and tonumber(jc.Joystick) and tonumber(jc.Joystick) >= 0 then
		pcall(setKeyConfig, pn, tonumber(jc.Joystick), layoutFrom(jc))
	end
end

-- load the profile's layouts for whatever this player is using right now
function PF.applyControls(pn)
	PF.restoreControls(pn)
	local prof = PF.get(pn)
	if prof == nil then return end
	local kb = prof.controls.keyboard
	if kb and kb.keys then pcall(setKeyConfig, pn, -1, kb.keys) end
	local j = PF.padIndex(pn)
	if j ~= nil then
		local key = PF.padKey(j)
		local pad = key and prof.controls[key]
		if pad and pad.keys then pcall(setKeyConfig, pn, j, pad.keys) end
	end
end

function PF.select(pn, id)
	PF.active[pn] = id
	PF.data.last[tostring(pn)] = id or ''
	PF.applyControls(pn)
	PF.save()
end

-------------------------------------------------------------------------------
-- stats
-------------------------------------------------------------------------------
function PF.favorite(p)
	local best, n = nil, 0
	for name, c in pairs(p.stats.chars or {}) do
		if (c.used or 0) > n then best, n = name, c.used end
	end
	return best
end

local function charName(ref)
	local ok, n = pcall(function() return start.f_getCharData(ref).name end)
	if ok and n then return n end
	return '?'
end

local function teamNames(side)
	local out = {}
	for _, v in ipairs(start and start.p and start.p[side] and start.p[side].t_selected or {}) do
		out[#out + 1] = charName(v.ref)
	end
	return out
end

local function finishName(side, lastMatch)
	local rounds = type(lastMatch) == 'table' and lastMatch.Rounds or nil
	local r = type(rounds) == 'table' and rounds[#rounds] or nil
	local f = r and r.Fighters and r.Fighters[side] and r.Fighters[side][1] or nil
	if type(f) ~= 'table' then return 'DECISION' end
	if f.WinPerfect then return 'PERFECT' end
	if f.WinHyper then return 'SUPER FINISH' end
	if f.WinSpecial then return 'SPECIAL FINISH' end
	if f.WinTime then return 'TIME OVER' end
	if f.WinKO then return 'KO' end
	return f.DrawGame and 'DRAW' or 'DECISION'
end

local function roundScore(lastMatch)
	local score = {0, 0}
	for _, r in ipairs(type(lastMatch) == 'table' and lastMatch.Rounds or {}) do
		for side = 1, 2 do
			local f = r.Fighters and r.Fighters[side] and r.Fighters[side][1]
			if type(f) == 'table' and f.Win then score[side] = score[side] + 1 end
		end
	end
	return score
end

local function stageName()
	local ok, n = pcall(stageVar, 'info.name')
	if ok and n ~= nil and tostring(n) ~= '' then return tostring(n) end
	return 'UNKNOWN STAGE'
end

-- record one finished fight. sideOf[pn] = team side the player was on.
function PF.recordMatch(winner, sideOf, cpuSide, lastMatch)
	if winner ~= 0 and winner ~= 1 and winner ~= 2 then return end
	if type(lastMatch) ~= 'table' or type(lastMatch.Rounds) ~= 'table' or #lastMatch.Rounds < 1 then return end
	local mode = gameMode and gameMode() or ''
	local changed = false
	for pn, id in pairs(PF.active) do
		local prof = PF.byId(id)
		local side = sideOf[pn]
		if prof and side and prof.tagsource ~= 'author' then
			local s = prof.stats
			local other = side == 1 and 2 or 1
			local won, lost = winner == side, winner == other
			s.matches = s.matches + 1
			s.modes[mode] = (s.modes[mode] or 0) + 1
			if cpuSide[other] then s.vsCpu = s.vsCpu + 1 else s.vsHuman = s.vsHuman + 1 end
			if won then
				s.wins = s.wins + 1
				s.streak = s.streak + 1
				s.loseStreak = 0
				if s.streak > s.bestStreak then s.bestStreak = s.streak end
				if not cpuSide[other] then s.winsVsHuman = s.winsVsHuman + 1 end
			elseif lost then
				s.losses = s.losses + 1
				s.streak = 0
				s.loseStreak = s.loseStreak + 1
			else
				s.draws = s.draws + 1
			end
			for _, v in ipairs(start.p[side].t_selected or {}) do
				local n = charName(v.ref)
				local c = s.chars[n] or {used = 0, wins = 0}
				c.used = c.used + 1
				if won then c.wins = c.wins + 1 end
				s.chars[n] = c
			end
			if type(lastMatch) == 'table' then
				s.playTime = s.playTime + (tonumber(lastMatch.MatchTime) or 0)
				for _, r in ipairs(lastMatch.Rounds or {}) do
					local f = r.Fighters and r.Fighters[side] and r.Fighters[side][1]
					if type(f) == 'table' then
						if f.Win then
							s.roundsWon = s.roundsWon + 1
							if f.WinKO then s.koWins = s.koWins + 1 end
							if f.WinPerfect then s.perfects = s.perfects + 1 end
							if f.WinTime then s.timeWins = s.timeWins + 1 end
							if f.WinSpecial then s.specialFinishes = s.specialFinishes + 1 end
							if f.WinHyper then s.superFinishes = s.superFinishes + 1 end
							if f.WinClutch then s.clutch = s.clutch + 1 end
						elseif not f.DrawGame then
							s.roundsLost = s.roundsLost + 1
						end
					end
				end
			end
			s.lastPlayed = os.time()
			local opponentPn = nil
			for q, qSide in pairs(sideOf) do if qSide == other then opponentPn = q break end end
			local opponent = opponentPn and PF.name(opponentPn) or (cpuSide[other] and 'CPU' or 'OPPONENT')
			if opponent == '' then opponent = cpuSide[other] and 'CPU' or 'OPPONENT' end
			local score = roundScore(lastMatch)
			table.insert(prof.history, 1, {
				time = os.time(), result = won and 'W' or (lost and 'L' or 'D'), mode = mode,
				opponent = opponent, chars = teamNames(side), opponentChars = teamNames(other),
				stage = stageName(), duration = tonumber(lastMatch.MatchTime) or 0,
				finish = won and finishName(side, lastMatch) or (lost and finishName(other, lastMatch) or 'DRAW'),
				roundsWon = score[side], roundsLost = score[other], side = side,
				online = onlineMatch() and true or false,
			})
			while #prof.history > 100 do table.remove(prof.history) end
			if PF.refreshTitleUnlocks then PF.refreshTitleUnlocks(prof, true) end
			changed = true
		end
	end
	if changed then PF.save() end
end

function PF.sideOf()
	local t = {[1] = 1}
	if main and main.coop then t[2] = 1 else t[2] = 2 end
	return t
end

-------------------------------------------------------------------------------
-- drawing helpers
-------------------------------------------------------------------------------
local tpool, tN, rpool, rN = {}, 0, {}, 0
local fBig
local function fonts()
	if fBig ~= nil then return end
	if fileExists('data/MMMHD/Font/gun4fci36.def') then
		fBig = fontNew('data/MMMHD/Font/gun4fci36.def')
	else
		fBig = fontNew('Open_Sans.def')
	end
end
local function txt(s, x, y, c, scale, align)
	fonts()
	tN = tN + 1
	local ts = tpool[tN]
	if ts == nil then ts = textImgNew() tpool[tN] = ts end
	textImgSetFont(ts, fBig)
	textImgSetLocalcoord(ts, LW, LH)
	textImgSetBank(ts, 0)
	textImgSetAlign(ts, align or 0)
	textImgSetColor(ts, c[1], c[2], c[3])
	textImgSetScale(ts, scale or 1, scale or 1)
	textImgSetText(ts, s)
	textImgSetPos(ts, x, y)
	textImgSetLayerno(ts, LAYER)
	textImgDraw(ts, LAYER)
end
local function box(x1, y1, x2, y2, c, a)
	rN = rN + 1
	local rc = rpool[rN]
	if rc == nil then rc = rectNew() rpool[rN] = rc end
	rectSetLocalcoord(rc, LW, LH)
	rectSetWindow(rc, x1, y1, x2, y2)
	rectSetColor(rc, c[1], c[2], c[3])
	a = a or 255
	rectSetAlpha(rc, a, 255 - a)
	rectSetLayerno(rc, LAYER)
	rectDraw(rc, LAYER)
end
local function snd(which)
	pcall(function()
		local s = motif.title_info.cursor[which].snd
		if which == 'done' then s = motif.title_info.cursor.done.snd.default or s end
		sndPlay(motif.Snd, s[1], s[2])
	end)
end
local function frameStart()
	tN, rN = 0, 0
	pcall(function()
		clearColor(0, 0, 0)
		bgDraw(motif.versusbgdef.BGDef, 0)
	end)
	box(0, 0, LW, LH, {5, 6, 18}, 190)
end
local function inp(pn, keys) return getInput(pn, keys) end
-- keyboard typing also presses mapped buttons; ignore pads on frames with text
local function typedThisFrame()
	local k = getKeyText and getKeyText() or ''
	return k
end

-------------------------------------------------------------------------------
-- on-screen keyboard (QWERTY, two pages) + real keyboard typing
-- Pad shortcuts (Ikemen's default pad mapping):
--   a (A / Cross) pick key      x (X / Square) backspace   b (B / Circle) delete
--   y (Y / Triangle) shift      d / z (LB / RB) move text cursor
--   c / w (RT / LT) other page  start: done                menu (Back): cancel
-- The button hints at the bottom match what the player is holding.
-------------------------------------------------------------------------------
-- each key: label, width in units (rows are 10 units wide)
PF.kbPages = {
	{
		{{'q'}, {'w'}, {'e'}, {'r'}, {'t'}, {'y'}, {'u'}, {'i'}, {'o'}, {'p'}},
		{{'a'}, {'s'}, {'d'}, {'f'}, {'g'}, {'h'}, {'j'}, {'k'}, {'l'}, {'Del', 1, 'del'}},
		{{'Shift', 1, 'shift'}, {'z'}, {'x'}, {'c'}, {'v'}, {'b'}, {'n'}, {'m'}, {'.'}, {'Done', 1, 'done'}},
		{{'Page', 1, 'page'}, {'<', 1, 'left'}, {'Space', 5, 'space'}, {'>', 1, 'right'}, {'Cancel', 2, 'cancel'}},
	},
	{
		{{'1'}, {'2'}, {'3'}, {'4'}, {'5'}, {'6'}, {'7'}, {'8'}, {'9'}, {'0'}},
		{{'-'}, {'_'}, {'.'}, {'!'}, {'?'}, {'+'}, {'='}, {'#'}, {'&'}, {'Del', 1, 'del'}},
		{{'Shift', 1, 'shift'}, {'@'}, {'$'}, {'%'}, {'*'}, {'('}, {')'}, {'~'}, {','}, {'Done', 1, 'done'}},
		{{'Page', 1, 'page'}, {'<', 1, 'left'}, {'Space', 5, 'space'}, {'>', 1, 'right'}, {'Cancel', 2, 'cancel'}},
	},
}
PF.nameChars = '[^%w %-_%.!%?%+=#&@%$%%%*%(%)~,]'
local KB = {x = 180, y = 300, unit = 92, h = 58, gap = 6}

local function keyAt(st, r, c) return PF.kbPages[st.page][r][c] end
local function keySpan(st, r, c)
	local x = 0
	for i = 1, c - 1 do x = x + (keyAt(st, r, i)[2] or 1) end
	return x, x + (keyAt(st, r, c)[2] or 1)
end
-- moving up/down keeps the cursor over roughly the same spot
local function columnFor(st, r, mid)
	local row = PF.kbPages[st.page][r]
	for c = 1, #row do
		local a, b = keySpan(st, r, c)
		if mid >= a and mid < b then return c end
	end
	return #row
end

local function insert(st, ch)
	if #st.text >= (st.max or PF.maxName) then return end
	st.text = st.text:sub(1, st.pos) .. ch .. st.text:sub(st.pos + 1)
	st.pos = st.pos + #ch
end
local function backspace(st)
	if st.pos == 0 then return end
	st.text = st.text:sub(1, st.pos - 1) .. st.text:sub(st.pos + 1)
	st.pos = st.pos - 1
end
local function delete(st)
	st.text = st.text:sub(1, st.pos) .. st.text:sub(st.pos + 2)
end

local function press(st, k)
	local act = k[3]
	if act == 'done' then return 'done'
	elseif act == 'cancel' then return 'cancel'
	elseif act == 'del' then backspace(st)
	elseif act == 'shift' then st.shift = not st.shift
	elseif act == 'page' then st.page = st.page == 1 and 2 or 1 st.c = math.min(st.c, #PF.kbPages[st.page][st.r])
	elseif act == 'left' then st.pos = math.max(0, st.pos - 1)
	elseif act == 'right' then st.pos = math.min(#st.text, st.pos + 1)
	elseif act == 'space' then insert(st, ' ')
	else
		local ch = k[1]
		if st.shift then ch = ch:upper() st.shift = false end
		insert(st, ch)
	end
	return nil
end

-- one frame of the name entry. returns 'done' / 'cancel' / nil
function PF.textStep(st)
	local pn = st.pn
	st.page = st.page or 1
	st.pos = math.min(st.pos or #st.text, #st.text)
	-- F7 switches physical keyboard text entry on/off (useful when
	-- keyboard is also mapped to Player 1's fighting-game controls).
	if getKey and getKey('F7') then
		st.physicalTyping = not (st.physicalTyping ~= false)
		st.mute = 15
		if resetKey then resetKey() end
		return nil
	end
	local physicalTyping = st.physicalTyping ~= false
	-- Physical typing is separate from the gamepad-controlled on-screen keyboard.
	local typed = physicalTyping and typedThisFrame():gsub(PF.nameChars, '') or ''
	local enter = physicalTyping and getKey and getKey('RETURN')
	local bksp = physicalTyping and getKey and getKey('BACKSPACE')
	if resetKey and getKey and getKey() ~= '' then resetKey() end
	if enter then return 'done' end
	if bksp then backspace(st) st.mute = 20 return nil
	elseif typed ~= '' then
		insert(st, typed)
		-- that key may also be a mapped button (z, x, a, s, d...): ignore pad
		-- buttons while it is held, or one key press would type twice
		st.mute = 20
		return nil
	end
	if (st.mute or 0) > 0 then
		st.mute = st.mute - 1
		return nil
	end
	local rows = PF.kbPages[st.page]
	if inp(pn, UI.up) or inp(pn, UI.down) then
		local a, b = keySpan(st, st.r, st.c)
		local mid = (a + b) / 2
		if inp(pn, UI.up) then st.r = st.r > 1 and st.r - 1 or #rows else st.r = st.r < #rows and st.r + 1 or 1 end
		st.c = columnFor(st, st.r, mid)
		snd('move')
	elseif inp(pn, UI.left) then st.c = st.c > 1 and st.c - 1 or #rows[st.r] snd('move')
	elseif inp(pn, UI.right) then st.c = st.c < #rows[st.r] and st.c + 1 or 1 snd('move')
	elseif inp(pn, {'a'}) then
		local r = press(st, keyAt(st, st.r, st.c))
		snd('done')
		if r then return r end
	elseif inp(pn, {'x'}) then backspace(st) snd('move')
	elseif inp(pn, {'b'}) then
		if st.text == '' then return 'cancel' end
		delete(st) snd('move')
	elseif inp(pn, {'y'}) then st.shift = not st.shift snd('move')
	elseif inp(pn, {'d'}) then st.pos = math.max(0, st.pos - 1) snd('move')
	elseif inp(pn, {'z'}) then st.pos = math.min(#st.text, st.pos + 1) snd('move')
	elseif inp(pn, {'c', 'w'}) then press(st, {'Page', 1, 'page'}) snd('move')
	elseif inp(pn, {'s'}) then return 'done'
	elseif inp(pn, {'m'}) then return 'cancel'
	end
	return nil
end

-------------------------------------------------------------------------------
-- button hints that match the player's controller
-------------------------------------------------------------------------------
function PF.deviceKind(pn)
	local j = PF.padIndex(pn)
	if j == nil then return 'keyboard' end
	local n = PF.padName(j):lower()
	if n:find('ps4') or n:find('ps5') or n:find('playstation') or n:find('dualshock')
		or n:find('dualsense') or n:find('sony') or n:find('wireless controller') then
		return 'playstation'
	end
	if n:find('xbox') or n:find('xinput') or n:find('x%-box') or n:find('microsoft') then return 'xbox' end
	return 'pad' -- arcade sticks, hit boxes, other pads
end

-- token -> {label, colour} per controller
PF.hintStyle = {
	xbox = {a = {'A', {60, 170, 60}}, b = {'B', {200, 60, 60}}, x = {'X', {50, 110, 210}}, y = {'Y', {220, 180, 40}},
		d = {'LB'}, z = {'RB'}, c = {'RT'}, w = {'LT'}, s = {'START'}, m = {'VIEW'}},
	playstation = {a = {'cross', {90, 140, 230}}, b = {'circle', {220, 70, 80}}, x = {'square', {220, 120, 200}}, y = {'triangle', {60, 190, 150}},
		d = {'L1'}, z = {'R1'}, c = {'R2'}, w = {'L2'}, s = {'OPTIONS'}, m = {'SHARE'}},
	pad = {a = {'1'}, b = {'2'}, x = {'3'}, y = {'4'}, d = {'L1'}, z = {'R1'}, c = {'R2'}, w = {'L2'}, s = {'START'}, m = {'SELECT'}},
}
local KBTOKEN = {a = 'a', b = 'b', c = 'c', x = 'x', y = 'y', z = 'z', d = 'd', w = 'w', s = 'start', m = 'menu'}

-- draws one button chip at x (left), baseline y; returns its width
local function chip(kind, pn, tok, x, y)
	local label, col
	if kind == 'keyboard' then
		local c = opt('Keys_P' .. pn)
		label = type(c) == 'table' and tostring(c[KBTOKEN[tok]] or tok) or tok
		label = label:upper()
	else
		local s = PF.hintStyle[kind][tok] or {tok:upper()}
		label, col = s[1], s[2]
	end
	local shapes = {cross = true, circle = true, square = true, triangle = true}
	local w = shapes[label] and 34 or math.max(34, #label * 12 + 16)
	local bg = col or {70, 76, 96}
	box(x, y - 26, x + w, y + 4, bg, 235)
	local cx = x + w / 2
	if label == 'square' then
		box(cx - 8, y - 19, cx + 8, y - 17, WHITE) box(cx - 8, y - 5, cx + 8, y - 3, WHITE)
		box(cx - 8, y - 19, cx - 6, y - 3, WHITE) box(cx + 6, y - 19, cx + 8, y - 3, WHITE)
	elseif label == 'cross' then txt('×', cx, y - 1, WHITE, 0.8, 0)
	elseif label == 'circle' then txt('O', cx, y - 3, WHITE, 0.65, 0)
	elseif label == 'triangle' then txt('Δ', cx, y - 3, WHITE, 0.65, 0)
	else txt(label, cx, y - 4, WHITE, 0.5, 0) end
	return w
end

function PF.drawHints(pn, y)
	local kind = PF.deviceKind(pn)
	if kind == 'keyboard' then
		-- keyboard players just type; letter keys would type, so no button chips
		local items = {{'ENTER', 'Done'}, {'BACKSPACE', 'Delete'}, {'ESC', 'Cancel'}}
		txt('Type your name on the keyboard', LW / 2, y, WHITE, 0.6, 0)
		local x = LW / 2 - 330
		for _, it in ipairs(items) do
			local w = #it[1] * 12 + 20
			box(x, y + 14, x + w, y + 44, {70, 76, 96}, 235)
			txt(it[1], x + w / 2, y + 36, WHITE, 0.5, 0)
			txt(it[2], x + w + 10, y + 38, WHITE, 0.55, 1)
			x = x + w + 130
		end
		return
	end
	local items = {{{'a'}, 'Select'}, {{'d', 'z'}, 'Cursor'}, {{'x'}, 'Backspace'}, {{'b'}, 'Delete'},
		{{'y'}, 'Shift'}, {{'c'}, 'Page'}, {{'s'}, 'Done'}, {{'m'}, 'Cancel'}}
	-- two rows of four, centred
	for row = 0, 1 do
		local widths, total = {}, 0
		for i = 1, 4 do
			local it = items[row * 4 + i]
			local w = 0
			for _, tk in ipairs(it[1]) do
				local lab = kind == 'keyboard' and 3 or #((PF.hintStyle[kind][tk] or {tk})[1])
				w = w + math.max(34, lab * 12 + 16) + 4
			end
			w = w + #it[2] * 11 + 40
			widths[i] = w total = total + w
		end
		local x = LW / 2 - total / 2
		for i = 1, 4 do
			local it = items[row * 4 + i]
			local cx = x
			for _, tk in ipairs(it[1]) do cx = cx + chip(kind, pn, tk, cx, y + row * 40) + 4 end
			txt(it[2], cx + 6, y + row * 40, WHITE, 0.55, 1)
			x = x + widths[i]
		end
	end
end

function PF.textDraw(st, title, col)
	st.page = st.page or 1
	st.pos = math.min(st.pos or #st.text, #st.text)
	txt(title, LW / 2, 110, col, 0.9, 0)
	-- text field with a caret at the insert position
	local fx1, fx2 = KB.x, KB.x + 10 * KB.unit - KB.gap
	box(fx1, 140, fx2, 210, {12, 14, 26}, 245)
	box(fx1, 206, fx2, 210, col)
	local caret = (math.floor(st.frame / 20) % 2 == 0) and '|' or ' '
	txt(st.text:sub(1, st.pos) .. caret .. st.text:sub(st.pos + 1), fx1 + 20, 190, WHITE, 0.9, 1)
	txt(#st.text .. '/' .. (st.max or PF.maxName), fx2 - 14, 190, GREY, 0.5, -1)
	if st.msg then txt(st.msg, LW / 2, 245, {255, 110, 110}, 0.55, 0) end
	local rows = PF.kbPages[st.page]
	for r, row in ipairs(rows) do
		for c, k in ipairs(row) do
			local a, b = keySpan(st, r, c)
			local x1 = KB.x + a * KB.unit
			local x2 = KB.x + b * KB.unit - KB.gap
			local y = KB.y - 30 + (r - 1) * (KB.h + KB.gap)
			local on = st.r == r and st.c == c
			local special = k[3] ~= nil
			local active = k[3] == 'shift' and st.shift
			box(x1, y, x2, y + KB.h, on and col or (active and {90, 80, 150} or (special and {44, 52, 80} or {32, 38, 62})), on and 245 or 230)
			local label = k[1]
			if not special and st.shift then label = label:upper() end
			txt(label, (x1 + x2) / 2, y + 40, on and DARK or WHITE, special and 0.6 or 0.8, 0)
		end
	end
	PF.drawHints(st.pn, 618)
end

-- full-screen name entry for one player; returns the name or nil
function PF.enterName(pn, title, initial, exceptId)
	local st = {pn = pn, text = initial or '', r = 1, c = 1, frame = 0, page = 1, pos = #(initial or '')}
	local col = pn == 2 and P2C or P1C
	if resetKey then resetKey() end
	while true do
		st.frame = st.frame + 1
		frameStart()
		local r = st.frame > 8 and PF.textStep(st) or nil
		if r == 'done' then
			local name = st.text:gsub('^%s+', ''):gsub('%s+$', '')
			if name == '' then st.msg = 'Type a name first'
			elseif PF.nameTaken(name, exceptId) then st.msg = 'That name is already used'
			else return name end
		elseif r == 'cancel' or (esc and esc()) then
			if esc then esc(false) end
			return nil
		end
		PF.textDraw(st, title, col)
		refresh()
	end
end

-- general text entry with the same keyboard (other mods use it, e.g. the
-- Online Lobby's repository uploads); returns the text or nil
function PF.enterText(pn, title, initial, maxLen)
	local st = {pn = pn, text = initial or '', r = 1, c = 1, frame = 0, page = 1, pos = #(initial or ''),
		max = maxLen or 32, physicalTyping = true}
	local col = pn == 2 and P2C or P1C
	if resetKey then resetKey() end
	while true do
		st.frame = st.frame + 1
		frameStart()
		local r = st.frame > 8 and PF.textStep(st) or nil
		if r == 'done' then
			local text = st.text:gsub('^%s+', ''):gsub('%s+$', '')
			if text == '' then st.msg = 'Type something first' else return text end
		elseif r == 'cancel' or (esc and esc()) then
			if esc then esc(false) end
			return nil
		end
		PF.textDraw(st, title, col)
		refresh()
	end
end

-------------------------------------------------------------------------------
-- profile picker before character select
-------------------------------------------------------------------------------
function PF.listFor()
	local list = {{id = nil, text = 'GUEST'}}
	for _, p in ipairs(PF.data.profiles) do list[#list + 1] = {id = p.id, text = p.name} end
	list[#list + 1] = {new = true, text = '+ NEW PROFILE'}
	return list
end

function PF.cpuP2ProfileMode()
	local mode = gameMode and tostring(gameMode() or ''):lower() or ''
	local supported = mode == 'watch' or mode == 'freebattle' or mode == 'quickvs' or mode == 'quickmatch'
	return supported and main and main.cpuSide and main.cpuSide[2] == true
end

function PF.pickerState(players)
	local cpuP2 = #players > 1 and PF.cpuP2ProfileMode()
	local st = {frame = 0, players = players, cursor = {}, locked = {}, list = PF.listFor(), singleControl = cpuP2, focus = 1}
	for _, pn in ipairs(players) do
		st.cursor[pn] = 1
		local last = PF.data.last[tostring(pn)]
		for i, e in ipairs(st.list) do
			if e.id ~= nil and e.id == last then st.cursor[pn] = i end
		end
	end
	return st
end

local function takenBy(st, id, pn)
	if id == nil then return false end
	for _, q in ipairs(st.players) do
		if q ~= pn and st.locked[q] and st.list[st.locked[q]].id == id then return true end
	end
	return false
end

-- one picker frame. returns 'done', 'cancel', {new = pn} or nil
function PF.pickerStep(st)
	st.frame = st.frame + 1
	for playerIndex, pn in ipairs(st.players) do
		local enabled = not st.singleControl or playerIndex == st.focus
		local inputPn = st.singleControl and st.players[1] or pn
		local n = #st.list
		if enabled and st.locked[pn] == nil then
			if inp(inputPn, UI.up) then
				st.cursor[pn] = st.cursor[pn] > 1 and st.cursor[pn] - 1 or n snd('move')
			elseif inp(inputPn, UI.down) then
				st.cursor[pn] = st.cursor[pn] < n and st.cursor[pn] + 1 or 1 snd('move')
			elseif st.frame > 15 and inp(inputPn, UI.confirm) then
				local e = st.list[st.cursor[pn]]
				if e.new then return {new = pn} end
				if not takenBy(st, e.id, pn) then
					st.locked[pn] = st.cursor[pn]
					if st.singleControl and st.focus < #st.players then st.focus = st.focus + 1 end
					snd('done')
				end
			elseif st.frame > 15 and inp(inputPn, UI.back) then
				if st.singleControl and st.focus > 1 then
					st.focus = st.focus - 1
					st.locked[st.players[st.focus]] = nil
				elseif pn == st.players[1] then return 'cancel' end
			end
		elseif enabled and inp(inputPn, UI.back) then
			st.locked[pn] = nil
		end
	end
	for _, pn in ipairs(st.players) do
		if st.locked[pn] == nil then return nil end
	end
	return 'done'
end

function PF.pickerDraw(st)
	txt('WHO IS PLAYING?', LW / 2, 110, WHITE, 1.3, 0)
	local cols = #st.players == 2 and {LW / 2 - 300, LW / 2 + 300} or {LW / 2}
	for i, pn in ipairs(st.players) do
		local cx, col = cols[i], pn == 2 and P2C or P1C
		txt('PLAYER ' .. pn, cx, 180, col, 0.9, 0)
		local first = math.max(1, math.min(st.cursor[pn] - 3, #st.list - 6))
		for k = first, math.min(#st.list, first + 6) do
			local e = st.list[k]
			local y = 200 + (k - first) * 56
			local on, locked = st.cursor[pn] == k, st.locked[pn] == k
			if locked then
				box(cx - 230, y, cx + 230, y + 48, GOLD)
				txt(e.text, cx, y + 35, {40, 26, 6}, 0.75, 0)
			elseif on and st.locked[pn] == nil then
				box(cx - 230, y, cx + 230, y + 48, col, 225)
				txt(e.text, cx, y + 35, DARK, 0.75, 0)
			else
				local dim = takenBy(st, e.id, pn)
				box(cx - 230, y, cx + 230, y + 48, {30, 36, 64}, 225)
				txt(e.text, cx, y + 35, dim and {80, 85, 100} or GREY, 0.7, 0)
			end
		end
		-- quick record of the highlighted profile
		local e = st.list[st.cursor[pn]]
		local p = e and PF.byId(e.id)
		if p then
			local s = p.stats
			txt(string.format('%dW  %dL  %dD   streak %d (best %d)', s.wins, s.losses, s.draws, s.streak, s.bestStreak), cx, 610, GREY, 0.5, 0)
		elseif e and e.new then
			txt('Make a new profile', cx, 610, GREY, 0.5, 0)
		else
			txt('Play without a profile', cx, 610, GREY, 0.5, 0)
		end
		local status = st.locked[pn] and 'READY' or (st.singleControl and i ~= st.focus and 'WAITING...' or 'CHOOSING...')
		txt(status, cx, 640, st.locked[pn] and GOLD or GREY, 0.6, 0)
	end
	local help = st.singleControl and 'P1 CONTROLS BOTH COLUMNS   UP/DOWN: choose   ATTACK: confirm   BACK: previous' or
		('UP/DOWN: choose   ATTACK: confirm   BACK: undo (P' .. st.players[1] .. ' backs out)')
	txt(help, LW / 2, 690, GREY, 0.5, 0)
end

-- run the picker; false if the players backed out to the menu
function PF.pick(players)
	local st = PF.pickerState(players)
	if resetKey then resetKey() end
	while true do
		frameStart()
		local r = PF.pickerStep(st)
		if r == 'cancel' or (esc and esc()) then
			return false
		elseif type(r) == 'table' and r.new then
			local name = PF.enterName(st.singleControl and players[1] or r.new, 'PLAYER ' .. r.new .. ' - NEW PROFILE NAME')
			if name then
				local p = PF.create(name)
				local keepCur = {}
				for _, q in ipairs(players) do keepCur[q] = st.list[st.cursor[q]] end
				st.list = PF.listFor()
				for i, e in ipairs(st.list) do
					if p and e.id == p.id then st.cursor[r.new] = i st.locked[r.new] = i end
					for _, q in ipairs(players) do
						if q ~= r.new and keepCur[q] and e.id == keepCur[q].id and e.new == keepCur[q].new then st.cursor[q] = i end
					end
				end
			end
			if resetKey then resetKey() end
		elseif r == 'done' then
			for _, pn in ipairs(players) do PF.select(pn, st.list[st.locked[pn]].id) end
			for _ = 1, 20 do frameStart() PF.pickerDraw(st) refresh() end
			return true
		end
		PF.pickerDraw(st)
		refresh()
	end
end

-- which player numbers are human in the current mode
function PF.humans()
	local t = {1}
	if main and (main.coop or (main.selectMenu and main.selectMenu[2])) and not (gameMode and gameMode('training')) then
		t[2] = 2
	elseif PF.cpuP2ProfileMode() and not (gameMode and gameMode('training')) then
		-- Quick Match / Watch / P1-vs-CPU: P1 may assign the CPU-side profile.
		t[2] = 2
	end
	return t
end

-------------------------------------------------------------------------------
-- profiles manager (main menu item)
-------------------------------------------------------------------------------
local function menuLoop(title, items, sub)
	local cur, frame = 1, 0
	if resetKey then resetKey() end
	while true do
		frame = frame + 1
		frameStart()
		txt(title, LW / 2, 110, WHITE, 1.2, 0)
		if sub then txt(sub, LW / 2, 150, GREY, 0.55, 0) end
		local first = math.max(1, math.min(cur - 4, #items - 8))
		for k = first, math.min(#items, first + 8) do
			local y = 175 + (k - first) * 52
			local on = cur == k
			box(LW / 2 - 300, y, LW / 2 + 300, y + 44, on and P1C or {30, 36, 64}, on and 230 or 220)
			txt(items[k], LW / 2, y + 32, on and DARK or GREY, 0.7, 0)
		end
		txt('UP/DOWN: choose   ATTACK: select   BACK: return', LW / 2, 690, GREY, 0.5, 0)
		if frame > 8 then
			if inp(-1, UI.up) then cur = cur > 1 and cur - 1 or #items snd('move')
			elseif inp(-1, UI.down) then cur = cur < #items and cur + 1 or 1 snd('move')
			elseif inp(-1, UI.confirm) then snd('done') return cur
			elseif inp(-1, UI.back) or (esc and esc()) then if esc then esc(false) end return nil end
		end
		refresh()
	end
end

local function message(lines, frames)
	if resetKey then resetKey() end
	for f = 1, frames or 240 do
		frameStart()
		for i, l in ipairs(lines) do
			txt(l, LW / 2, 200 + (i - 1) * 44, i == 1 and WHITE or GREY, i == 1 and 0.9 or 0.6, 0)
		end
		txt('PRESS ATTACK', LW / 2, 690, GREY, 0.5, 0)
		if f > 15 and (inp(-1, UI.confirm) or inp(-1, UI.back)) then break end
		refresh()
	end
end
PF.message = message

local function pct(a, b) if b == 0 then return '-' end return string.format('%d%%', math.floor(a * 100 / b + 0.5)) end

function PF.statLines(p)
	local s = p.stats
	local fav = PF.favorite(p)
	local favWin = ''
	if fav then favWin = ' (' .. pct(s.chars[fav].wins, s.chars[fav].used) .. ' wins)' end
	local secs = math.floor((s.playTime or 0) / 60)
	local devices = {}
	for _, c in pairs(p.controls) do devices[#devices + 1] = c.name or '?' end
	table.sort(devices)
	return {
		p.name,
		string.format('Matches %d   Wins %d   Losses %d   Draws %d   Win rate %s', s.matches, s.wins, s.losses, s.draws, pct(s.wins, s.matches)),
		string.format('Win streak %d   Best streak %d', s.streak, s.bestStreak),
		string.format('Rounds won %d / lost %d   KOs %d   Perfects %d   Time-outs %d', s.roundsWon, s.roundsLost, s.koWins, s.perfects, s.timeWins),
		string.format('Special finishes %d   Super finishes %d   Clutch rounds %d', s.specialFinishes, s.superFinishes, s.clutch),
		string.format('vs players %d (%s won)   vs CPU %d', s.vsHuman, pct(s.winsVsHuman, s.vsHuman), s.vsCpu),
		'Favourite fighter: ' .. (fav or '-') .. favWin,
		string.format('Time played: %dh %02dm', math.floor(secs / 3600), math.floor(secs / 60) % 60),
		'Saved controls: ' .. (#devices > 0 and table.concat(devices, ', ') or 'none (uses the game settings)'),
	}
end

-------------------------------------------------------------------------------
-- showcase dashboard
-------------------------------------------------------------------------------
PF.THEMES = {
	neon = {label = 'NEON COMPETITIVE', bg = {8, 12, 28}, panel = {22, 30, 58}, accent = {60, 220, 255}, accent2 = {255, 70, 220}, text = WHITE},
	vaporwave = {label = 'VAPORWAVE', bg = {28, 8, 48}, panel = {62, 22, 78}, accent = {62, 238, 230}, accent2 = {255, 92, 206}, text = {250, 230, 255}},
	miami = {label = 'MIAMI VICE', bg = {10, 22, 44}, panel = {20, 48, 72}, accent = {0, 245, 220}, accent2 = {255, 82, 142}, text = {242, 250, 255}},
	arcade = {label = 'ARCADE CABINET', bg = {18, 8, 8}, panel = {52, 18, 20}, accent = {255, 208, 42}, accent2 = {236, 48, 64}, text = {255, 244, 205}},
	tournament = {label = 'TOURNAMENT BROADCAST', bg = {10, 14, 20}, panel = {30, 36, 44}, accent = {232, 186, 62}, accent2 = {78, 154, 255}, text = WHITE},
	minimal = {label = 'MINIMAL DARK', bg = {12, 12, 14}, panel = {32, 32, 36}, accent = {220, 220, 225}, accent2 = {125, 130, 140}, text = WHITE},
}
local function onlineHistoryCount(p, winsOnly)
	local n = 0
	for _, h in ipairs(p.history or {}) do
		if h.online and (not winsOnly or h.result == 'W') then n = n + 1 end
	end
	return n
end

local function uniqueFighterCount(p)
	local n = 0
	for _ in pairs(p.stats.chars or {}) do n = n + 1 end
	return n
end

local function favoriteUseCount(p)
	local n = 0
	for _, c in pairs(p.stats.chars or {}) do n = math.max(n, tonumber(c.used) or 0) end
	return n
end

local function verifiedTournamentWins(p)
	local n = 0
	for _, t in ipairs(p.tournaments or {}) do
		if t.verified == true and tonumber(t.placement) == 1 then n = n + 1 end
	end
	return n
end

PF.TITLE_CATALOG = {
	{id = 'rookie_contender', label = 'ROOKIE CONTENDER', detail = 'Available to every profile', target = 0, always = true},
	{id = 'first_blood', label = 'FIRST BLOOD', detail = 'Win your first recorded match', target = 1, value = function(p) return p.stats.wins end},
	{id = 'red_zone_specialist', label = 'RED ZONE SPECIALIST', detail = 'Win 10 clutch rounds', target = 10, value = function(p) return p.stats.clutch end},
	{id = 'corner_camper', label = 'CORNER CAMPER', detail = 'Win 10 rounds by time-over', target = 10, value = function(p) return p.stats.timeWins end},
	{id = 'touch_of_death', label = 'TOUCH OF DEATH', detail = 'Land 25 super finishes', target = 25, value = function(p) return p.stats.superFinishes end},
	{id = 'footsies_professor', label = 'FOOTSIES PROFESSOR', detail = 'Win 250 rounds', target = 250, value = function(p) return p.stats.roundsWon end},
	{id = 'rushdown_royalty', label = 'RUSHDOWN ROYALTY', detail = 'Earn 50 KO finishes', target = 50, value = function(p) return p.stats.koWins end},
	{id = 'neutral_enjoyer', label = 'NEUTRAL ENJOYER', detail = 'Complete 250 matches', target = 250, value = function(p) return p.stats.matches end},
	{id = 'comeback_king', label = 'COMEBACK KING', detail = 'Win 25 clutch rounds', target = 25, value = function(p) return p.stats.clutch end},
	{id = 'perfect_hunter', label = 'PERFECT HUNTER', detail = 'Earn 10 perfect rounds', target = 10, value = function(p) return p.stats.perfects end},
	{id = 'one_more_match', label = 'ONE MORE MATCH', detail = 'Complete 100 matches', target = 100, value = function(p) return p.stats.matches end},
	{id = 'tier_list_denier', label = 'TIER LIST DENIER', detail = 'Use 20 different fighters', target = 20, value = uniqueFighterCount},
	{id = 'character_loyalist', label = 'CHARACTER LOYALIST', detail = 'Use one fighter 50 times', target = 50, value = favoriteUseCount},
	{id = 'wifi_warrior', label = 'WI-FI WARRIOR', detail = 'Complete 25 online matches', target = 25, value = function(p) return onlineHistoryCount(p, false) end},
	{id = 'ranked_menace', label = 'RANKED MENACE', detail = 'Win 25 recorded online matches', target = 25, value = function(p) return onlineHistoryCount(p, true) end},
	{id = 'salt_collector', label = 'SALT COLLECTOR', detail = 'Win 25 matches against people', target = 25, value = function(p) return p.stats.winsVsHuman end},
	{id = 'runback_requested', label = 'RUNBACK REQUESTED', detail = 'Play 50 matches against people', target = 50, value = function(p) return p.stats.vsHuman end},
	{id = 'one_touch_away', label = 'ONE TOUCH AWAY', detail = 'Win 5 clutch rounds', target = 5, value = function(p) return p.stats.clutch end},
	{id = 'tournament_champion', label = 'TOURNAMENT CHAMPION', detail = 'Win a verified tournament', target = 1, value = verifiedTournamentWins},
	{id = 'mixup_machine', label = 'MIX-UP MACHINE', detail = 'Win 100 recorded matches', target = 100, value = function(p) return p.stats.wins end},
	{id = 'throw_connoisseur', label = 'THROW CONNOISSEUR', detail = 'Open style title', target = 0, always = true},
	{id = 'anti_air_authority', label = 'ANTI-AIR AUTHORITY', detail = 'Open style title', target = 0, always = true},
	{id = 'lab_monster', label = 'LAB MONSTER', detail = 'Open style title', target = 0, always = true},
	{id = 'button_check_champion', label = 'BUTTON CHECK CHAMPION', detail = 'Open style title', target = 0, always = true},
	{id = 'wake_up_dp', label = 'WAKE-UP DP', detail = 'Open style title', target = 0, always = true},
	{id = 'frame_trap_fiend', label = 'FRAME TRAP FIEND', detail = 'Open style title', target = 0, always = true},
	{id = 'low_tier_hero', label = 'LOW-TIER HERO', detail = 'Open style title', target = 0, always = true},
}
PF.TITLES = {}
for _, def in ipairs(PF.TITLE_CATALOG) do PF.TITLES[#PF.TITLES + 1] = def.label end

local function titleOwnedById(p, id)
	for _, owned in ipairs(p.unlockedTitles or {}) do if owned == id then return true end end
	return false
end

function PF.titleProgress(p, def)
	if def.always then return 0, 0, true end
	local ok, value = pcall(def.value, p)
	value = ok and math.max(0, tonumber(value) or 0) or 0
	return value, def.target, value >= def.target
end

function PF.isTitleUnlocked(p, def)
	if def.always or titleOwnedById(p, def.id) or p.title == def.label then return true end
	local _, _, earned = PF.titleProgress(p, def)
	return earned
end

function PF.refreshTitleUnlocks(p, notify)
	p.unlockedTitles = p.unlockedTitles or {'rookie_contender'}
	local added = false
	for _, def in ipairs(PF.TITLE_CATALOG) do
		local _, _, earned = PF.titleProgress(p, def)
		if not def.always and earned and not titleOwnedById(p, def.id) then
			p.unlockedTitles[#p.unlockedTitles + 1] = def.id
			added = true
			if notify then PF.pendingTitleUnlocks[#PF.pendingTitleUnlocks + 1] = {profile = p.name, title = def.label, detail = def.detail} end
		end
	end
	return added
end

local function profileTheme(p)
	return PF.THEMES[p.theme] or PF.THEMES.neon
end

local function topFighters(p)
	local list = {}
	for name, c in pairs(p.stats.chars or {}) do
		list[#list + 1] = {name = name, used = tonumber(c.used) or 0, wins = tonumber(c.wins) or 0}
	end
	table.sort(list, function(a, b) return a.used == b.used and a.name < b.name or a.used > b.used end)
	return list
end

local function tournamentSummary(p)
	local out = {appearances = 0, wins = 0, podiums = 0, verified = 0, best = nil}
	for _, t in ipairs(p.tournaments or {}) do
		local placement = math.max(1, tonumber(t.placement) or 1)
		local fieldSize = math.max(placement, tonumber(t.fieldSize) or placement)
		out.appearances = out.appearances + 1
		if placement == 1 then out.wins = out.wins + 1 end
		if placement <= 3 then out.podiums = out.podiums + 1 end
		if t.verified == true then out.verified = out.verified + 1 end
		if out.best == nil or placement < (tonumber(out.best.placement) or 999999)
			or (placement == tonumber(out.best.placement) and fieldSize > (tonumber(out.best.fieldSize) or 0)) then
			out.best = t
		end
	end
	return out
end

local function achievementCatalog(p)
	local s, out = p.stats, {}
	local onlineMatches = 0
	local verifiedEvents, verifiedWins, verifiedPodiums = 0, 0, 0
	for _, h in ipairs(p.history or {}) do if h.online then onlineMatches = onlineMatches + 1 end end
	for _, t in ipairs(p.tournaments or {}) do
		if t.verified == true then
			verifiedEvents = verifiedEvents + 1
			local place = tonumber(t.placement) or 999999
			if place == 1 then verifiedWins = verifiedWins + 1 end
			if place <= 3 then verifiedPodiums = verifiedPodiums + 1 end
		end
	end
	local function add(id, label, value, target, detail)
		out[#out + 1] = {id = id, label = label, value = tonumber(value) or 0, target = target, earned = (tonumber(value) or 0) >= target, detail = detail}
	end
	add('first_win', 'FIRST VICTORY', s.wins, 1, 'Win your first recorded match')
	add('contender', 'CONTENDER', s.matches, 10, 'Complete 10 matches')
	add('centurion', 'CENTURION', s.matches, 100, 'Complete 100 matches')
	add('veteran', 'SEASONED VETERAN', s.matches, 500, 'Complete 500 matches')
	add('streak5', 'HEATING UP', s.bestStreak, 5, 'Reach a five-match win streak')
	add('streak10', 'HOT STREAK', s.bestStreak, 10, 'Reach a ten-match win streak')
	add('perfects', 'PERFECT HUNTER', s.perfects, 10, 'Earn 10 perfect rounds')
	add('supers', 'SUPER SHOW', s.superFinishes, 10, 'Land 10 super finishes')
	add('clutch', 'CLUTCH PLAYER', s.clutch, 10, 'Win 10 clutch rounds')
	add('explorer', 'ROSTER EXPLORER', #topFighters(p), 10, 'Use 10 different fighters')
	add('battle', 'BATTLE TESTED', s.vsHuman, 50, 'Play 50 matches against people')
	add('online', 'ONLINE CHALLENGER', onlineMatches, 10, 'Complete 10 online matches')
	add('tournament_entry', 'BRACKET READY', verifiedEvents, 1, 'Enter a verified tournament')
	add('tournament_podium', 'PODIUM FINISH', verifiedPodiums, 1, 'Place top three in a verified tournament')
	add('tournament_champion', 'TOURNAMENT CHAMPION', verifiedWins, 1, 'Win a verified tournament')
	for _, a in ipairs(p.eventAchievements or {}) do
		out[#out + 1] = {id = a.id, label = a.label, value = 1, target = 1, earned = true,
			detail = a.detail ~= '' and a.detail or ('Event: ' .. tostring(a.event)), event = a.event, earnedTime = a.earned}
	end
	return out
end

local function earnedBadges(p)
	local catalog, byId, out, used = achievementCatalog(p), {}, {}, {}
	for _, a in ipairs(catalog) do byId[a.id] = a end
	for _, id in ipairs(p.featuredBadges or {}) do
		local a = byId[id]
		if a and a.earned and not used[id] then out[#out + 1], used[id] = a.label, true end
	end
	for _, a in ipairs(catalog) do
		if #out >= 3 then break end
		if a.earned and not used[a.id] then out[#out + 1], used[a.id] = a.label, true end
	end
	while #out < 3 do out[#out + 1] = 'LOCKED' end
	return out
end

local function teamAnalytics(p)
	local map, leaders = {}, {[2] = {}, [3] = {}, [4] = {}}
	for _, h in ipairs(p.history or {}) do
		local chars = h.chars or {}
		local size = #chars
		if size >= 2 and size <= 4 then
			local key = table.concat(chars, ' / ')
			local t = map[key] or {name = key, chars = chars, size = size, matches = 0, wins = 0, losses = 0, draws = 0, playTime = 0, leader = chars[1]}
			t.matches = t.matches + 1
			t.playTime = t.playTime + (tonumber(h.duration) or 0)
			if h.result == 'W' then t.wins = t.wins + 1 elseif h.result == 'L' then t.losses = t.losses + 1 else t.draws = t.draws + 1 end
			map[key] = t
			local lead = tostring(chars[1] or '?')
			local l = leaders[size][lead] or {name = lead, picks = 0, wins = 0, playTime = 0}
			l.picks = l.picks + 1
			l.playTime = l.playTime + (tonumber(h.duration) or 0)
			if h.result == 'W' then l.wins = l.wins + 1 end
			leaders[size][lead] = l
		end
	end
	local teams = {}
	for _, t in pairs(map) do teams[#teams + 1] = t end
	local best, mostUsed = {}, {}
	for i, t in ipairs(teams) do best[i], mostUsed[i] = t, t end
	table.sort(best, function(a, b)
		if a.wins ~= b.wins then return a.wins > b.wins end
		if a.playTime ~= b.playTime then return a.playTime > b.playTime end
		return a.matches > b.matches
	end)
	table.sort(mostUsed, function(a, b)
		if a.playTime ~= b.playTime then return a.playTime > b.playTime end
		if a.matches ~= b.matches then return a.matches > b.matches end
		return a.wins > b.wins
	end)
	local leadList = {}
	for size = 2, 4 do
		leadList[size] = {}
		for _, l in pairs(leaders[size]) do leadList[size][#leadList[size] + 1] = l end
		table.sort(leadList[size], function(a, b)
			if a.picks ~= b.picks then return a.picks > b.picks end
			if a.wins ~= b.wins then return a.wins > b.wins end
			return a.playTime > b.playTime
		end)
	end
	return {teams = teams, best = best[1], mostUsed = mostUsed[1], leaders = leadList}
end

local function shortMatchTime(ticks)
	local seconds = math.max(0, math.floor((tonumber(ticks) or 0) / 60))
	return string.format('%d:%02d', math.floor(seconds / 60), seconds % 60)
end

-- Compact share-safe card for future browser profiles, lobby inspection, or
-- tournament overlays. Controls and full private match history are excluded.
function PF.publicCard(id)
	local p = PF.byId(id) or PF.byName(id)
	if p == nil then return nil end
	local top, fighters = topFighters(p), {}
	for i = 1, math.min(3, #top) do
		fighters[i] = {name = top[i].name, picks = top[i].used, wins = top[i].wins}
	end
	local team, tour = teamAnalytics(p).best, tournamentSummary(p)
	local teamCard = team and {name = team.name, characters = team.chars, leader = team.leader,
		matches = team.matches, wins = team.wins, playTime = team.playTime} or nil
	local tournamentCard = {appearances = tour.appearances, wins = tour.wins, podiums = tour.podiums,
		verified = tour.verified, best = tour.best and {name = tour.best.name, placement = tour.best.placement,
		fieldSize = tour.best.fieldSize, season = tour.best.season, verified = tour.best.verified} or nil}
	return {id = p.id, name = p.name, title = p.title, theme = p.theme,
		record = {wins = p.stats.wins, losses = p.stats.losses, draws = p.stats.draws},
		streak = p.stats.streak, bestStreak = p.stats.bestStreak,
		fighters = fighters, bestTeam = teamCard, tournaments = tournamentCard, unlockedTitles = p.unlockedTitles,
		badges = earnedBadges(p), rank = PF.onlineRankFor(p)}
end

local function percentText(a, b)
	if not b or b == 0 then return '0%' end
	return string.format('%d%%', math.floor(a * 100 / b + 0.5))
end

local function clipText(value, limit)
	local s = tostring(value or '')
	if #s <= limit then return s end
	return s:sub(1, math.max(1, limit - 3)) .. '...'
end

local function dashPanel(x1, y1, x2, y2, th, alpha)
	box(x1, y1, x2, y2, th.panel, alpha or 225)
	box(x1, y1, x2, y1 + 4, th.accent, 255)
end

local function dashBar(x, y, w, h, value, maximum, color, back)
	box(x, y, x + w, y + h, back or {42, 48, 68}, 230)
	local ratio = maximum > 0 and math.max(0, math.min(1, value / maximum)) or 0
	if ratio > 0 then box(x, y, x + w * ratio, y + h, color, 255) end
end

local idleCache = {}
local function charRefByName(name)
	for _, ch in ipairs(main and main.t_selChars or {}) do
		local ref = ch.char_ref
		if ref ~= nil then
			local ok, d = pcall(function() return start.f_getCharData(ref) end)
			if ok and d and tostring(d.name):lower() == tostring(name):lower() then return ref, d end
		end
	end
	return nil, nil
end

local function idleFor(name, rank)
	local key = tostring(name) .. ':' .. rank
	if idleCache[key] ~= nil then return idleCache[key] or nil end
	local ref, data = charRefByName(name)
	if ref == nil then idleCache[key] = false return nil end
	pcall(function()
		if main.f_preloadBoostChar then main.f_preloadBoostChar(ref)
		elseif main.f_materializeCharByRef then main.f_materializeCharByRef(ref) end
	end)
	local ok, anim = pcall(animGetPreloadedCharData, ref, 0, -1, true)
	-- Preloading may finish on a later frame. Do not cache that temporary miss.
	if not ok or anim == nil then return nil end
	pcall(animSetLocalcoord, anim, LW, LH)
	pcall(animSetLayerno, anim, LAYER)
	idleCache[key] = {anim = anim, data = data}
	return idleCache[key]
end

local podiumFrame = 0
local function drawCrown(x, y)
	local outline, shadow = {30, 25, 35}, {205, 125, 5}
	local gold, shine, jewel = {255, 190, 12}, {255, 239, 92}, {230, 38, 45}
	local pulse = 100 + math.floor((math.sin(podiumFrame / 10) + 1) * 55)
	box(x - 40, y - 29, x + 40, y + 33, gold, pulse / 5)
	-- Dark pixel outline, three rounded points, sloped shoulders, and jeweled base.
	box(x - 36, y + 7, x + 36, y + 29, outline, 255)
	box(x - 31, y - 9, x - 18, y + 13, outline, 255)
	box(x - 7, y - 19, x + 7, y + 13, outline, 255)
	box(x + 18, y - 9, x + 31, y + 13, outline, 255)
	box(x - 32, y - 6, x - 21, y + 15, gold, 255)
	box(x - 5, y - 16, x + 5, y + 15, gold, 255)
	box(x + 21, y - 6, x + 32, y + 15, gold, 255)
	box(x - 27, y + 1, x + 27, y + 22, gold, 255)
	box(x - 31, y + 16, x + 31, y + 28, gold, 255)
	box(x - 28, y + 23, x + 28, y + 27, shine, 255)
	box(x - 4, y + 7, x + 4, y + 17, jewel, 255)
	-- Crown-point orbs and a soft animated aura.
	for _, px in ipairs({-27, 0, 27}) do
		box(x + px - 5, y - (px == 0 and 25 or 15), x + px + 5, y - (px == 0 and 15 or 5), outline, 255)
		box(x + px - 3, y - (px == 0 and 23 or 13), x + px + 3, y - (px == 0 and 17 or 7), shine, 255)
	end
	local sweep = (podiumFrame % 72) - 36
	if sweep >= -31 and sweep <= 31 then box(x + sweep, y - 11, x + sweep + 4, y + 24, {255, 255, 220}, 150) end
	box(x - 28, y + 18, x + 28, y + 21, shadow, 150)
end

local function drawMedal(x, y, color, scale, rank)
	scale = scale or 1
	local dark, ribbon, ribbonHi = {42, 38, 50}, {220, 42, 38}, {255, 76, 52}
	local w, h = 17 * scale, 18 * scale
	-- Split red ribbon with pointed tails, matching the arcade reference.
	box(x - 11 * scale, y - 30 * scale, x - 2 * scale, y - 5 * scale, ribbon, 255)
	box(x + 2 * scale, y - 30 * scale, x + 11 * scale, y - 5 * scale, ribbon, 255)
	box(x - 11 * scale, y - 30 * scale, x - 7 * scale, y - 5 * scale, ribbonHi, 255)
	box(x + 2 * scale, y - 30 * scale, x + 6 * scale, y - 5 * scale, ribbonHi, 255)
	box(x - w + 4 * scale, y - h - 4 * scale, x + w - 4 * scale, y + h + 4 * scale, dark, 255)
	box(x - w, y - h, x + w, y + h, dark, 255)
	box(x - w + 3 * scale, y - h - 3 * scale, x + w - 3 * scale, y + h + 3 * scale, color, 255)
	box(x - w + 1 * scale, y - h + 2 * scale, x + w - 1 * scale, y + h - 2 * scale, color, 255)
	box(x - 11 * scale, y - 12 * scale, x + 11 * scale, y + 12 * scale, {255, 244, 215}, 85)
	box(x - 10 * scale, y - 13 * scale, x + 8 * scale, y - 10 * scale, {255, 255, 235}, 130)
	txt(tostring(rank or ''), x, y + 8 * scale, {250, 248, 235}, 0.48 * scale, 0)
end

local function drawFighter(rank, f, x, baseY, scale, th)
	local loaded = idleFor(f.name, rank)
	if loaded then
		local lc = tonumber(loaded.data.localcoord) or 320
		local cns = loaded.data.cns_scale or {1, 1}
		local k = LW / lc * scale
		pcall(animSetPos, loaded.anim, x, baseY)
		pcall(animSetScale, loaded.anim, k * (cns[1] or 1), k * (cns[2] or 1))
		pcall(animUpdate, loaded.anim)
		pcall(animDraw, loaded.anim, LAYER)
	else
		dashPanel(x - 90, baseY - 210 * scale, x + 90, baseY, th, 245)
		txt(f.name, x, baseY - 95 * scale, th.text, 0.48, 0)
	end
	local awardY = baseY + 20
	if rank == 1 then drawCrown(x, awardY)
	elseif rank == 2 then drawMedal(x, awardY + 3, {170, 178, 198}, 1.0, 2)
	else drawMedal(x, awardY + 4, {224, 100, 48}, 0.82, 3) end
	txt(f.name, x, baseY + 64, th.text, rank == 1 and 0.60 or 0.51, 0)
	txt(string.format('%d picks  %s wins', f.used, percentText(f.wins, f.used)), x, baseY + 84, GREY, 0.37, 0)
end

local function dashboardHeader(p, page, pages, th, clean)
	box(0, 0, LW, LH, th.bg, 255)
	box(0, 0, LW, 92, th.panel, 245)
	txt(p.name, 48, 49, th.text, 1.0, 1)
	txt(p.title or 'ROOKIE CONTENDER', 50, 78, th.accent, 0.58, 1)
	if clean then return end
	txt(pages[page], LW - 48, 52, th.accent2, 0.75, -1)
	local dotStart = LW / 2 - (#pages * 46 - 12) / 2
	for i = 1, #pages do
		box(dotStart + (i - 1) * 46, 68, dotStart + 34 + (i - 1) * 46, 75, i == page and th.accent or {65, 70, 88}, 255)
	end
end

local function drawOverview(p, th, intro)
	local s, top = p.stats, topFighters(p)
	dashPanel(35, 112, 520, 638, th)
	txt('PLAYER CARD', 65, 158, th.accent, 0.62, 1)
	txt(string.format('%d - %d - %d', s.wins, s.losses, s.draws), 65, 228, th.text, 1.25, 1)
	txt('WINS        LOSSES        DRAWS', 68, 260, GREY, 0.48, 1)
	local wr = s.matches > 0 and s.wins / s.matches or 0
	txt(percentText(s.wins, s.matches) .. ' WIN RATE', 65, 325, th.accent2, 0.85, 1)
	dashBar(65, 348, 420, 18, wr * intro, 1, th.accent2)
	txt('CURRENT STREAK', 130, 416, GREY, 0.39, 0)
	txt(tostring(s.streak), 130, 466, th.text, 0.90, 0)
	txt('BEST STREAK', 285, 416, GREY, 0.39, 0)
	txt(tostring(s.bestStreak), 285, 466, th.text, 0.90, 0)
	txt('MATCHES', 440, 416, GREY, 0.39, 0)
	txt(tostring(s.matches), 440, 466, th.text, 0.90, 0)
	local fav = top[1] and top[1].name or 'NO FIGHTER YET'
	txt('MAIN FIGHTER', 65, 535, GREY, 0.48, 1)
	txt(fav, 65, 572, th.accent, 0.62, 1)
	local badges = earnedBadges(p)
	txt('FEATURED ACHIEVEMENTS', 65, 590, GREY, 0.39, 1)
	for i = 1, 3 do
		local x1 = 65 + (i - 1) * 138
		box(x1, 600, x1 + 128, 633, badges[i] == 'LOCKED' and {48, 52, 65} or th.accent, 235)
		local badgeScale = #tostring(badges[i]) > 14 and 0.31 or (#tostring(badges[i]) > 11 and 0.34 or 0.37)
		txt(clipText(badges[i], 17), x1 + 64, 625, badges[i] == 'LOCKED' and GREY or DARK, badgeScale, 0)
	end

	dashPanel(545, 112, 1245, 638, th)
	txt('TOP THREE FIGHTERS', 895, 158, th.accent, 0.62, 0)
	if #top == 0 then
		txt('Play matches to build your podium', 895, 390, GREY, 0.58, 0)
	else
		-- Draw rear positions first; the #1 animation owns the foreground.
		if top[2] then drawFighter(2, top[2], 710, 450, 0.54, th) end
		if top[3] then drawFighter(3, top[3], 1080, 450, 0.50, th) end
		if top[1] then drawFighter(1, top[1], 895, 470, 0.68, th) end
	end
	local team = teamAnalytics(p).best
	box(575, 580, 1215, 630, {14, 19, 38}, 235)
	txt('BEST TAG TEAM', 600, 599, GOLD, 0.38, 1)
	if team then
		txt(clipText(team.name, 45), 600, 621, th.text, 0.42, 1)
		txt(string.format('%dW  %d MATCHES  %s PLAYED  LEAD: %s', team.wins, team.matches,
			shortMatchTime(team.playTime), team.leader or '?'), 1190, 620, th.accent, 0.31, -1)
	else
		txt('Use a 2-4 fighter team to begin team analytics', 1190, 614, GREY, 0.36, -1)
	end
end

local function drawPerformance(p, th, intro)
	local s = p.stats
	dashPanel(35, 112, 620, 638, th)
	txt('CAREER PERFORMANCE', 65, 155, th.accent, 0.62, 1)
	local rows = {
		{'WINS', s.wins, math.max(1, s.matches), th.accent},
		{'LOSSES', s.losses, math.max(1, s.matches), th.accent2},
		{'ROUNDS WON', s.roundsWon, math.max(1, s.roundsWon + s.roundsLost), GOLD},
		{'PERFECTS', s.perfects, math.max(1, s.roundsWon), {128, 255, 150}},
		{'SUPER FINISHES', s.superFinishes, math.max(1, s.roundsWon), {184, 112, 255}},
		{'CLUTCH ROUNDS', s.clutch, math.max(1, s.roundsWon), {255, 135, 70}},
	}
	for i, r in ipairs(rows) do
		local y = 190 + (i - 1) * 67
		txt(r[1], 65, y, GREY, 0.5, 1)
		txt(tostring(r[2]), 575, y, th.text, 0.54, -1)
		dashBar(65, y + 14, 510, 14, r[2] * intro, r[3], r[4])
	end
	dashPanel(645, 112, 1245, 638, th)
	txt('RECENT FORM', 675, 155, th.accent, 0.62, 1)
	local history = p.history or {}
	local n = math.min(20, #history)
	if n == 0 then
		txt('New match history begins with v1.6', 945, 330, GREY, 0.58, 0)
	else
		local wins = 0
		for i = n, 1, -1 do
			local h = history[i]
			local idx = n - i
			local color = h.result == 'W' and th.accent or (h.result == 'L' and th.accent2 or GOLD)
			local height = h.result == 'W' and 150 or (h.result == 'L' and 65 or 105)
			box(680 + idx * 26, 410 - height * intro, 698 + idx * 26, 410, color, 255)
			if h.result == 'W' then wins = wins + 1 end
		end
		txt('LAST ' .. n .. ':  ' .. wins .. ' WINS  /  ' .. (n - wins) .. ' OTHER', 675, 455, th.text, 0.48, 1)
	end
	txt('VS HUMAN', 675, 520, GREY, 0.48, 1)
	txt(tostring(s.vsHuman), 675, 558, th.text, 0.7, 1)
	txt('VS CPU', 925, 520, GREY, 0.48, 1)
	txt(tostring(s.vsCpu), 925, 558, th.text, 0.7, 1)
	txt('PLAY TIME', 1130, 520, GREY, 0.48, -1)
	local secs = math.floor((s.playTime or 0) / 60)
	txt(string.format('%dh %02dm', math.floor(secs / 3600), math.floor(secs / 60) % 60), 1200, 558, th.text, 0.62, -1)
end

local function drawCharacters(p, th, scroll)
	local top = topFighters(p)
	dashPanel(35, 112, 1245, 638, th)
	txt('CHARACTER ANALYTICS', 65, 155, th.accent, 0.62, 1)
	if #top == 0 then txt('No character data recorded yet', LW / 2, 370, GREY, 0.6, 0) return end
	local maxUsed = math.max(1, top[1].used)
	for row = 1, 7 do
		local i, f = scroll + row, top[scroll + row]
		if f then
			local y = 178 + (row - 1) * 62
			txt('#' .. i, 70, y + 32, i <= 3 and GOLD or GREY, 0.58, 1)
			txt(f.name, 135, y + 28, th.text, 0.55, 1)
			dashBar(440, y + 12, 450, 18, f.used, maxUsed, i == 1 and th.accent2 or th.accent)
			txt(f.used .. ' PICKS', 920, y + 28, GREY, 0.5, 1)
			txt(f.wins .. ' WINS', 1060, y + 28, th.text, 0.5, 1)
			txt(percentText(f.wins, f.used), 1200, y + 28, th.accent, 0.56, -1)
		end
	end
	txt(string.format('%d UNIQUE FIGHTERS   |   UP/DOWN TO SCROLL', #top), LW / 2, 615, GREY, 0.46, 0)
end

local function drawTeamCard(label, team, x1, x2, th)
	dashPanel(x1, 112, x2, 360, th)
	txt(label, x1 + 28, 155, th.accent, 0.62, 1)
	if not team then
		txt('No 2-4 fighter team data yet', (x1 + x2) / 2, 250, GREY, 0.54, 0)
		return
	end
	txt(clipText(team.name, 42), x1 + 28, 220, th.text, 0.68, 1)
	txt('LEADER: ' .. tostring(team.leader or '?'), x1 + 28, 265, GOLD, 0.5, 1)
	txt(string.format('%d MATCHES   %d WINS   %s WIN RATE', team.matches, team.wins, percentText(team.wins, team.matches)), x1 + 28, 305, GREY, 0.46, 1)
	txt('TEAM TIME  ' .. shortMatchTime(team.playTime), x1 + 28, 337, th.accent2, 0.46, 1)
end

local function drawTeamLab(p, th)
	local data = teamAnalytics(p)
	drawTeamCard('BEST TAG TEAM', data.best, 35, 620, th)
	drawTeamCard('MOST-USED TAG TEAM', data.mostUsed, 645, 1245, th)
	dashPanel(35, 385, 1245, 638, th)
	txt('PREFERRED TEAM LEADERS', 65, 428, th.accent, 0.62, 1)
	for size = 2, 4 do
		local lead, y = data.leaders[size][1], 442 + (size - 2) * 61
		box(65, y, 1210, y + 49, {28, 36, 64}, 220)
		txt(size .. '-FIGHTER TEAM', 88, y + 32, GOLD, 0.5, 1)
		if lead then
			txt('LEAD: ' .. lead.name, 360, y + 32, th.text, 0.56, 1)
			txt(string.format('%d PICKS   %d WINS   %s PLAYED', lead.picks, lead.wins, shortMatchTime(lead.playTime)), 1175, y + 32, th.accent, 0.46, -1)
		else txt('No recorded lineup', 360, y + 32, GREY, 0.48, 1) end
	end
	txt('Team order is preserved: the first selected character is counted as the lead.', LW / 2, 624, GREY, 0.42, 0)
end

local function aggregateHistory(p, keyFn)
	local map, list = {}, {}
	for _, h in ipairs(p.history or {}) do
		local key = keyFn(h)
		if key and key ~= '' then
			local a = map[key] or {name = key, matches = 0, wins = 0, losses = 0, draws = 0}
			a.matches = a.matches + 1
			if h.result == 'W' then a.wins = a.wins + 1
			elseif h.result == 'L' then a.losses = a.losses + 1 else a.draws = a.draws + 1 end
			map[key] = a
		end
	end
	for _, a in pairs(map) do list[#list + 1] = a end
	table.sort(list, function(a, b) return a.matches == b.matches and a.wins > b.wins or a.matches > b.matches end)
	return list
end

local function drawAnalyticsList(title, list, x1, x2, th)
	dashPanel(x1, 112, x2, 638, th)
	txt(title, x1 + 30, 155, th.accent, 0.62, 1)
	if #list == 0 then txt('New detailed data starts with v1.6', (x1 + x2) / 2, 360, GREY, 0.52, 0) return end
	local maxMatches = math.max(1, list[1].matches)
	for i = 1, math.min(6, #list) do
		local a, y = list[i], 182 + (i - 1) * 72
		txt('#' .. i, x1 + 28, y + 25, i <= 3 and GOLD or GREY, 0.47, 1)
		txt(clipText(a.name, 22), x1 + 78, y + 24, th.text, 0.46, 1)
		txt(a.matches .. ' PLAYED', x2 - 28, y + 23, GREY, 0.36, -1)
		dashBar(x1 + 78, y + 36, x2 - x1 - 150, 11, a.matches, maxMatches, i == 1 and th.accent2 or th.accent)
		txt(percentText(a.wins, a.matches) .. ' WINS', x2 - 28, y + 64, th.accent, 0.36, -1)
	end
end

local function drawMatchups(p, th)
	local opponents = aggregateHistory(p, function(h)
		local chars = table.concat(h.opponentChars or {}, ' / ')
		return chars ~= '' and chars or h.opponent
	end)
	local players = aggregateHistory(p, function(h) return h.opponent end)
	drawAnalyticsList('CHARACTER MATCHUPS', opponents, 35, 630, th)
	drawAnalyticsList('OPPONENT RECORDS', players, 650, 1245, th)
end

local function drawModesStages(p, th)
	local modes = aggregateHistory(p, function(h) return tostring(h.mode or 'UNKNOWN'):upper() end)
	local stages = aggregateHistory(p, function(h) return tostring(h.stage or 'UNKNOWN STAGE'):upper() end)
	drawAnalyticsList('MODES', modes, 35, 630, th)
	drawAnalyticsList('STAGES', stages, 650, 1245, th)
end

local function formatMatchTime(ticks)
	local seconds = math.max(0, math.floor((tonumber(ticks) or 0) / 60))
	return string.format('%d:%02d', math.floor(seconds / 60), seconds % 60)
end

local function drawRecords(p, th)
	local fastest, longest, sweeps, online, played = nil, nil, 0, 0, 0
	for _, h in ipairs(p.history or {}) do
		local d = tonumber(h.duration) or 0
		if d > 0 then
			if h.result == 'W' and (fastest == nil or d < fastest) then fastest = d end
			if longest == nil or d > longest then longest = d end
		end
		if h.result == 'W' and (tonumber(h.roundsLost) or 0) == 0 then sweeps = sweeps + 1 end
		if h.online then online = online + 1 end
		played = played + 1
	end
	local modes = aggregateHistory(p, function(h) return tostring(h.mode or 'UNKNOWN'):upper() end)
	local stages = aggregateHistory(p, function(h) return tostring(h.stage or 'UNKNOWN STAGE'):upper() end)
	local cards = {
		{'FASTEST WIN', fastest and formatMatchTime(fastest) or '--:--', 'Shortest recorded completed win'},
		{'LONGEST MATCH', longest and formatMatchTime(longest) or '--:--', 'Longest recorded match'},
		{'CLEAN SWEEPS', tostring(sweeps), 'Wins without losing a round'},
		{'ONLINE MATCHES', tostring(online), 'Recorded online matches'},
		{'TOP MODE', modes[1] and modes[1].name or '-', modes[1] and (modes[1].matches .. ' matches') or 'No detailed data'},
		{'TOP STAGE', stages[1] and stages[1].name or '-', stages[1] and (stages[1].matches .. ' matches') or 'No detailed data'},
	}
	for i, c in ipairs(cards) do
		local col, row = (i - 1) % 3, math.floor((i - 1) / 3)
		local x1, y1 = 35 + col * 405, 118 + row * 245
		dashPanel(x1, y1, x1 + 380, y1 + 218, th)
		txt(c[1], x1 + 25, y1 + 46, GREY, 0.48, 1)
		txt(c[2], x1 + 25, y1 + 118, i <= 2 and th.accent2 or th.accent, 0.9, 1)
		txt(c[3], x1 + 25, y1 + 170, th.text, 0.42, 1)
	end
	if played == 0 then txt('Records begin with detailed v1.6+ match history', LW / 2, 625, GREY, 0.46, 0) end
end

local function drawAchievements(p, th, cursor)
	local list = achievementCatalog(p)
	dashPanel(35, 112, 1245, 638, th)
	txt('ACHIEVEMENTS & EVENT AWARDS', 65, 155, th.accent, 0.62, 1)
	local first = math.max(1, math.min(cursor - 3, math.max(1, #list - 6)))
	for row = 1, 7 do
		local i, a = first + row - 1, list[first + row - 1]
		if a then
			local y, on = 178 + (row - 1) * 61, i == cursor
			local featured = false
			for _, id in ipairs(p.featuredBadges or {}) do if id == a.id then featured = true break end end
			box(58, y, 1220, y + 52, on and th.accent or th.panel, on and 235 or 180)
			local state = featured and 'FEATURED' or (a.earned and 'UNLOCKED' or 'LOCKED')
			txt(state, 80, y + 32, a.earned and (on and DARK or th.accent) or GREY, 0.43, 1)
			txt(a.label, 265, y + 31, on and DARK or th.text, 0.52, 1)
			txt(clipText(a.detail, 48), 600, y + 31, on and DARK or GREY, 0.4, 1)
			local progress = a.earned and 'COMPLETE' or (math.min(a.value, a.target) .. ' / ' .. a.target)
			txt(progress, 1180, y + 31, on and DARK or th.accent2, 0.45, -1)
		end
	end
	txt('UP/DOWN: browse   ATTACK: feature/unfeature unlocked badge (maximum 3)', LW / 2, 622, GREY, 0.46, 0)
	return list
end

local function toggleFeatured(p, achievement)
	if not achievement or not achievement.earned then return end
	p.featuredBadges = p.featuredBadges or {}
	for i, id in ipairs(p.featuredBadges) do
		if id == achievement.id then table.remove(p.featuredBadges, i) PF.save() return end
	end
	if #p.featuredBadges >= 3 then table.remove(p.featuredBadges, 1) end
	p.featuredBadges[#p.featuredBadges + 1] = achievement.id
	PF.save()
end

local function drawRank(p, th)
	local rank = PF.onlineRankFor(p)
	dashPanel(180, 128, 1100, 625, th)
	txt('ONLINE RANK', LW / 2, 185, th.accent, 0.72, 0)
	if rank == nil then
		txt('UNRANKED', LW / 2, 320, th.accent2, 1.45, 0)
		txt('Waiting for a server-verified Ranked profile', LW / 2, 385, th.text, 0.58, 0)
		txt('Local files cannot assign public rating or leaderboard position.', LW / 2, 430, GREY, 0.48, 0)
		txt('The lobby server can provide rankFor(), onlineRank(), or profileRank().', LW / 2, 470, GREY, 0.43, 0)
	else
		local division = tostring(rank.division or rank.rank or 'PLACEMENT'):upper()
		txt(division, LW / 2, 285, th.accent2, 1.35, 0)
		txt('RATING  ' .. tostring(rank.rating or rank.points or '-'), LW / 2, 350, th.text, 0.72, 0)
		txt('PEAK  ' .. tostring(rank.peak or rank.peakRating or '-') .. '     LEADERBOARD  #' .. tostring(rank.position or '-'), LW / 2, 405, th.accent, 0.56, 0)
		txt('SEASON  ' .. tostring(rank.season or '-') .. '     RECORD  ' .. tostring(rank.wins or 0) .. '-' .. tostring(rank.losses or 0), LW / 2, 462, th.text, 0.56, 0)
		txt('VERIFIED BY ONLINE LOBBY', LW / 2, 550, GOLD, 0.48, 0)
	end
end

local function drawTournaments(p, th)
	local summary = tournamentSummary(p)
	dashPanel(35, 112, 1245, 638, th)
	txt('TOURNAMENT CAREER', 65, 155, th.accent, 0.62, 1)
	local bestText = '--'
	if summary.best then
		bestText = '#' .. tostring(summary.best.placement)
		if tonumber(summary.best.fieldSize) then bestText = bestText .. ' / ' .. tostring(summary.best.fieldSize) end
	end
	local cards = {
		{'BEST FINISH', bestText}, {'CHAMPIONSHIPS', tostring(summary.wins)},
		{'PODIUMS', tostring(summary.podiums)}, {'APPEARANCES', tostring(summary.appearances)},
	}
	for i, c in ipairs(cards) do
		local x1 = 65 + (i - 1) * 290
		box(x1, 178, x1 + 260, 264, {28, 36, 64}, 220)
		txt(c[1], x1 + 18, 208, GREY, 0.42, 1)
		txt(c[2], x1 + 18, 250, i == 1 and th.accent2 or th.accent, 0.7, 1)
	end
	if summary.appearances == 0 then
		txt('No tournament results recorded yet', LW / 2, 390, th.text, 0.62, 0)
		txt('Compatible online and event modules can publish placements here.', LW / 2, 435, GREY, 0.48, 0)
		txt('Verified results are clearly separated from community/local records.', LW / 2, 470, GREY, 0.43, 0)
		return
	end
	txt('RECENT RESULTS', 65, 310, GOLD, 0.48, 1)
	local rows = {}
	for _, t in ipairs(p.tournaments or {}) do rows[#rows + 1] = t end
	table.sort(rows, function(a, b) return (tonumber(a.time) or 0) > (tonumber(b.time) or 0) end)
	for i = 1, math.min(5, #rows) do
		local t, y = rows[i], 326 + (i - 1) * 55
		local verified = t.verified == true
		box(65, y, 1215, y + 45, {22, 29, 52}, 220)
		txt('#' .. tostring(t.placement), 85, y + 29, tonumber(t.placement) == 1 and GOLD or th.accent, 0.58, 1)
		txt(clipText(t.name or 'TOURNAMENT', 38), 155, y + 28, th.text, 0.5, 1)
		txt(tostring(t.fieldSize or t.placement or '-') .. ' ENTRANTS', 720, y + 28, GREY, 0.42, 1)
		txt(clipText(t.season or '', 18), 930, y + 28, GREY, 0.42, 1)
		txt(verified and 'VERIFIED' or 'COMMUNITY', 1185, y + 28, verified and GOLD or GREY, 0.43, -1)
	end
	txt(summary.verified .. ' VERIFIED RESULT' .. (summary.verified == 1 and '' or 'S'), LW / 2, 622, GREY, 0.43, 0)
end

local function filteredHistory(p, filter)
	local out = {}
	for _, h in ipairs(p.history or {}) do
		if filter == 'ALL' or (filter == 'WINS' and h.result == 'W') or (filter == 'LOSSES' and h.result == 'L') or (filter == 'ONLINE' and h.online) then
			out[#out + 1] = h
		end
	end
	return out
end

local function drawHistory(p, th, scroll, filter)
	local history = filteredHistory(p, filter)
	dashPanel(35, 112, 1245, 638, th)
	txt('RECENT MATCHES', 65, 155, th.accent, 0.62, 1)
	txt('FILTER: ' .. filter .. '  (ATTACK TO CHANGE)', 1210, 155, th.accent2, 0.46, -1)
	if #history == 0 then
		txt('Match history starts recording in v1.6', LW / 2, 350, GREY, 0.58, 0)
		txt('Your existing career totals are still preserved', LW / 2, 390, GREY, 0.54, 0)
		return
	end
	for row = 1, 6 do
		local h = history[scroll + row]
		if h then
			local y = 180 + (row - 1) * 70
			local col = h.result == 'W' and th.accent or (h.result == 'L' and th.accent2 or GOLD)
			box(60, y, 112, y + 50, col, 255)
			txt(h.result, 86, y + 36, DARK, 0.72, 0)
			local mine = table.concat(h.chars or {}, ' / ')
			local theirs = table.concat(h.opponentChars or {}, ' / ')
			local rival = h.opponent and h.opponent ~= '' and h.opponent or 'OPPONENT'
			txt(clipText((mine ~= '' and mine or '?') .. '  vs  ' .. rival .. '  [' .. (theirs ~= '' and theirs or '?') .. ']', 70), 135, y + 25, th.text, 0.48, 1)
			local score = string.format('%d-%d', tonumber(h.roundsWon) or 0, tonumber(h.roundsLost) or 0)
			txt(string.format('%s | SCORE %s | %s | %s | %s', tostring(h.mode):upper(), score,
				h.finish or '', formatMatchTime(h.duration), clipText(h.stage or 'UNKNOWN STAGE', 32)), 135, y + 47, GREY, 0.42, 1)
			txt(os.date('%b %d  %H:%M', tonumber(h.time) or os.time()):upper(), 1205, y + 31, GREY, 0.42, -1)
		end
	end
	txt(string.format('SHOWING %d-%d OF %d   |   UP/DOWN TO SCROLL', scroll + 1, math.min(scroll + 6, #history), #history), LW / 2, 615, GREY, 0.46, 0)
end

function PF.statsDashboard(p)
	local pages = {'PLAYER CARD', 'PERFORMANCE', 'CHARACTERS', 'TEAM LAB', 'MATCH HISTORY', 'MATCHUPS', 'MODES & STAGES', 'RECORDS', 'ACHIEVEMENTS', 'TOURNAMENTS', 'ONLINE RANK'}
	local page, scroll, frame = 1, {}, 0
	local achievementCursor, historyFilter, showcase = 1, 'ALL', false
	local filters, filterIndex = {'ALL', 'WINS', 'LOSSES', 'ONLINE'}, 1
	if resetKey then resetKey() end
	while true do
		frame = frame + 1
		podiumFrame = frame
		frameStart()
		local th = profileTheme(p)
		dashboardHeader(p, page, pages, th, showcase)
		local intro = math.min(1, frame / 18)
		if page == 1 then drawOverview(p, th, intro)
		elseif page == 2 then drawPerformance(p, th, intro)
		elseif page == 3 then drawCharacters(p, th, scroll[3] or 0)
		elseif page == 4 then drawTeamLab(p, th)
		elseif page == 5 then drawHistory(p, th, scroll[5] or 0, historyFilter)
		elseif page == 6 then drawMatchups(p, th)
		elseif page == 7 then drawModesStages(p, th)
		elseif page == 8 then drawRecords(p, th)
		elseif page == 9 then drawAchievements(p, th, achievementCursor)
		elseif page == 10 then drawTournaments(p, th)
		else drawRank(p, th) end
		if not showcase then
			box(0, 658, LW, LH, th.panel, 245)
			local hint = page == 1 and 'ATTACK: clean screenshot mode' or (page == 5 and 'ATTACK: change filter' or (page == 9 and 'ATTACK: feature badge' or ''))
			txt('LEFT/RIGHT: page     UP/DOWN: scroll     BACK: profile menu     ' .. hint, LW / 2, 699, th.text, 0.48, 0)
		end
		if frame > 10 then
			if showcase then
				if inp(-1, UI.confirm) or inp(-1, UI.back) or (esc and esc()) then showcase = false if esc then esc(false) end end
			elseif inp(-1, UI.left) then page = page > 1 and page - 1 or #pages frame = 0 snd('move')
			elseif inp(-1, UI.right) then page = page < #pages and page + 1 or 1 frame = 0 snd('move')
			elseif inp(-1, UI.up) then
				if page == 9 then achievementCursor = math.max(1, achievementCursor - 1)
				else scroll[page] = math.max(0, (scroll[page] or 0) - 1) end
			elseif inp(-1, UI.down) then
				if page == 9 then achievementCursor = math.min(#achievementCatalog(p), achievementCursor + 1)
				else
					local total = page == 3 and #topFighters(p) or (page == 5 and #filteredHistory(p, historyFilter) or 0)
					local visible = page == 3 and 7 or 6
					scroll[page] = math.min(math.max(0, total - visible), (scroll[page] or 0) + 1)
				end
			elseif inp(-1, UI.confirm) then
				if page == 1 then showcase = true
				elseif page == 5 then filterIndex = filterIndex % #filters + 1 historyFilter = filters[filterIndex] scroll[5] = 0
				elseif page == 9 then toggleFeatured(p, achievementCatalog(p)[achievementCursor]) end
			elseif inp(-1, UI.back) or (esc and esc()) then if esc then esc(false) end return end
		end
		refresh()
	end
end

function PF.chooseTitle(p)
	if PF.refreshTitleUnlocks(p, false) then PF.save() end
	local items = {}
	for _, def in ipairs(PF.TITLE_CATALOG) do
		items[#items + 1] = (PF.isTitleUnlocked(p, def) and '' or '[LOCKED]  ') .. def.label
	end
	items[#items + 1] = 'CUSTOM TITLE...'
	items[#items + 1] = 'BACK'
	local c = menuLoop('CHOOSE PLAYER TITLE', items, 'Earned and open titles appear beneath your name on the Player Card.')
	if c == nil or c == #items then return end
	if c == #items - 1 then
		local title = PF.enterText(1, 'CUSTOM PLAYER TITLE', p.title or '', 28)
		if title and title:gsub('%s+', '') ~= '' then p.title = title:upper() end
	else
		local def = PF.TITLE_CATALOG[c]
		if not PF.isTitleUnlocked(p, def) then
			local value, target = PF.titleProgress(p, def)
			message({'TITLE LOCKED', def.label, def.detail, tostring(math.min(value, target)) .. ' / ' .. tostring(target)})
			return
		end
		p.title = def.label
	end
	PF.save()
end

function PF.titleCollection(p)
	if PF.refreshTitleUnlocks(p, false) then PF.save() end
	local cur, frame = 1, 0
	if resetKey then resetKey() end
	while true do
		frame = frame + 1
		frameStart()
		local th = profileTheme(p)
		box(0, 0, LW, LH, th.bg, 255)
		dashPanel(45, 40, 1235, 640, th)
		txt('TITLE COLLECTION', 75, 88, th.accent, 0.78, 1)
		txt('Earn titles through your recorded fighting style and milestones', 75, 119, GREY, 0.45, 1)
		local first = math.max(1, math.min(cur - 3, math.max(1, #PF.TITLE_CATALOG - 6)))
		for row = 1, 7 do
			local i, def = first + row - 1, PF.TITLE_CATALOG[first + row - 1]
			if def then
				local y, on = 142 + (row - 1) * 60, i == cur
				local value, target = PF.titleProgress(p, def)
				local unlocked = PF.isTitleUnlocked(p, def)
				box(70, y, 1210, y + 50, on and th.accent or {28, 36, 64}, on and 240 or 210)
				txt(unlocked and 'UNLOCKED' or 'LOCKED', 92, y + 31, unlocked and (on and DARK or GOLD) or GREY, 0.42, 1)
				txt(def.label, 285, y + 31, on and DARK or th.text, 0.52, 1)
				txt(clipText(def.detail, 45), 650, y + 31, on and DARK or GREY, 0.4, 1)
				local progress = def.always and 'OPEN' or (math.min(value, target) .. ' / ' .. target)
				txt(progress, 1170, y + 31, on and DARK or th.accent2, 0.44, -1)
			end
		end
		local selected = PF.TITLE_CATALOG[cur]
		local canEquip = selected and PF.isTitleUnlocked(p, selected)
		txt(canEquip and 'ATTACK: equip title' or 'Keep playing to unlock this title', LW / 2, 620, canEquip and th.accent or GREY, 0.45, 0)
		txt('UP/DOWN: browse     BACK: return', LW / 2, 690, th.text, 0.48, 0)
		if frame > 8 then
			if inp(-1, UI.up) then cur = cur > 1 and cur - 1 or #PF.TITLE_CATALOG snd('move')
			elseif inp(-1, UI.down) then cur = cur < #PF.TITLE_CATALOG and cur + 1 or 1 snd('move')
			elseif inp(-1, UI.confirm) and canEquip then p.title = selected.label PF.save() snd('done')
			elseif inp(-1, UI.back) or (esc and esc()) then if esc then esc(false) end return end
		end
		refresh()
	end
end

function PF.showTitleUnlocks()
	if #PF.pendingTitleUnlocks == 0 then return end
	local unlocked = PF.pendingTitleUnlocks
	PF.pendingTitleUnlocks = {}
	local p = PF.byName(unlocked[1].profile)
	local th = p and profileTheme(p) or PF.THEMES.neon
	if resetKey then resetKey() end
	if snd then snd('done') end
	for frame = 1, 240 do
		frameStart()
		box(0, 0, LW, LH, {4, 6, 16}, 210)
		dashPanel(240, 155, 1040, 570, th, 248)
		txt('NEW TITLE UNLOCKED', LW / 2, 215, GOLD, 0.82, 0)
		for i = 1, math.min(4, #unlocked) do
			local u, y = unlocked[i], 255 + (i - 1) * 67
			txt(u.title, LW / 2, y + 22, th.accent, 0.66, 0)
			txt(clipText(u.detail, 58), LW / 2, y + 47, GREY, 0.4, 0)
		end
		if #unlocked > 4 then txt('+' .. (#unlocked - 4) .. ' MORE - VIEW TITLE COLLECTION', LW / 2, 532, th.accent2, 0.43, 0) end
		txt('PRESS ATTACK TO CONTINUE', LW / 2, 620, WHITE, 0.46, 0)
		if frame > 20 and (inp(-1, UI.confirm) or inp(-1, UI.back)) then break end
		refresh()
	end
end

function PF.chooseTheme(p)
	local order = {'neon', 'vaporwave', 'miami', 'arcade', 'tournament', 'minimal'}
	local items = {}
	for _, key in ipairs(order) do items[#items + 1] = PF.THEMES[key].label end
	items[#items + 1] = 'BACK'
	local c = menuLoop('PLAYER CARD THEME', items, 'Vaporwave and Miami Vice are included in v1.6.')
	if c and c <= #order then p.theme = order[c] PF.save() end
end

function PF.manageOne(p)
	while PF.byId(p.id) do
		local source = p.tagsource == 'author' and 'CHARACTER AUTHOR' or 'PROFILE NAME'
		local theme = profileTheme(p)
		local items = {'SHOWCASE & STATS', 'TITLE: ' .. (p.title or 'ROOKIE CONTENDER'), 'TITLE COLLECTION', 'THEME: ' .. theme.label,
			'SAVE MY CONTROLS (AS PLAYER 1)', 'SAVE MY CONTROLS (AS PLAYER 2)', 'FORGET SAVED CONTROLS',
			'TAG TEXT: ' .. source, 'RENAME', 'DELETE', 'BACK'}
		local c = menuLoop(p.name, items, 'Set your buttons in Options > Input first, then save them here.')
		if c == nil or c == 11 then return end
		if c == 1 then
			PF.statsDashboard(p)
		elseif c == 2 then PF.chooseTitle(p)
		elseif c == 3 then PF.titleCollection(p)
		elseif c == 4 then PF.chooseTheme(p)
		elseif c == 5 or c == 6 then
			local pn = c - 4
			local got = PF.captureControls(p, pn)
			message({'Controls saved', 'From player ' .. pn .. ' settings: ' .. table.concat(got, ', '), 'They load whenever this profile is picked on that device.'})
		elseif c == 7 then
			p.controls = {}
			PF.save()
			message({'Saved controls cleared'})
		elseif c == 8 then
			p.tagsource = p.tagsource == 'author' and 'profile' or 'author'
			PF.save()
		elseif c == 9 then
			local name = PF.enterName(1, 'RENAME PROFILE', p.name, p.id)
			if name then p.name = name PF.save() end
		elseif c == 10 then
			local y = menuLoop('DELETE ' .. p.name .. '?', {'NO', 'YES, DELETE'}, 'Stats and saved controls are lost.')
			if y == 2 then PF.delete(p.id) return end
		end
	end
end

local TAGS = {corner = 'LIFEBAR CORNER', above = 'ABOVE FIGHTER', off = 'OFF'}
local TAG_NEXT = {corner = 'above', above = 'off', off = 'corner'}
local ALIGN_LABEL = {[1] = 'LEFT', [0] = 'CENTER', [-1] = 'RIGHT'}
local ALIGN_NEXT = {[1] = 0, [0] = -1, [-1] = 1}

local function settingAdjust(title, key, lo, hi, step)
	local frame = 0
	if resetKey then resetKey() end
	while true do
		frame = frame + 1
		frameStart()
		local v = tonumber(PF.data.settings[key]) or lo
		txt(title, LW / 2, 180, WHITE, 1.1, 0)
		txt(tostring(math.floor(v + 0.5)), LW / 2, 330, GOLD, 1.6, 0)
		txt('LEFT/RIGHT: adjust   ATTACK/BACK: save and return', LW / 2, 520, GREY, 0.55, 0)
		if frame > 8 then
			if inp(-1, UI.left) then PF.data.settings[key] = math.max(lo, v - step) snd('move')
			elseif inp(-1, UI.right) then PF.data.settings[key] = math.min(hi, v + step) snd('move')
			elseif inp(-1, UI.confirm) or inp(-1, UI.back) or (esc and esc()) then
				if esc then esc(false) end PF.save() return
			end
		end
		refresh()
	end
end

local function colorAdjust(side, isBox)
	local key = isBox and 'tagboxcolors' or 'tagcolors'
	local fallback = isBox and {10, 8, 26} or (side == 1 and P1C or P2C)
	local col = normalizeColor(PF.data.settings[key][side], fallback)
	PF.data.settings[key][side] = col
	local cur, frame = 1, 0
	if resetKey then resetKey() end
	while true do
		frame = frame + 1
		frameStart()
		local title = 'P' .. side .. (isBox and ' BOX COLOR' or ' NAME COLOR')
		txt(title, LW / 2, 100, WHITE, 1.05, 0)
		box(LW / 2 - 100, 150, LW / 2 + 100, 210, col, 255)
		local labels = {'RED', 'GREEN', 'BLUE', 'DONE'}
		for i, label in ipairs(labels) do
			local y, on = 250 + (i - 1) * 60, i == cur
			box(LW / 2 - 280, y, LW / 2 + 280, y + 48, on and P1C or {30, 36, 64}, 225)
			txt(i < 4 and (label .. ': ' .. col[i]) or label, LW / 2, y + 34, on and DARK or GREY, 0.7, 0)
		end
		if frame > 8 then
			if inp(-1, UI.up) then cur = cur > 1 and cur - 1 or 4 snd('move')
			elseif inp(-1, UI.down) then cur = cur < 4 and cur + 1 or 1 snd('move')
			elseif cur < 4 and inp(-1, UI.left) then col[cur] = clampByte(col[cur] - 5) snd('move')
			elseif cur < 4 and inp(-1, UI.right) then col[cur] = clampByte(col[cur] + 5) snd('move')
			elseif (cur == 4 and inp(-1, UI.confirm)) or inp(-1, UI.back) or (esc and esc()) then
				if esc then esc(false) end PF.save() return
			end
		end
		refresh()
	end
end

function PF.tagAppearanceMenu()
	while true do
		local st = PF.data.settings
		local items = {
			'ALIGNMENT: ' .. (ALIGN_LABEL[st.tagalign] or 'CENTER'),
			'P1 NAME COLOR', 'P2 NAME COLOR', 'P1 BOX COLOR', 'P2 BOX COLOR',
			'BOX ALPHA: ' .. st.tagboxalpha, 'HORIZONTAL PADDING: ' .. st.tagpadx,
			'VERTICAL PADDING: ' .. st.tagpady, 'BACK',
		}
		local c = menuLoop('NAME TAG COLORS & BOX', items, 'All changes are previewed in fights and in the live tag editor.')
		if c == nil or c == 9 then return
		elseif c == 1 then st.tagalign = ALIGN_NEXT[st.tagalign] or 0 PF.save()
		elseif c >= 2 and c <= 5 then colorAdjust(c % 2 == 0 and 1 or 2, c >= 4)
		elseif c == 6 then settingAdjust('BOX ALPHA', 'tagboxalpha', 0, 255, 5)
		elseif c == 7 then settingAdjust('HORIZONTAL PADDING', 'tagpadx', 0, 80, 1)
		elseif c == 8 then settingAdjust('VERTICAL PADDING', 'tagpady', 0, 80, 1)
		end
	end
end

-------------------------------------------------------------------------------
-- name tag editor: a quick match where you move each player's tag, pick the
-- font, size and the dark box behind it
-------------------------------------------------------------------------------
local function fontList()
	local list, seen = {{path = '', label = 'DEFAULT'}}, {}
	local dirs = {'font'}
	local md = tostring((motif and motif.def) or ''):gsub('\\', '/'):match('^(.*)/[^/]*$')
	if md then dirs[#dirs + 1] = md end
	for _, d in ipairs(dirs) do
		local ok, files = pcall(getDirectoryFiles, d)
		if ok and type(files) == 'table' then
			table.sort(files)
			for _, f in ipairs(files) do
				f = tostring(f):gsub('\\', '/')
				local low = f:lower()
				if low:match('%.def$') and not seen[low] and not low:find('/_online/', 1, true) then
					-- a font .def has an [FNT v2] / [Def] section; skip other .def files
					local fh = io.open(f, 'r')
					local head = fh and fh:read(400) or ''
					if fh then fh:close() end
					if head:lower():find('fnt', 1, true) or head:lower():find('type', 1, true) then
						seen[low] = true
						list[#list + 1] = {path = f, label = f:match('([^/]+)%.def$') or f}
					end
				end
			end
		end
	end
	return list
end

local function sampleNames()
	local n = {}
	for _, p in ipairs((PF.data and PF.data.profiles) or {}) do
		if #n < 2 then n[#n + 1] = p.name end
	end
	return {n[1] or 'PLAYER ONE', n[2] or 'PLAYER TWO'}
end

local function quickMatchSetup()
	local chars, stages = {}, {}
	for _, c in ipairs(main.t_selChars or {}) do
		if c.def and c.char ~= 'randomselect' and not tostring(c.def):find('_online', 1, true) then chars[#chars + 1] = c.def end
	end
	for _, st in ipairs(main.t_selStages or {}) do
		if st.def and not tostring(st.def):find('_online', 1, true) then stages[#stages + 1] = st.def end
	end
	if #chars == 0 or #stages == 0 then return false end
	main.f_default()
	setGameMode('quickvs')
	start.f_selectReset(true)
	setMotifElements({dialogue = false})
	local frames = fightScreenVar('time.framespercount')
	for side = 1, 2 do
		start.p[side].teamMode = 0
		start.p[side].numChars = 1
		setMatchWins(side, 1)
	end
	setTimeFramesPerCount(frames)
	setRoundTime(-1)
	local stageRef = start.f_getStageRef(stages[math.random(1, #stages)])
	clearSelected()
	setMatchNo(1)
	selectStage(stageRef)
	for side = 1, 2 do
		setTeamMode(side, 0, 1)
		local def = chars[math.random(1, #chars)]
		local ref = start.f_getCharRef(def)
		selectChar(side, ref, side)
		setCom(side, 0)
		table.insert(start.p[side].t_selected, {ref = ref, pal = side, pn = start.f_getPlayerNo(side, 1)})
	end
	-- nobody's controls move the fighters while editing
	remapInput(1, 7)
	remapInput(2, 8)
	return true
end

local function edAction()
	local k = getKey()
	if k ~= nil and k ~= '' then
		resetKey()
		local map = {UP = 'up', DOWN = 'down', LEFT = 'left', RIGHT = 'right', TAB = 'side', f = 'font', F = 'font',
			b = 'box', B = 'box', EQUALS = 'bigger', KP_PLUS = 'bigger', MINUS = 'smaller', KP_MINUS = 'smaller',
			r = 'reset', R = 'reset', RETURN = 'save', KP_ENTER = 'save', BACKSPACE = 'cancel'}
		if map[k] then return map[k] end
	end
	-- Use IKEMEN's logical inputs rather than merging raw P1/P2 physical button
	-- codes. The old merged lookup could overwrite actions when the two players'
	-- bindings shared a code (for example controller B behaving like Y/box).
	if inp(-1, UI.up) then return 'up' end
	if inp(-1, UI.down) then return 'down' end
	if inp(-1, UI.left) then return 'left' end
	if inp(-1, UI.right) then return 'right' end
	if inp(-1, {'a'}) then return 'side' end
	if inp(-1, {'x'}) then return 'font' end
	if inp(-1, {'y'}) then return 'box' end
	if inp(-1, {'z'}) then return 'bigger' end
	if inp(-1, {'c'}) then return 'smaller' end
	if inp(-1, {'s'}) then return 'save' end
	if inp(-1, {'b'}) then return 'cancel' end
	return nil
end

function PF.editStep()
	local e = PF.editing
	if e == nil then return end
	tN, rN = 0, 0 -- the pools are reused every frame
	local st = PF.data.settings
	local a = edAction()
	local pos = st.tagpos[e.side]
	local stepPx = 4
	if a == 'up' then pos.y = math.max(10, pos.y - stepPx)
	elseif a == 'down' then pos.y = math.min(LH - 4, pos.y + stepPx)
	elseif a == 'left' then pos.x = math.max(0, pos.x - stepPx)
	elseif a == 'right' then pos.x = math.min(LW, pos.x + stepPx)
	elseif a == 'side' then e.side = 3 - e.side
	elseif a == 'font' then
		e.font = e.font % #e.fonts + 1
		st.tagfont = e.fonts[e.font].path
	elseif a == 'box' then st.tagbox = (st.tagbox == false)
	elseif a == 'bigger' then st.tagsize = math.min(1.5, (tonumber(st.tagsize) or PF.tag.scale) + 0.05)
	elseif a == 'smaller' then st.tagsize = math.max(0.2, (tonumber(st.tagsize) or PF.tag.scale) - 0.05)
	elseif a == 'reset' then
		st.tagpos = nil
		st.tagfont, st.tagsize, st.tagbox = '', nil, true
		e.font = 1
		st.tagpos = {{x = PF.tag.corner[1].x, y = PF.tag.corner[1].y}, {x = PF.tag.corner[2].x, y = PF.tag.corner[2].y}}
	elseif a == 'save' or a == 'cancel' then
		e.done = a
		if endMatch then endMatch() else esc(true) end
	end
	-- draw both tags where they will be, the selected one highlighted
	local names = e.names
	for side = 1, 2 do
		local c = PF.cornerFor(side)
		local col = st.tagcolors and st.tagcolors[side] or (side == 1 and P1C or P2C)
		if side == e.side and math.floor(e.t / 15) % 2 == 0 then col = GOLD end
		-- same placement as in fights (4:3 stages sit in a narrower box)
		local off, k = PF.fightView()
		local align = (st.tagalign == -1 or st.tagalign == 0 or st.tagalign == 1) and st.tagalign or c.align
		local bc = st.tagboxcolors and st.tagboxcolors[side] or {10, 8, 26}
		PF.tagText(side, names[side], off + c.x * k, c.y * k, col, align, bc)
	end
	e.t = e.t + 1
	local f = e.fonts[e.font] or {label = '?'}
	-- Do not shadow the box() drawing helper: doing so made this overlay throw
	-- every frame, hiding all controls while movement still appeared to work.
	local boxState = st.tagbox == false and 'OFF' or 'ON'
	box(LW / 2 - 590, LH - 116, LW / 2 + 590, LH - 10, DARK, 210)
	txt(string.format('NAME TAG EDITOR   moving: P%d   font: %s   size: %.2f   box: %s', e.side, f.label,
		tonumber(st.tagsize) or PF.tag.scale, boxState), LW / 2, LH - 84, WHITE, 0.55, 0)
	txt('KEYBOARD   Arrows: move   Tab: P1/P2   F: font   B: box   +/-: size   R: reset   Enter: save   Backspace: cancel',
		LW / 2, LH - 53, WHITE, 0.40, 0)
	txt('CONTROLLER   D-pad: move   A: P1/P2   X: font   Y: box   Z/C: size   Start: save   B: cancel',
		LW / 2, LH - 25, WHITE, 0.43, 0)
end

function PF.tagEditor()
	local st = PF.data.settings
	local saved = {tagpos = st.tagpos, tagfont = st.tagfont, tagsize = st.tagsize, tagbox = st.tagbox, tag = st.tag}
	st.tagpos = {{x = PF.cornerFor(1).x, y = PF.cornerFor(1).y}, {x = PF.cornerFor(2).x, y = PF.cornerFor(2).y}}
	local fl = fontList()
	local fi = 1
	for i, f in ipairs(fl) do if f.path == (st.tagfont or '') then fi = i end end
	PF.editing = {side = 1, t = 0, fonts = fl, font = fi, names = sampleNames()}
	local ok, err = pcall(function()
		if not quickMatchSetup() then error('no fighters or stages to show') end
		loadStart(start.f_buildLoadStartParams({vsscreen = false, victoryscreen = false, winscreen = false, continue = false}))
		while loading() do refresh() end
		game()
	end)
	local done = PF.editing and PF.editing.done
	PF.editing = nil
	pcall(resetRemapInput)
	main.f_default()
	pcall(function()
		bgReset(motif[main.background].BGDef)
		playBgm({source = 'motif.title', interrupt = true})
	end)
	if done == 'save' then
		st.tag = 'corner' -- a placed tag sits where you put it
		PF.save()
	else
		for k, v in pairs(saved) do st[k] = v end
	end
	if not ok then message({'Could not open the editor', tostring(err)}) end
	if resetKey then resetKey() end
end

function PF.manager()
	PF.load()
	while true do
		local items, ids = {}, {}
		for _, p in ipairs(PF.data.profiles) do
			items[#items + 1] = p.name
			ids[#items] = p.id
		end
		items[#items + 1] = '+ NEW PROFILE'
		local iNew = #items
		items[#items + 1] = 'ASK BEFORE CHARACTER SELECT: ' .. (PF.data.settings.ask and 'ON' or 'OFF')
		local iAsk = #items
		items[#items + 1] = 'NAME TAG: ' .. TAGS[PF.data.settings.tag]
		local iTag = #items
		items[#items + 1] = 'NAME TAG LOOK: PLACE, FONT, SIZE, BOX'
		local iEdit = #items
		items[#items + 1] = 'NAME TAG COLORS, ALIGNMENT & PADDING'
		local iAppearance = #items
		items[#items + 1] = 'BACK'
		local c = menuLoop('PROFILES', items)
		if c == nil or c == #items then break end
		if ids[c] then
			PF.manageOne(PF.byId(ids[c]))
		elseif c == iNew then
			local name = PF.enterName(1, 'NEW PROFILE NAME')
			if name then
				local p, err = PF.create(name)
				if not p then message({'Could not make profile', err}) end
			end
		elseif c == iAsk then
			PF.data.settings.ask = not PF.data.settings.ask
			PF.save()
		elseif c == iTag then
			PF.data.settings.tag = TAG_NEXT[PF.data.settings.tag] or 'corner'
			PF.save()
		elseif c == iEdit then
			PF.tagEditor()
		elseif c == iAppearance then
			PF.tagAppearanceMenu()
		end
	end
	if resetKey then resetKey() end
end


-- Add the menu item when the screenpack doesn't already have it: inside the
-- MISSION submenu if there is one (default screenpack), else before OPTIONS.
-- Screenpacks that list it in system.def keep their own placement.
local function addMenuItem(name, label)
	if main == nil or main.f_appendItemname == nil or motif == nil then return end
	local m = motif[main.group] and motif[main.group].menu
	if m == nil or type(m.itemname) ~= 'table' then return end
	if m.itemname.menumission ~= nil then
		main.f_appendItemname(m, 'menumission', name, label, 'back')
	else
		main.f_appendItemname(m, '', name, label, 'options')
	end
end

if main ~= nil and main.t_itemname ~= nil then
	main.t_itemname.profiles = function(t, item)
		return function() PF.manager() end
	end
	addMenuItem('profiles', 'PLAYER PROFILES')
	-- again after all mods have loaded: some (e.g. Trials Mode) reload the
	-- screenpack while loading, which drops items added earlier
	if type(main.f_start) == 'function' then
		local f_start = main.f_start
		main.f_start = function(...)
			pcall(addMenuItem, 'profiles', 'PLAYER PROFILES')
			return f_start(...)
		end
	end
end

-------------------------------------------------------------------------------
-- name tags during fights
-------------------------------------------------------------------------------
PF.tag = {
	-- corner spot in 1280x720 units, measured on a 16:9 fight screen.
	-- Change y if the tag covers part of your screenpack's lifebar.
	corner = {{x = 40, y = 172, align = 1}, {x = 1240, y = 172, align = -1}},
	scale = 0.5,
}
if tostring((motif and motif.def) or ''):lower():find('mmmhd', 1, true) then
	PF.tag.corner[1].y, PF.tag.corner[2].y = 112, 112 -- under the MMMHD portraits
end

-- 4:3 stages are drawn in a narrower box in the middle of the screen
-- (black bars at the sides); the lifebar shrinks with it.
local function fightView()
	local ok, lx, ly = pcall(function()
		return stageVar('stageinfo.localcoord.x'), stageVar('stageinfo.localcoord.y')
	end)
	if ok and type(lx) == 'number' and type(ly) == 'number' and ly > 0 then
		local w = math.min(LW, LH * lx / ly)
		return (LW - w) / 2, w / LW
	end
	return 0, 1
end
local tagTs, tagBg, tagFonts = {}, {}, {}

-- the font a name tag uses: one picked in the tag editor, or the default
local function tagFont()
	local f = PF.data and PF.data.settings.tagfont or ''
	if f == nil or f == '' then fonts() return fBig end
	if tagFonts[f] == nil then
		local ok, fo = pcall(fontNew, f)
		tagFonts[f] = (ok and fo) or false
	end
	if tagFonts[f] == false then fonts() return fBig end
	return tagFonts[f]
end

local function tagScale()
	local v = PF.data and tonumber(PF.data.settings.tagsize) or nil
	return v or PF.tag.scale
end

local function tagAlign(fallback)
	local a = PF.data and PF.data.settings.tagalign
	if a == -1 or a == 0 or a == 1 then return a end
	return fallback or 0
end

local function tagColor(side)
	local t = PF.data and PF.data.settings.tagcolors
	return type(t) == 'table' and t[side] or (side == 2 and P2C or P1C)
end

local function tagBoxColor(side)
	local t = PF.data and PF.data.settings.tagboxcolors
	return type(t) == 'table' and t[side] or {10, 8, 26}
end

local function tagText(i, s, x, y, col, align, boxCol)
	if tagTs[i] == nil then tagTs[i] = textImgNew() tagBg[i] = rectNew() end
	local ts = tagTs[i]
	local sc = tagScale()
	textImgSetFont(ts, tagFont())
	textImgSetLocalcoord(ts, LW, LH)
	textImgSetBank(ts, 0)
	textImgSetAlign(ts, align)
	textImgSetColor(ts, col[1], col[2], col[3])
	textImgSetScale(ts, sc, sc)
	textImgSetText(ts, s)
	textImgSetPos(ts, x, y)
	textImgSetLayerno(ts, LAYER)
	-- dark box behind the name, as wide as the name
	if PF.data == nil or PF.data.settings.tagbox ~= false then
		local w = nil
		local ok, tw = pcall(textImgGetTextWidth, ts, s)
		if ok and type(tw) == 'number' and tw > 0 then w = tw * sc end
		w = w or #s * 26 * sc
		local k = sc / 0.5
		local px = tonumber(PF.data.settings.tagpadx) or 8
		local py = tonumber(PF.data.settings.tagpady) or 14
		local x1 = align == 1 and x - px or (align == -1 and x - w - px or x - w / 2 - px)
		local rc = tagBg[i]
		rectSetLocalcoord(rc, LW, LH)
		rectSetWindow(rc, x1, y - py * k, x1 + w + px * 2, y + math.max(4, py * 0.35) * k)
		local bc = boxCol or {10, 8, 26}
		rectSetColor(rc, bc[1], bc[2], bc[3])
		local alpha = tonumber(PF.data.settings.tagboxalpha) or 170
		rectSetAlpha(rc, alpha, 255 - alpha)
		rectSetLayerno(rc, LAYER)
		rectDraw(rc, LAYER)
	end
	textImgDraw(ts, LAYER)
end
PF.tagText = tagText
PF.fightView = fightView

-- corner spot for a side: the one placed in the tag editor, or the default
local function cornerFor(side)
	local c = PF.tag.corner[side]
	local t = PF.data and PF.data.settings.tagpos
	if type(t) == 'table' and type(t[side]) == 'table' and tonumber(t[side].x) then
		return {x = tonumber(t[side].x), y = tonumber(t[side].y) or c.y, align = c.align}
	end
	return c
end
PF.cornerFor = cornerFor

local function fighterSpot(pn, side)
	local ok, x, y = pcall(function()
		local idx = activeFighter(side)
		if idx == nil then idx = (main and main.coop and pn == 2) and 3 or pn end -- co-op partner is P3
		if not player(idx) then return nil end
		local sw, sh = screenWidth(), screenHeight()
		if not sw or sw <= 0 or not sh or sh <= 0 then return nil end
		local h = (const('size.height') or 60) * 1.9
		return screenPosX() / sw * LW, (screenPosY() - h) / sh * LH
	end)
	if ok and x then return x, y end
	return nil
end

function PF.drawTags()
	if PF.data == nil or PF.data.settings.tag == 'off' then return end
	if main and main.pauseMenuActive then return end
	-- not over the intro dialogue or the after-match screens (victory quote,
	-- win screen, continue, hiscores): those draw their own names/portraits
	if motifState ~= nil then
		for _, k in ipairs({'dialogue', 'victoryscreen', 'winscreen', 'continuescreen', 'hiscore', 'challenger'}) do
			local ok, on = pcall(motifState, k)
			if ok and on then return end
		end
	end
	local side = PF.sideOf()
	local who = PF.active
	if onlineMatch() then who = {true, true} side = {1, 2} end
	for pn, _ in pairs(who) do
		local name = PF.displayName(pn)
		if name ~= '' then
			local teamSide = side[pn]
			local col, boxCol = tagColor(teamSide), tagBoxColor(teamSide)
			if PF.data.settings.tag == 'above' then
				local x, y = fighterSpot(pn, teamSide)
				if x then tagText(pn, name, x, math.max(30, y), col, tagAlign(0), boxCol) end
			else
				local c = cornerFor(teamSide)
				local off, k = fightView()
				-- co-op: second player's tag sits under the first
				local y = (c.y + ((main and main.coop and pn == 2) and 30 or 0)) * k
				tagText(pn, name, off + c.x * k, y, col, tagAlign(c.align), boxCol)
			end
		end
	end
end

-------------------------------------------------------------------------------
-- hooks
-------------------------------------------------------------------------------
PF.load()

local origSelectMode = start and start.f_selectMode
if origSelectMode ~= nil then
	start.f_selectMode = function(...)
		PF.active = {}
		-- Netplay: each PC has its own profile list, but menu inputs are
		-- shared, so the picker could end up on different entries on the two
		-- PCs. Skip it online (everyone plays as a guest for now).
		local online = netPlay ~= nil and netPlay()
		if PF.data.settings.ask and not online then
			if not PF.pick(PF.humans()) then
				for pn = 1, 2 do PF.restoreControls(pn) end
				-- same clean-up the engine does when backing out of character select
				pcall(function()
					bgReset(motif[main.background].BGDef)
					fadeInInit(motif[main.group].fadein.FadeData)
					playBgm({source = 'motif.title', interrupt = true})
				end)
				return
			end
		end
		local r = {origSelectMode(...)}
		-- leaving the mode: everyone back to the normal settings
		for pn, _ in pairs(PF.active) do PF.restoreControls(pn) end
		PF.active = {}
		return unpack(r)
	end
end

local origGame = start and start.f_game
if origGame ~= nil then
	start.f_game = function(...)
		-- after a remap/options change the layouts may have been reset; re-apply
		for pn, _ in pairs(PF.active) do PF.applyControls(pn) end
		local online = onlineMatch()
		local onlineSide = online and ikemenParty.onlineSide() or nil
		local onlineProf = online and PF.byName(ikemenParty.player or '') or nil
		local winner = origGame(...)
		if onlineProf and onlineSide and winner ~= nil and winner ~= -1 then
			-- online: only your own profile, on your side, counted as vs a player
			local last = nil
			pcall(function()
				local gs = getGameStats()
				if gs and gs.Matches then last = gs.Matches[#gs.Matches] end
			end)
			local saved = PF.active
			PF.active = {[onlineSide] = onlineProf.id}
			local sideOf = {[onlineSide] = onlineSide}
			pcall(PF.recordMatch, winner, sideOf, {}, last)
			PF.active = saved
		elseif next(PF.active) ~= nil and winner ~= nil and winner ~= -1 and not start.exit then
			local last = nil
			pcall(function()
				local gs = getGameStats()
				if gs and gs.Matches then last = gs.Matches[#gs.Matches] end
			end)
			PF.recordMatch(winner, PF.sideOf(), main.cpuSide or {}, last)
		end
		if #PF.pendingTitleUnlocks > 0 then pcall(PF.showTitleUnlocks) end
		return winner
	end
end

if hook ~= nil and hook.add ~= nil then
	hook.add('loop', 'profileTags', function()
		if PF.editing then
			local ok, err = pcall(PF.editStep)
			if not ok and not PF.edErr then PF.edErr = true print('[profiles] editor: ' .. tostring(err)) end
		else
			PF.drawTags()
		end
	end)
end

print('Player Profiles ' .. PF.VERSION .. ' loaded')
return PF
