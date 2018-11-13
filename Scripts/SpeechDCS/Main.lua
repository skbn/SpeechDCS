package.path = package.path..";.\\LuaSocket\\?.lua;"
package.cpath = package.cpath..";.\\LuaSocket\\?.dll;"

dofile(lfs.writedir()..[[Scripts\SpeechDCS\Config.lua]])

local Main = {}

local PrevExport = {}
PrevExport.LuaExportStart = LuaExportStart
PrevExport.LuaExportStop = LuaExportStop
PrevExport.LuaExportActivityNextEvent = LuaExportActivityNextEvent

LuaExportStart = function()
	Config.Network:Start()
	
	if PrevExport.LuaExportStart then
		PrevExport.LuaExportStart()
	end
end

LuaExportStop = function()
	Config.Network:Stop()
	
	if PrevExport.LuaExportStop then
		PrevExport.LuaExportStop()
	end
end

function LuaExportActivityNextEvent(currenttime)
    local NextTime = currenttime + Config.Update
	
	local status, err = pcall(function()
		Controller.Step()
	end)
	
    if not status then
        Util.WriteLine("ERROR LuaExportActivityNextEvent: "..err)
    end
	
	if PrevExport.LuaExportActivityNextEvent then
		PrevExport.LuaExportActivityNextEvent(currenttime)
	end
	
	return NextTime
end
