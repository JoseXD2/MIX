

function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-pixel-dead'); --Character json file for the death animation
	--setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel'); --put in mods/sounds/

	if (songName == 'Spine-Crusher') then
		suff = '';
	elseif (songName == 'Mas-fuerte-que-tu' or songName == 'Megalovania') then
		suff = '-night';
	end

	makeLuaSprite('sky', 'stage/'..suff, 4935, 1842);
	setProperty('sky.scale.x', 1);
	setProperty('sky.scale.y', 1);
	setProperty('sky.antialiasing', false);
	setScrollFactor('sky', 1.3, 9.0);

	makeLuaSprite('city', 'stage/'..suff, 4316, 922);
	setProperty('city.scale.x', 1);
	setProperty('city.scale.y', 1);
	setProperty('city.antialiasing', false);
	setScrollFactor('city', 1.1, 3.0);

	makeLuaSprite('tree_b', 'stage/'..suff, 3146, 873);
	setProperty('tree_b.scale.x', 1);
	setProperty('tree_b.scale.y', 1);
	setProperty('tree_b.antialiasing', false);
	setScrollFactor('tree_b', 0.8, 4.5);

	makeLuaSprite('tree_a', 'stage/'..suff, 1178, 506);
	setProperty('tree_a.scale.x', 1);
	setProperty('tree_a.scale.y', 1);
	setProperty('tree_a.antialiasing', false);
	setScrollFactor('tree_a', 0.1, 1.5);

	makeLuaSprite('gr', 'bg'..suff, 3889, 773);
	setProperty('gr.scale.x', 1.25);
	setProperty('gr.scale.y', 1.25);
	setProperty('gr.antialiasing', false);

	addLuaSprite('sky', false);
	addLuaSprite('city', false);
	addLuaSprite('tree_b', false);
	addLuaSprite('tree_a', false);
	addLuaSprite('gr', true);

	--bullSpawn('boneV3', 0, 0, 0, 0, 0.01, 20);

	--[[
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
	]]
end

function onUpdate(elapsed)
	local dget = 'dad.animation.curAnim'
	if (getProperty(dget..'.name') == 'idle' and getProperty(dget..'.finished')) then
		setProperty(dget..'.curFrame', 0);
		setProperty(dget..'.finished', false);
	end
end