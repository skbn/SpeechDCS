--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\Util.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\Math.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\List.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\Stack.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\Queue.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\Command.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\Packet.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\PacketQueue.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\UdpNetwork.lua]])
--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\Controller.lua]])

--dofile(lfs.writedir()..[[Scripts\SpeechDCS\Lib\Mod\Gazelle.lua]])

dofile(lfs.writedir()..[[Scripts\SpeechDCS\SpeechDCS.lib]])

Config = {}
Config.Update = 0.25
Config.Network = UdpNetwork:New(8140, 8141, "127.0.0.1")
