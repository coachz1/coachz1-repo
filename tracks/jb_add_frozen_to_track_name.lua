-- @description Add and Remove Frozen from track name
-- @author coachz
-- @version 0.91
-- @reaper version > 6.1
-- @usage Toggle Adds " ~~Frozen~~" to track name so autocolor can add color indicator


-- @changelog	Initial Release v0.9 (2021-01-07) 


-- clear console
reaper.ShowConsoleMsg("")

-- create simpler console messager
function Msg(param)
	reaper.ShowConsoleMsg(param.."\n")
end

debug  = false	-- disable main messages

--chanR = string.sub(chans, 3, 4)

-- get selected track and name
--tr = reaper.GetSelectedTrack( 0, 0 )
--retval, trackName = reaper.GetTrackName( tr, "" )
--if debug then Msg("--------------------------------------------------")  end
--if debug then Msg("\nSelected Track Name: " .. trackName) end

local num_tracks = reaper.CountSelectedTracks(0)
if num_tracks == 0 then return end

freezeName = " ~~Frozen~~"
--Msg(freezeName)

-- For each selected track
    local curTrack = {}
    for i = 0, num_tracks - 1 do
        
        local curTrack = reaper.GetSelectedTrack(0, i)
        retval, trackName = reaper.GetTrackName( curTrack, "" )
		if debug then Msg("\nSelected Track Name: " .. i .. " is " .. trackName) end

		newTrackName = trackName .. freezeName
		retval, stringNeedBig = reaper.GetSetMediaTrackInfo_String( curTrack, "P_NAME", newTrackName, true ) 
      
        
    end









 