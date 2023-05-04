---@param message string the message to log
function log(message)

end

---@param command string the command to execute
function execute(command)

end

---@param time number the delay before calling the callback
---@param callback function the functino to be called after the delay
---@param args any the value to pass to the callback
function intime(time, callback, args)

end

---@param min number the minimum of the range
---@param max number the maximum of the range (exclusive)
---@return number generated a random value in the range
function random(min, max)

end

---@param player table one of the players in the match
---@param position table a three value array representing the position to query
---@return string material the material in that location
function getblock(player, position)

end

---@param player table the player to get the position of
---@return table position a three value array representing the position of the player
function getposition(player)

end

---@param player table one of the players in the match
---@param material string the material to check for
---@param positions table an array containing two arrays representing the start and end position
---@return boolean full a boolean representing whether or not the area is completely full of the material
function checkarea(player, material, positions)

end

---@param player table one of the players in the match
---@param scenename string the name of the scene to switch to
function setscene(player, scene)

end
---@param player table one of the players in the match
---@param time number The time to setin ticks
function settime(player, time)

end
---@param player table one of the players in the match
---@param weather string "rain" or "thunder" or "clear"
function setweather(player, weather)

end

---@param player table one of the players in the match
---@param position table a three value array representing the position to set
---@param material string the material to place there
function setblock(player, position, material)

end


x = "on_place"


BBAPI = { log = log, execute = execute, intime = intime, random = random, getblock = getblock,
	getposition = getposition, checkarea=checkarea, setscene=setscene, settime=settime, setweather=setweather, setblock=setblock}
