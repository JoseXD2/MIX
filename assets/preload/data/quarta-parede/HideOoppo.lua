local xx1 = 290
local xx2= -400
local xx3 = -1220
local xx4 = -1480
local xx5 = -1100
local xx6 = -750
local xx7 = -200
local xx8 = -500
local xx9 = -100
local xx10 = 190

local i = 'bluelight','purplelight','pinklight'

--function onCreate()
 -- math.randomseed(os.time());math.random(xx1, xx13))
-- math.randomseed(curStep * 1) --dont mind this things lol
   -- makeAnimatedLuaSprite('bluelight', 'scott/lightning', 0, 0)
  --  scaleObject('bluelight', 1.7, 1.7)
 --   addAnimationByPrefix('bluelight', 'spawn', 'blue', 24, false)
  --  addAnimationByPrefix('purplelight', 'spawn', 'purple', 24, false)
  --  addAnimationByPrefix('pinklight', 'spawn', 'pink', 24, false)
    
    
--end

function onUpdate(elapsed)
       noteTweenAlpha('oppo0', 0, 0, 0.001, 'linear')
        noteTweenAlpha('oppo1', 1, 0, 0.001, 'linear')
        noteTweenAlpha('oppo2', 2, 0, 0.001, 'linear')
        noteTweenAlpha('oppo3', 3, 0, 0.001, 'linear')
        setProperty('mcontrols.alpha', 0)
       setProperty('mcontrols.scale.x', 0)
end

function onStepHit()
    if curStep == 1 then
         addLuaSprite('bluelight', false)
         triggerEvent('Lightning Timer', 2)
    end
end

--why iconSpin; lol idk why im lazy to rename staff
--Why unused? i did it on event its too hard to do btw someone helped me doing this :) check the credits
--[[function onEvent(n,v1,v2)
	if n == "IconSpin" then
		runTimer('tweenstop', 0.5);
		addLuaSprite('bluelight', false)
        --objectPlayAnimation('bluelight', 'spawn', true)
	end
end]]

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tweenstop' then
		removeLuaSprite('bluelight', false)
    end
end

function onStepHit()
    if curStep == 1 then
         triggerEvent('Lightning Timer', 2)
    end
end

--[[function onBeatHit()
    if curBeat % 2 == 0 and curStep > 1 and curStep < 180 then
   math.randomseed(curStep * 2)
       triggerEvent('IconSpin', 'n', 'v1', 'v2')
       setProperty('bluelight.x', math.random(xx1, xx10))
    end
    
    if curBeat % 1 == 0 and curStep > 187 and curStep < 576 then    
   math.randomseed(curStep * 1)
       triggerEvent('IconSpin', 'n', 'v1', 'v2')
       setProperty('bluelight.x', math.random(xx1, xx10))
    end
    
    if curBeat % 2 == 0 and curStep > 576 and curStep < 702 then
    math.randomseed(curStep * 1)
       triggerEvent('IconSpin', 'n', 'v1', 'v2')
       setProperty('bluelight.x', math.random(xx1, xx10))
    end

     if curBeat % 1 == 0 and curStep > 702 and curStep < 959 then    
   math.randomseed(curStep * 1)
       triggerEvent('IconSpin', 'n', 'v1', 'v2')
       setProperty('bluelight.x', math.random(xx1, xx10))
    end
     
     if curBeat % 1 == 0 and curStep > 1216 and curStep < 1472 then
   math.randomseed(curStep * 1)
       triggerEvent('IconSpin', 'n', 'v1', 'v2')
       setProperty('bluelight.x', math.random(xx1, xx10))
    end
     
     if curBeat % 2 == 0 and curStep > 960 and curStep < 1216 then    
   math.randomseed(curStep * 1)
       triggerEvent('IconSpin', 'n', 'v1', 'v2')
       setProperty('bluelight.x', math.random(xx1, xx10))
    end
      
      if curBeat % 2 == 0 and curStep > 1472 and curStep < 1600 then    
   math.randomseed(curStep * 1)
       triggerEvent('IconSpin', 'n', 'v1', 'v2')
       setProperty('bluelight.x', math.random(xx1, xx10))
    end
end--]]