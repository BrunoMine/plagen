--
-- Mod PlaGen
--
-- Inicializador de scripts Lua
--

-- Notificador de Inicializador
local notificar = function(msg)
	if minetest.setting_get("log_mods") then
		minetest.debug("[PLAGEN]"..msg)
	end
end

local modpath = minetest.get_modpath("plagen")

-- Variavel global
plagen = {}

-- Carregar scripts
notificar("Carregando scripts...")
dofile(modpath.."/planificador.lua")
dofile(modpath.."/nodes.lua")
notificar("OK")
