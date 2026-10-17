-- external/mods/regeneration.lua

local frameCounter = 0

local function passiveRegen()
    -- Comprobamos que estamos en plena pelea (roundstate == 1)
    if match and roundstate == 1 then
        frameCounter = frameCounter + 1
        
        -- Ajusta este número: 30 frames = se ejecuta cada medio segundo
        if frameCounter >= 30 then
            frameCounter = 0
            
            -- Verificamos de forma segura los slots principales (P1 y P2, y hasta 4 para equipos)
            for i = 1, 4 do
                local p = player and player[i]
                if p and p.life and p.life > 0 then
                    if p.addPower then
                        -- Suma la cantidad de poder deseada (ej. 10 puntos)
                        p:addPower(10)
                    end
                end
            end
        end
    else
        frameCounter = 0
    end
end

-- Registramos el hook en el bucle del juego de Ikemen GO v1.1
hook.add("loop", "passivePowerRegen", passiveRegen)