function onCreate()
   makeLuaSprite('frost','mountain/bg', 0, 0)
   scaleObject('frost', 1.6, 1.6)
   makeLuaSprite('frost2','mountain/bg ref', 0, 0)
   scaleObject('frost2', 0.8, 0.8)
   addLuaSprite('frost2',false);
   addLuaSprite('frost',false);
end