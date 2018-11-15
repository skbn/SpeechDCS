package.path = package.path..";.\\LuaSocket\\?.lua;"
package.cpath = package.cpath..";.\\LuaSocket\\?.dll;"

dofile(lfs.writedir()..[[Scripts\SpeechDCS\Config.lua]])

local Main = {}

local PrevExport = {}
PrevExport.LuaExportStart = LuaExportStart
PrevExport.LuaExportStop = LuaExportStop
PrevExport.LuaExportBeforeNextFrame = LuaExportBeforeNextFrame
PrevExport.LuaExportActivityNextEvent = LuaExportActivityNextEvent

function LuaExportStart()
	local status, err = pcall(function()	
		Controller.Start()		
	end)
	
    if not status then
        Util.WriteLine("ERROR LuaExportStart: "..err)
    end
	
	if PrevExport.LuaExportStart then
		PrevExport.LuaExportStart()
	end
end

function LuaExportStop()
	local status, err = pcall(function()
		Controller.Stop()
	end)
	
    if not status then
        Util.WriteLine("ERROR LuaExportStop: "..err)
    end
	
	if PrevExport.LuaExportStop then
		PrevExport.LuaExportStop()
	end
end

function LuaExportBeforeNextFrame()
	local status, err = pcall(function()
		Controller.Read()
	end)
	
    if not status then
        Util.WriteLine("ERROR LuaExportBeforeNextFrame: "..err)
    end

	if PrevExport.LuaExportBeforeNextFrame then
		PrevExport.LuaExportBeforeNextFrame()
	end
end

function LuaExportActivityNextEvent(currenttime)
    local NextTime = currenttime + Config.Update
	
	local status, err = pcall(function()
		Controller.Send()
	end)
	
    if not status then
        Util.WriteLine("ERROR LuaExportActivityNextEvent: "..err)
    end
	
	if PrevExport.LuaExportActivityNextEvent then
		PrevExport.LuaExportActivityNextEvent(currenttime)
	end
	
	return NextTime
end
