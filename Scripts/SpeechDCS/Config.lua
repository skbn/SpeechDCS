dofile(lfs.writedir()..[[Scripts\SpeechDCS\SpeechDCS.lib]])

Util.LogFile = io.open(lfs.writedir()..[[Logs\SpeechDCS.log]], "w")
Util.Socket = require("socket")

Config = {}
Config.Update = 0.25
Config.Network = UdpNetwork:New(8140, "127.0.0.1", 8141)
