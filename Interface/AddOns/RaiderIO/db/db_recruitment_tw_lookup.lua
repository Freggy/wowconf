--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2022-11-17T19:18:02Z",numCharacters=15463,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 24
F = function() provider.lookup[1] = "?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13?\13" end F()

F = nil
RaiderIO.AddProvider(provider)
