function onCreatePost()
	bruh = 10
	makeLuaSprite('Bar', 'Health/what2', 305, 673);
	setScrollFactor('Bar', 0, 0);
	scaleObject('Bar', 1.12, 1.4);
	makeLuaSprite('Health', 'Health/what', 305, 673);
	setScrollFactor('Health', 0, 0);
	scaleObject('Health', 1.12, 1.4);
	makeLuaSprite('HealthL', 'Health/what3', 305, 673);
	setScrollFactor('HealthL', 0, 0);
	scaleObject('HealthL', 1.12, 1.4);
	makeLuaSprite('NHealth', 'Health/what4', 305, 673);
	setScrollFactor('NHealth', 0, 0);
	scaleObject('NHealth', 0, 1.4);
	addLuaSprite('Health', true);
	addLuaSprite('HealthL', true);
	addLuaSprite('NHealth', true);
	addLuaSprite('Bar', true);
    	setObjectCamera('Health', 'game')
	setObjectCamera('HealthL', 'game')
	setObjectCamera('NHealth', 'game')
    	setObjectCamera('Bar', 'game')
--the other cameras go above the icons, and that's (as sonic would say) no good
	setProperty('Health.alpha', 0)
	setProperty('Bar.alpha', 0)
	setProperty('HealthL.alpha', 0)
	setProperty('NHealth.alpha', 0)
	setProperty('NHealth2.alpha', 0)
end

function onUpdate()
	curHealth = getProperty('health');
	if curHealth > 1.8 then
		buh = 2.12 - curHealth
	elseif curHealth > 1.2 then
		buh = 1.62 - curHealth 	
	elseif curHealth < 0.45 then
		buh = 1.14 - curHealth 
	else
		buh = 1.42 - curHealth 
	end
	scaleObject('HealthL', buh, 1.4);
	if enable == 1 then
		if curHealth > bruh then
--so that if going to bruh would kill you, it won't
			if bruh >= 0 then
				setProperty('health', bruh);
			end
		end
		if 0 > curHealth - hurb then	
			setProperty('health', 0);
		end
	end
--this recreates the danger icon thing happening
	brh = curHealth + 0.3
	if brh >= bruh then
		if dadName == 'father' then
			triggerEvent('Change Character', 'dad', 'DANGERfather'); 
--REMINDER: make sure the only difference between father and DANGERfather is the icon
--so it looks seamless
		end
	else
		if dadName == 'DANGERfather' then --to not murder the game
			triggerEvent('Change Character', 'dad', 'father');
		end
--fun fact! this code could also work for winning icons! so feel free to mess with it, you file digger!
	end
	hrb = curHealth - 0.3
	if hrb <= hurb then
		if boyfriendName == 'invis' then
			triggerEvent('Change Character', 'bf', 'DANGERinvis'); 
--REMINDER: make sure the only difference between bf and DANGERbf is the icon
--so it looks seamless
		end
	else
		if boyfriendName == 'DANGERivis' then --to not murder the game
			triggerEvent('Change Character', 'dad', 'invis');
		end
	end
end

function onEvent(name, value1, value2)
	if name == 'Enable Gimmick' then
		setProperty('healthBar.visible', false)
		setProperty('healthBarBG.visible', false)
		setProperty('Health.alpha', 1)
		setProperty('Bar.alpha', 1)
		setProperty('HealthL.alpha', 1)
		setProperty('NHealth.alpha', 1)
		enable = 1
	elseif name == 'Disable Gimmick' then
		setProperty('healthBar.visible', true)
		setProperty('healthBarBG.visible', true)
		setProperty('Health.alpha', 0)
		setProperty('Bar.alpha', 0)
		setProperty('HealthL.alpha', 0)
		setProperty('NHealth.alpha', 0)
		setProperty('NHealth2.alpha', 0)
		enable = 0
		bruh = 2
		hrub = 0
	elseif name == 'Set Max Health' then
--here's the cheatsheet: -0.25 bruh is +0.1 nhealth width
		if enable == 1 then
			--setProperty(bruh, value1)
			--IT WON'T FUCKING WORK AAAAA
			--bruh = value1
			--this is a very shitty implementation, but it functions
			--nah that'd be too much work
			--scaleObject('NHealth', value2, 1.4)
			bruh = value1 + 0 --that plus 0 was needed for it to work  W H A T
			scaleObject('NHealth', value2, 1.4)
		end
	elseif name == 'Set Min Health' then	
		if enable == 1 then
			hurb = value1 + 0 --805 with 0.2 length works... hmm
			if value2 + 0 >= 0.5 then
				dong = 1255 - value2 * 1000
			--elseif value2 < 0.5 then
			else
				dong = 1105 - value2 * 1000
			end
			makeLuaSprite('NHealth2', 'Health/what4', dong, 673);
			setScrollFactor('NHealth2', 0, 0);
			scaleObject('NHealth2', value2, 1.4);
			addLuaSprite('NHealth2', true);
			setObjectCamera('NHealth2', 'game')
			setProperty('NHealth2.alpha', 1)
		end
	end
end
