--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",date="2022-11-17T19:18:02Z",numCharacters=15463,db={}}
local F

F = function() provider.db["暗影之月"]={0,"Acinduction","Virgil","冬瓜茶","娜雅妮","小喵德","御煌","馬來糕"} end F()
F = function() provider.db["語風"]={14,"Gnomeblood","Gnomebrew","李知恩親手","那芙"} end F()
F = function() provider.db["眾星之子"]={22,"Gnomefaker"} end F()

F = nil
RaiderIO.AddProvider(provider)
