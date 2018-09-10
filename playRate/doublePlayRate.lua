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

reaper.CSurf_OnPlayRateChange( 2*pr )

reaper.Undo_EndBlock( "Doubled play rate. from " .. pr .. " to " .. 2*pr, -1 )
