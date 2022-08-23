function onCreatePost()
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('boyfriend.stunned', true)
end

function onStepHit()
	if getProperty('curBeat') >= 32 then
		setProperty('healthBar.visible', true)
		setProperty('healthBarBG.visible', true)
		setProperty('iconP1.visible', true)
		setProperty('iconP2.visible', true)
		setProperty('scoreTxt.visible', true)
		setProperty('timeTxt.visible', true)
		setProperty('boyfriend.stunned', false)
		close(true)
	end
end