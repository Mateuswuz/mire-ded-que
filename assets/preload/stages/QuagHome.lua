function onCreate()

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('QuagHose2', 'backgrounds/QuagHose2', -700, -850); 
		setScrollFactor('QuagHose2', 1.0, 1.0);
		scaleObject('QuagHose2', 1.0, 1.0);
	end

	addLuaSprite('QuagHose2', false);
	
	close(true);
end