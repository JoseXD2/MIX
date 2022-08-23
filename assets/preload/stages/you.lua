function onCreate()

        makeLuaSprite('green', 'green', 3600, 550);
	setScrollFactor('PixelBG', 1.3, 1.3);

        makeLuaSprite('run', 'run',3689, 673);
	setScrollFactor('', 1.25, 1.25);
 
        addLuaSprite('green', false);
	addLuaSprite('run', false);

        setProperty('green.visible', true);
        setProperty('run.visible', true);
end
