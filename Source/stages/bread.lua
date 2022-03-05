function onCreate()
	-- background shit
	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		-- background
		makeLuaSprite('bg', 'breadbg', -1200, -1500);
		setScrollFactor('bg', 1.2, 1);
	
		-- bopping bread
		makeAnimatedLuaSprite('bb1', 'BSA', -100, -90)
		makeAnimatedLuaSprite('bb2', 'BSA', -800, 200)
		makeAnimatedLuaSprite('bb3', 'BSA', -1000, 300)
	
		luaSpriteAddAnimationByPrefix('bb1', 'BreBop1', 'Bread_Bop_One', 24, false);
		luaSpriteAddAnimationByPrefix('bb2', 'BreBop2', 'Bread_Bop_Two', 24, false);
		luaSpriteAddAnimationByPrefix('bb3', 'BreBop3', 'Bread_Bop_Three', 24, false);
	
		setScrollFactor('bb1', 1.2, 1);
		setScrollFactor('bb2', 1.2, 1);
		setScrollFactor('bb3', 1.2, 1);
	
		-- stand
		makeLuaSprite('stand', 'breadstand', -1200, -1500);
		setScrollFactor('stand', 1, 1);
	
		addLuaSprite('bg', false);
		addLuaSprite('stand', false);
		addLuaSprite('bb1', false);
		addLuaSprite('bb2', false);
		addLuaSprite('bb3', false);
		
	else
		-- low quality background
		makeLuaSprite('bbg_lq', 'bbg_lq', -1200, -1500);
		scaleObject('bbg_lq', 2, 2);
		addLuaSprite('bbg_lq', false);
		
	end
end

function onBeatHit()
			
	objectPlayAnimation('bb1', 'BreBop1', true);
	objectPlayAnimation('bb2', 'BreBop2', true);
	objectPlayAnimation('bb3', 'BreBop3', true);
	
end