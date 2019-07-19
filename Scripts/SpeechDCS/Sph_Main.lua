package.path = package.path..";.\\LuaSocket\\?.lua;"
package.cpath = package.cpath..";.\\LuaSocket\\?.dll;"

dofile(lfs.writedir()..[[Scripts\SpeechDCS\Sph_Config.lua]])

local Sph_PrevExport = {}
Sph_PrevExport.LuaExportStart = LuaExportStart
Sph_PrevExport.LuaExportStop = LuaExportStop
Sph_PrevExport.LuaExportActivityNextEvent = LuaExportActivityNextEvent

function LuaExportStart()
	local status, err = pcall(function()	
		Sph_Controller.Start()	
	end)
	
    if not status then
        Sph_Util.WriteLine("ERROR LuaExportStart: "..err)
    end
	
	if Sph_PrevExport.LuaExportStart then
		Sph_PrevExport.LuaExportStart()
	end
end

function LuaExportStop()
	local status, err = pcall(function()
		Sph_Controller.Stop()
	end)
	
    if not status then
        Sph_Util.WriteLine("ERROR LuaExportStop: "..err)
    end
	
	if Sph_PrevExport.LuaExportStop then
		Sph_PrevExport.LuaExportStop()
	end
end

function LuaExportActivityNextEvent(currenttime)
    local NextTime = currenttime + Sph_Config.Update
	
	local status, err = pcall(function()
		Sph_Controller.Step()
	end)
	
    if not status then
        Sph_Util.WriteLine("ERROR LuaExportActivityNextEvent: "..err)
    end
	
	if Sph_PrevExport.LuaExportActivityNextEvent then
		Sph_PrevExport.LuaExportActivityNextEvent(currenttime)
	end
	
	return NextTime
end
