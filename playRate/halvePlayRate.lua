--[[
 * ReaScript Name: Set master playrate to 70%
 * Author: Henri Augusto
 * Author URI: https://github.com/HenriAugusto
 * Repository: GitHub > Henri AUgusto > REASCRIPTS
 * Repository URI: https://github.com/HenriAugusto/REASCRIPTS
 * Licence: GPL v3
 * REAPER: 5..5
 * Version: 1.0
--]]

reaper.Undo_BeginBlock()

local pr = reaper.Master_GetPlayRate(0)

reaper.CSurf_OnPlayRateChange( pr/2 )

reaper.Undo_EndBlock( "Halved play rate. from " .. pr .. " to " .. pr/2, -1 )
