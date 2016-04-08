require "defines"
 
if remote.interfaces.freeplay then
    script.on_event( defines.events.on_player_created, function( event )
    local i = event.player_index	
	chart_map(i)
end)
end

function chart_map(i)
		local p = game.players[i]
		local f = p.force
		local s = p.surface
		local Chunks_To_Scan = {}
		local settings = s.map_gen_settings.starting_area
		
			if settings == "none" then 
				Chunks_To_Scan = 0
				end
			if settings == "very-small" then 
				Chunks_To_Scan = 3
				end
			if settings == "small" then 
				Chunks_To_Scan = 4
				end
			if settings == "medium" then 
				Chunks_To_Scan = 5
				end
			if settings == "big" then 
				Chunks_To_Scan = 6
				end
			if settings == "very-big" then 
				Chunks_To_Scan = 7
				end

	--	Chunks_To_Scan = 10 
	-- To set a custom scan size, uncomment above and input your own value
		
	local S = Chunks_To_Scan*32
	f.chart(s,{{-S, -S}, {S, S}})
	end
	