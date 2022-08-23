local Gradient = 1
local Gradient = 2
local Gradient = 3

--these thing is frantastic24 code thank you :'D
function onCreate()
  if flashingLights == true then

    makeLuaSprite('gradient1','scott/grad1');
    setProperty('gradient1.alpha', 0)
    setObjectCamera('gradient1', 'hud');
    setBlendMode('gradient1', 'add')
    
    makeLuaSprite('gradient2','scott/grad2');
    setObjectCamera('gradient2', 'hud')
    setProperty('gradient2.alpha', 0)
    setBlendMode('gradient2', 'add')
    
    makeLuaSprite('gradient3','scott/grad3');
    setObjectCamera('gradient3', 'hud')
    setProperty('gradient3.alpha', 0);   
    setBlendMode('gradient3', 'add')
    end

  if flashingLights == true then
      addLuaSprite('gradient1', true)
      addLuaSprite('gradient2', true)
      addLuaSprite('gradient3', true)
    end
end 

function onEvent(name, value1, value2)
	if name == 'Gradient' then
		if value1 == '1' then
     function onBeatHit()
       if curBeat % 1 == 0 then
    math.randomseed(curStep * 1)
	      if Gradient then
		Gradient = getRandomInt(1, 3)
		if Gradient == 1 then
			doTweenAlpha('dient1', 'gradient1', 0, 0.4, 'linear')
            setProperty('gradient1.alpha', 0.8)
		elseif Gradient == 2 then
			doTweenAlpha('dient2', 'gradient2', 0, 0.4, 'linear')
            setProperty('gradient2.alpha', 0.8)
		elseif Gradient == 3 then
			doTweenAlpha('dient3', 'gradient3', 0, 0.4, 'linear')
            setProperty('gradient3.alpha', 0.8)
		        end
	        end
        end
    end
end
   elseif value1 == '2' then
      function onBeatHit()
       if curBeat % 2 == 0 then
  math.randomseed(curStep * 1)
	      if Gradient then
		Gradient = getRandomInt(1, 3)
		if Gradient == 1 then
			doTweenAlpha('dient4', 'gradient1', 0, 0.4, 'linear')
            setProperty('gradient1.alpha', 0.8)
		elseif Gradient == 2 then
			doTweenAlpha('dient5', 'gradient2', 0, 0.4, 'linear')
            setProperty('gradient2.alpha', 0.8)
		elseif Gradient == 3 then
			doTweenAlpha('dient5', 'gradient3', 0, 0.4, 'linear')
            setProperty('gradient3.alpha', 0.8)
		            end
	            end
            end
        end
    end
end