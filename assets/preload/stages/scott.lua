local xx1 = 120
local xx2= 1130
local xx3 = -720
local xx4 = 392
local xx5 = -1120
local xx6 = 992
local xx7 = 720
local xx8 = -392
local xx9 = -1203
local xx10 = 500
local xx11 = 670

function onCreate()
  if flashingLights == false then
--  math.randomseed(os.time());
 --   makeAnimatedLuaSprite('bluelight', 'scott/lightning', math.random(xx1, xx11))
   -- addAnimationByPrefix('bluelight', 'spawn', 'blue', 24, false)
  --  addLuaSprite('bluelight', false)
 --   scaleObject('bluelight', 1.7, 1.7)
    
    makeLuaSprite('nopauses','scott/nopause', -110,440);
    setObjectCamera('camHUD')
    scaleObject('nopauses', 1.5, 1.5)
    setProperty('nopauses.alpha', 0)
    
    makeLuaSprite('cawthon','scott/Scott_Cawthon', 330,550);
    setObjectCamera('camHUD')
    scaleObject('cawthon', 0.3, 0.3)
    setProperty('cawthon.alpha', 0)
    
    makeLuaSprite('gradient4','scott/gradient')
    setObjectCamera('gradient4', 'game');
    
    addLuaSprite('nopauses', true)
    addLuaSprite('cawthon', true)
    addLuaSprite('gradient4', false)
    end

  if flashingLights == true then

    makeLuaSprite('gradient','scott/grad4')
    setObjectCamera('gradient', 'hud');
    setProperty('gradient.alpha', 0)
    setBlendMode('gradient', 'add')
    end
 
 if flashingLights == true then
   addLuaSprite('gradient', true)
    end
end

function onBeatHit()
     if curBeat % 2 == 0 and curStep > 1 and curStep < 180 then
      -- doTweenAlpha('dient', 'gradient1', 0, 0.4, 'linear')
      -- setProperty('gradient1.alpha', 1)
         triggerEvent('Gradient', 2)
    end

     if curBeat % 2 == 0 and curStep > 180 then
      -- doTweenAlpha('dient', 'gradient1', 0, 0.4, 'linear')
      -- setProperty('gradient1.alpha', 1)
         triggerEvent('Gradient', 2)
    end
     
    if curBeat % 1 == 0 and curStep > 187 and curStep < 576 then
        doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     
     if curBeat % 1 == 0 and curStep > 701 and curStep < 959 then
        doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     
     if curBeat % 1 == 0 and curStep > 1216 and curStep < 1472 then
        doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
end

function onStepHit()
     if curStep == 995 then
       doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1003 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1029 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1037 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1045 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1053 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1061 then
     doTweenAlpha('dient0', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1069 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 1077 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 1081 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 1085 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 1123 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1131 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1157 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 1165 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 1173 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
     if curStep == 1181 then
     doTweenAlpha('dient0', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 1189 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 1197 then
     doTweenAlpha('dient1', 'gradient', 0, 0.4, 'linear')
        setProperty('gradient.alpha', 1)
    end
      if curStep == 6 then
         doTweenAlpha('pause', 'nopauses', 1, 0.5, 'linear')
         doTweenAlpha('scot', 'cawthon', 1, 0.5, 'linear')
    end
     
     if curStep == 9 then
        playSound('confirmMenu', 1)
    end
     
     if curStep == 53 then
       --  doTweenAlpha('pause', 'nopauses', 0, 0.5, 'linear')
       --  doTweenAlpha('scot', 'cawthon', 0, 0.5, 'linear')
         doTweenX('scot','cawthon', 280, 0.5, 'linear')
    end
      if curStep == 63 then
         doTweenX('scot','cawthon', 2280, 0.4, 'linear')
    end
      if curStep == 65 then
       --  doTweenAlpha('pause', 'nopauses', 0, 0.5, 'linear')
       --  doTweenAlpha('scot', 'cawthon', 0, 0.5, 'linear')
         doTweenX('scot','nopauses', -160, 0.4, 'linear')
    end
      if curStep == 73 then
         doTweenX('scot','nopauses', 2280, 0.2, 'linear')
    end
end