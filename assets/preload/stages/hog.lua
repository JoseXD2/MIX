function onCreate()

        makeLuaSprite('sc', 'sc', 3870, 173);
	setScrollFactor('ScorchedBG', 1.3, 1.3);

        makeLuaSprite('bg', 'bg',3689, 673);
	setScrollFactor('hog', 1.4, 1.4);
 
        addLuaSprite('sc', false);
	addLuaSprite('bg', false);

        setProperty('sc.visible', true);
        setProperty('bg.visible', true);
end
