local xx1 = 500 -- this random numbers doest random this xx1 to xx10 lol 
local xx2= 1200 --soooo dont change anything only in this locals
local xx3 = 120
local xx4 = 480
local xx5 = 700 
local xx6 = 300
local xx7 = 0
local xx8 = 500
local xx9 = -800
local xx10 = 90

local Lightning = 1
local Lightning = 2
local Lightning = 3

local i = 'bluelight','purplelight','pinklight' --useless code lol
-- and yes credits to frantastic24 too :)
--u need lightning.png and lightning.xml from Vs Afton if u goona port fourthwall

function onCreate()
  --math.randomseed(os.time());math.random(xx1, xx13))
 math.randomseed(curStep * 1) --dont mind this things lol
    makeAnimatedLuaSprite('bluelight', 'scott/lightning', 0, 0)
    scaleObject('bluelight', 1.7, 1.7)
    addAnimationByPrefix('bluelight', 'spawn', 'blue', 24, false)
    addAnimationByPrefix('bluelight', 'spawn1', 'purple', 24, false)
    addAnimationByPrefix('bluelight', 'spawn2', 'pink', 24, false)
    
    
end


function onEvent(name, value1, value2)
	if name == 'Lightning Timer' then
		if value1 == '100' then
     function onBeatHit()
		    if curBeat % 100 == 0 then
                if Lightning then
		     Lightning = getRandomInt(1, 3)
		if Lightning == 1 then
			objectPlayAnimation('bluelight','spawn', true)
		elseif Lightning == 2 then
			objectPlayAnimation('bluelight','spawn1', true)
		elseif Lightning == 3 then
			objectPlayAnimation('bluelight','spawn2', true)
		end
    end
          runTimer('stop', 0.5);
		  addLuaSprite('bluelight', false)
          math.randomseed(curStep * 1)
                
                setProperty('bluelight.x', math.random(xx1, xx10))
              end
          end
		elseif value1 == '1' then
             if curBeat % 1 == 0 then
      function onBeatHit()
  --   math.randomseed(Lightning * 0) >:( ruined
          if Lightning then
		     Lightning = getRandomInt(1, 3)
		if Lightning == 1 then
			objectPlayAnimation('bluelight','spawn', true)
		elseif Lightning == 2 then
			objectPlayAnimation('bluelight','spawn1', true)
		elseif Lightning == 3 then
			objectPlayAnimation('bluelight','spawn2', true)
		end
    end
          math.randomseed(curStep * 1)
          runTimer('stop', 0.5);
		  addLuaSprite('bluelight', false)
                setProperty('bluelight.x', math.random(xx1, xx10))
                 end
             end
         elseif value1 == '2' then
      function onBeatHit()
             if curBeat % 2 == 0 then --my goodness pls forgive me stolen code :( IDK HOW TO RANDOM PLAY ANIM
        --math.randomseed(Lightning * 0) useless code omfg
          if Lightning then
		     Lightning = getRandomInt(1, 3)
		if Lightning == 1 then
			objectPlayAnimation('bluelight','spawn', true)
		elseif Lightning == 2 then
			objectPlayAnimation('bluelight','spawn1', true)
		elseif Lightning == 3 then
			objectPlayAnimation('bluelight','spawn2', true)
		end
    end
            runTimer('stop', 0.5);
		   addLuaSprite('bluelight', false)
            math.randomseed(curStep * 1)
                setProperty('bluelight.x', math.random(xx1, xx10))
                end
            end
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'stop' then
		removeLuaSprite('bluelight', false)
    end
end --i hate end end end end too may EDDDD