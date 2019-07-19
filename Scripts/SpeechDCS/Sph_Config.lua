dofile(lfs.writedir()..[[Scripts\SpeechDCS\SpeechDCS.lib]])

Sph_Config = {}
Sph_Config.Update = 0.25
Sph_Config.Network = Sph_UdpNetwork:New(8140, 8141, "127.0.0.1")
