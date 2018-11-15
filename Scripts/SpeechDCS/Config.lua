dofile(lfs.writedir()..[[Scripts\SpeechDCS\SpeechDCS.lib]])

Config = {}
Config.Update = 0.25
Config.Network = UdpNetwork:New(8140, 8141, "127.0.0.1")
