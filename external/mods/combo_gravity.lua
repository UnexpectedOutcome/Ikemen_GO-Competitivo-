-- external/mods/combo_gravity.lua
-- Gravedad dinamica y empuje para cortar combos infinitos o abusivos, sin tocar
-- los .cns de los personajes.
--
-- Este script calcula, cada frame y para cada jugador que esta recibiendo un combo,
-- cuanto hay que aumentar su gravedad y su empuje, y se lo pasa al personaje en dos
-- valores de map. Los aplica combo_gravity.zss, que se carga como estado comun para
-- todos los personajes (Lua no puede cambiar velocidades directamente).

local cfg = {
	threshold = 12,       -- golpes 1-12: fisica normal
	gravityStep = 0.15,   -- +15% de gravedad por cada golpe a partir del 13
	pushStep = 0.10,      -- +10% de empuje horizontal por cada golpe a partir del 13
	softCap = 20,         -- a partir de 21 golpes: refuerzo fuerte
	softCapGravity = 1.0, -- +100% de gravedad extra sobre lo anterior
	softCapPush = 0.5,    -- +50% de empuje extra sobre lo anterior
}

local zssFile = 'external/mods/combo_gravity.zss'

-- Registrar el .zss como estado comun (solo en memoria, no se guarda en config.ini)
local common = gameOption('Common') or {}
local states = (common.States and common.States.states) or {}
local found = false
for _, v in ipairs(states) do
	if v:lower():gsub('\\', '/') == zssFile then
		found = true
	end
end
if not found then
	table.insert(states, zssFile)
	modifyGameOption('Common.States', states)
end

local function factors(hits)
	local extra = hits - cfg.threshold
	if extra <= 0 then
		return 1, 1
	end
	local grav = 1 + cfg.gravityStep * extra
	local push = 1 + cfg.pushStep * extra
	if hits > cfg.softCap then
		grav = grav + cfg.softCapGravity
		push = push + cfg.softCapPush
	end
	return grav, push
end

local function update()
	if roundState() ~= 2 then
		return
	end
	for pn = 1, 8 do
		if player(pn) then
			local grav, push = 1, 1
			-- El contador de golpes del combo lo reinicia el motor al terminar el combo,
			-- y fuera de hitstun los valores vuelven a 1
			if moveType() == 'H' and not getHitVar('guarded') then
				grav, push = factors(getHitVar('hitcount') or 0)
			end
			mapSet('_cg_grav', grav)
			mapSet('_cg_push', push)
		end
	end
end

hook.add('loop', 'comboGravity', update)
