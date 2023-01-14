local Nps = 0
local NoteHit = false;
function onStepHit()
    if NoteHit == true then
        Nps = Nps - 2 * 4 -- math is funny
    end    
end
local Hudtype = 'KadeEngine'
osuSkin = 'Miyuki' --osu! hudtype only also leave blank to revert back to default osu layout
--Skin list:
--rem
--PinknAqua x CrewK
--Lyldefu
--Kizuna Akari
--Sylveon
--Miyuki
--Sakuya
--Chloe
--Reshiramu
--Hudtypes list:
--Custom(deafault)
--KadeEngine
--ForeverEngine
--VixtinEngine
--Vanilla
--MicdUp
--FPSPlus
--ModdingPlus
--osu!
--DikeEngine
--HealthEngine
--Roblox FNF Hudtypes:
--FNR
function onCreate()
	if Hudtype == 'osu!' then
	setPropertyFromClass('ClientPrefs','middleScroll', true)
end
end
function onCreatePost()
	if Hudtype == 'HealthEngine' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)

	makeLuaText('healthscore','Score: 0 | Misses: 0',0,0,0)
	setProperty('healthscore.x',getProperty('scoreTxt.x'))
	setProperty('healthscore.y',getProperty('scoreTxt.y'))
	setTextWidth('healthscore',getTextWidth('scoreTxt'))
	setTextSize('healthscore', 18)
	setTextAlignment('healthscore','CENTER')
	addLuaText('healthscore')

	makeLuaText('healthsong',songName..' - '..string.upper(difficultyName),0,10,700)
	addLuaText('healthsong')
end

	if Hudtype == 'DikeEngine' then
	local ver = 'v'..version
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)

	makeLuaText('dikeinfo','Psych Engine | '..ver..' | '..songName..' - '..difficultyName..' | '..week,0,20,0)
	setTextSize('dikeinfo', 16)
	setProperty('dikeinfo.y',getProperty('scoreTxt.y'))
	addLuaText('dikeinfo')
	
	makeLuaText('dikescore','Score:0 | Misses:0 | FC',0,0,0)
	setProperty('dikescore.y',getProperty('scoreTxt.y'))
	setProperty('dikescore.x',getProperty('scoreTxt.x'))
	setTextWidth('dikescore',getTextWidth('scoreTxt'))
	setTextAlignment('dikescore','CENTER')
	setTextSize('dikescore', 16)
	addLuaText('dikescore')

	makeLuaText('combo','Combo: ',0,20,340)
	setTextSize('combo', 21)
	addLuaText('combo')

	makeLuaText('sick','Sicks:',0,20,360)
	setTextSize('sick', 21)
	addLuaText('sick')

	makeLuaText('bad','Bads:',0,20, 380)
	setTextSize('bad',21)
	addLuaText('bad')

	makeLuaText('shit','Shits:',0,20, 400)
	setTextSize('shit',21)
	addLuaText('shit')

	
	for i = 0, getProperty('opponentStrums.length')-1 do
	setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_DIKE');

	for i = 0, getProperty('playerStrums.length')-1 do
	setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets_DIKE');
end
end
end
	if Hudtype == 'osu!' and osuSkin == 'Reshiramu' then
	makeLuaSprite('left','Reshiramu Skin/stageleft',-70,0)
	scaleObject('left', 0.95, 0.95)
	setObjectCamera('left','hud')
	setObjectOrder('left', 6)

	makeLuaSprite('right','Reshiramu Skin/stageright',840,0)
	scaleObject('right', 0.95, 0.95)
	setObjectCamera('right','hud')
	setObjectOrder('right', 6)

	addLuaSprite('left', true)
	addLuaSprite('right', true)
end

	if Hudtype == 'osu!' and osuSkin == 'Chloe' then
	makeLuaSprite('left','#SakamataChloe# Skin/stageleft',-90,15)
	scaleObject('left', 0.915, 0.915)
	setObjectCamera('left','hud')
	setObjectOrder('left', 0)

	addLuaSprite('left', true)
end

	if Hudtype == 'osu!' and osuSkin == 'Sakuya' then
	makeLuaSprite('left','Izayoi Sakuya Skin/stageleft',0,-50)
	scaleObject('left', 0.8, 0.8)
	setObjectCamera('left','hud')
	setObjectOrder('left', 0)

	makeLuaSprite('right','Izayoi Sakuya Skin/stageright',870,30)
	scaleObject('right', 0.8, 0.8)
	setObjectCamera('right','hud')
	setObjectOrder('right', 0)

	addLuaSprite('left', true)
	addLuaSprite('right', true)
end

	if Hudtype == 'osu!' and osuSkin == 'Miyuki' then
	makeLuaSprite('left','Miyuki Skin/stageleft',-45,0)
	scaleObject('left', 0.95, 0.95)
	setObjectCamera('left','hud')
	setObjectOrder('left', 6)

	makeLuaSprite('right','Miyuki Skin/stageright',870,0)
	scaleObject('right', 0.95, 0.95)
	setObjectCamera('right','hud')
	setObjectOrder('right', 6)

	addLuaSprite('left', true)
	addLuaSprite('right', true)
end

	if Hudtype == 'osu!' and osuSkin == 'Sylveon' then
	makeLuaSprite('left','- # Sylveon # - Skin/stageleft',-50,0)
	scaleObject('left', 0.95, 0.95)
	setObjectCamera('left','hud')
	setObjectOrder('left', 6)

	makeLuaSprite('right','- # Sylveon # - Skin/stageright',830,0)
	scaleObject('right', 0.95, 0.95)
	setObjectCamera('right','hud')
	setObjectOrder('right', 6)

	addLuaSprite('left', true)
	addLuaSprite('right', true)
end

	if Hudtype == 'osu!' and osuSkin == 'Kizuna Akari' then
	makeLuaSprite('left','Kizuna Akari Skin/stageleft',165,0)
	scaleObject('left', 0.95, 0.95)
	setObjectCamera('left','hud')
	setObjectOrder('left', 6)

	makeLuaSprite('right','Kizuna Akari Skin/stageright',860,0)
	scaleObject('right', 0.95, 0.95)
	setObjectCamera('right','hud')
	setObjectOrder('right', 6)

	addLuaSprite('left', true)
	addLuaSprite('right', true)
end

	if Hudtype == 'osu!' and osuSkin == 'Lyldefu' then
	makeLuaSprite('left','#Lyldefu Skin/stageleft',-90,0)
	scaleObject('left', 0.95, 0.95)
	setObjectCamera('left','hud')
	setObjectOrder('left', 6)

	makeLuaSprite('right','#Lyldefu Skin/stageright',850,0)
	scaleObject('right', 0.94, 0.94)
	setObjectCamera('right','hud')
	setObjectOrder('right', 6)

	addLuaSprite('left', true)
	addLuaSprite('right', true)
	setProperty('osuacc.x', 900)
end
	if Hudtype == 'osu!' and osuSkin == 'PinknAqua x CrewK' then
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)

	makeLuaSprite('mania-stage-left','PinknAqua Skin/mania-stage-left',-150,0)
	scaleObject('mania-stage-left', 0.95, 0.95)
	setObjectCamera('mania-stage-left','hud')
	setObjectOrder('mania-stage-left', 6)

	makeLuaSprite('border','PinknAqua Skin/rightBorder',300,0)
	scaleObject('border', 0.95, 0.95)
	setObjectCamera('border','hud')
	setObjectOrder('border', 6)

	addLuaSprite('mania-stage-left', true)
	addLuaSprite('border', true)
end

	if Hudtype == 'osu!' and osuSkin == 'rem' then
	makeLuaSprite('rem','rem skin stuff/rem',-160,0)
	scaleObject('rem', 1, 1)
	setObjectCamera('rem','hud')
	setObjectOrder('rem', 6)

	makeLuaSprite('stageRight','rem skin stuff/stageRight',860,0)
	setObjectCamera('stageRight','hud')
	setObjectOrder('stageRight', 6)

	makeLuaSprite('bg','rem skin stuff/scorebar-bg',660, -30)
	scaleObject('bg', 0.7, 0.7)
	setProperty('bg.angle', -90)
	setObjectCamera('bg','hud')
	setObjectOrder('bg', 6)

	addLuaSprite('rem', true)
	addLuaSprite('stageRight', true)
	addLuaSprite('bg', true)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
end
	if Hudtype == 'osu!' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible',false)
	setProperty('iconP2.visible',false)
	setProperty('healthBar.angle', 90)
	setProperty('healthBar.x', 570)
	setProperty('healthBar.y', 415)
	setTextString('botplayTxt','AUTOPLAY')
	addLuaScript('combo burst/combo burst.lua')

	makeLuaText('osuscore','0',0,1100,10)
	setTextAlignment('osuscore','CENTER')
	setTextSize('osuscore', 25)
	addLuaText('osuscore')

	makeLuaText('osuacc','100%',0,0,40)
	setProperty('osuacc.x', 1100)
	setTextAlignment('osuacc','RIGHT')
	setTextSize('osuacc', 25)
	addLuaText('osuacc')

	makeLuaSprite('underlay','',410,0)
	makeGraphic('underlay',450,900,'000000')
	setObjectCamera('underlay','hud')
	addLuaSprite('underlay',false)

	makeLuaSprite('bgdim','',0,0)
	makeGraphic('bgdim',1280,1000,'000000')
	setProperty('bgdim.alpha', 0)
	setObjectCamera('bgdim','hud')
	setObjectOrder('bgdim', 0)
	addLuaSprite('bgdim',false)

	makeLuaText('osucombo','',0,610,100)
	setTextSize('osucombo', 30)
	setObjectCamera('osucombo','hud')
	setObjectOrder('osucombo',getObjectOrder('iconP1'))
	addLuaText('osucombo')

	if downscroll then
	for i=0, 3 do
	setPropertyFromGroup('opponentStrums',i,'y',550)
	setPropertyFromGroup('playerStrums',i,'y',550)

	if osuSkin == 'Kizuna Akari' then
	setProperty('healthBar.x', 585)
	elseif osuSkin == 'Lyldefu' then
	setProperty('osuacc.x', 920)
	setProperty('osuacc.y', 50)
	elseif osuSkin == 'Miyuki' then
	setProperty('osuscore.x', 1150)
	setProperty('osuscore.y', 5)
	setProperty('osuacc.x', 300)
	setTextSize('osuacc', 20)
	makeLuaText('sick','Sicks!:',0,1150,340)
	setTextSize('sick', 18)
	addLuaText('sick')
	makeLuaText('good','Goods!:',0,1150, 360)
	setTextSize('good',18)
	addLuaText('good')
	makeLuaText('bad','Bads:',0,1150, 380)
	setTextSize('bad',18)
	addLuaText('bad')
	makeLuaText('shit','Shits:',0,1150, 400)
	setTextSize('shit',18)
	addLuaText('shit')
	elseif osuSkin == 'Sakuya' then
	setProperty('osuacc.x', 330)
	elseif osuSkin == 'Chloe' then
	setProperty('osuacc.x', 330)
	elseif osuSkin == 'Reshiramu' then
	setProperty('osuscore.x', 1150)
	setProperty('osuscore.y', 5)
	setProperty('osuacc.x', 305)
	setTextSize('osuacc', 20)
	makeLuaText('sick','Sicks!:',0,1150,340)
	setTextSize('sick', 18)
	addLuaText('sick')
	makeLuaText('good','Goods!:',0,1150, 360)
	setTextSize('good',18)
	addLuaText('good')
	makeLuaText('bad','Bads:',0,1150, 380)
	setTextSize('bad',18)
	addLuaText('bad')
	makeLuaText('shit','Shits:',0,1150, 400)
	setTextSize('shit',18)
	addLuaText('shit')
end
end
end
end
	if Hudtype == 'ModdingPlus' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', true)
    	setProperty('timeBar.visible', true)
   	setProperty('timeTxt.visible', true)

	makeLuaText('modplus','Score: 0 | Combo Breaks: 0 | Accuracy: 0 % | N/A',0,0,0)
	setProperty('modplus.x',getProperty('scoreTxt.x'))
	setProperty('modplus.y',getProperty('scoreTxt.y'))
	setTextWidth('modplus',getTextWidth('scoreTxt'))
	setTextSize('modplus', 21)
	setTextAlignment('modplus','CENTER')
	setTextBorder('modplus', 1,'000001')
	addLuaText('modplus')

	makeLuaText('watermark','',0,3,690)
	setTextSize('watermark', 18)
	addLuaText('watermark')
	setTextString('watermark',string.upper(difficultyName)..' - Quadratic Formula Engine '..version)

	if downscroll then
	setProperty('black.y', 690)
	setProperty('gray.y', 695)
	setProperty('green.y', 695)
	setProperty('songname.y', 690)
end
end

	if Hudtype == 'FNR' then
	setProperty('scoreTxt.visible', false)
   	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
    	setProperty('timeTxt.visible', false)

	makeLuaText('fnrscore','Score: 0',0,4,685)
	setTextSize('fnrscore', 28)
	addLuaText('fnrscore')

	makeLuaText('info','Misses: 0 | Accuracy: 0% | Combo: 0',0,410,690)
	setTextSize('info', 22)
	getTextWidth('info',getTextWidth('scoreTxt'))
	setTextAlignment('info','CENTER')
	addLuaText('info')

	if middlescroll then
	for i = 0,3 do
	setPropertyFromGroup('opponentStrums',i,'alpha',0)
end
end
end

	if Hudtype == 'FPSPlus' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)

	makeLuaText('fps','Score: 0 | Misses: 0 | Accuracy: 0%',0,0,0)
	setTextWidth('fps',getTextWidth('scoreTxt'))
	setProperty('fps.y',getProperty('scoreTxt.y'))
	setProperty('fps.x',getProperty('scoreTxt.x'))
	setTextAlignment('fps','CENTER')
	setTextSize('fps', 21)
	addLuaText('fps')

	if not downscroll then
	for i=0, 3 do
	setPropertyFromGroup('opponentStrums',i,'y',30)
	setPropertyFromGroup('playerStrums',i,'y',30)
end
end
end

	if Hudtype == 'MicdUp' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)

	makeLuaText('micdupscore','Score: 0',0,20,0)
	setProperty('micdupscore.y',getProperty('healthBarBG.y')+25)
	setTextSize('micdupscore', 21)
	addLuaText('micdupscore')

	makeLuaText('micdupmiss','Misses: 0',0,20,0)
	setProperty('micdupmiss.y',getProperty('healthBarBG.y'))
	setTextSize('micdupmiss', 21)
	addLuaText('micdupmiss')

	makeLuaText('micdupacc','Accuracy: 0%',0,20,0)
	setProperty('micdupacc.y',getProperty('healthBarBG.y')-25)
	setTextSize('micdupacc', 21)
	addLuaText('micdupacc')

	makeLuaText('nps','NPS: 0',0,20,0)
	setProperty('nps.y',getProperty('healthBarBG.y')-50)
	setTextSize('nps', 21)
	addLuaText('nps')

	makeLuaSprite('black', 'black', 297.5, 20)
	makeLuaSprite('gray', 'gray', 303, 25.25)
	makeLuaSprite('green', 'green', 303, 25.25)

	makeLuaText('songname',''..songName,0,600,19.5)
	setTextSize('songname', 17)
	setObjectCamera('songname','camHUD')
				
	addLuaSprite('black', true)
	addLuaSprite('gray', true)
	addLuaSprite('green', true)
	addLuaText('songname')
				
	setObjectCamera('black', 'hud')
	setObjectCamera('gray', 'hud')
	setObjectCamera('green', 'hud')
				
	scaleObject('black', 2, .065)
	scaleObject('gray', 1.965, .035)
	scaleObject('green', 1.965, .035)

	if downscroll then
	setProperty('black.y', 690)
	setProperty('gray.y', 695)
	setProperty('green.y', 695)
	setProperty('songname.y', 690)
end
end


	if Hudtype == 'Vanilla' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)

	makeLuaText('vanillascore','Score: 0',0,0,0)
	setTextSize('vanillascore', 16)
	setProperty('vanillascore.y',getProperty('scoreTxt.y'))
	setProperty('vanillascore.x',getProperty('scoreTxt.x')+750)
	addLuaText('vanillascore')
end

	if Hudtype == 'VixtinEngine' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)

	makeLuaText('newscoretxt','Score: 0 | Combo Breaks: 0 | Accuracy: 0 % | N/A',0,0,0)
	setProperty('newscoretxt.x',getProperty('scoreTxt.x'))
	setProperty('newscoretxt.y',getProperty('scoreTxt.y'))
	setTextWidth('newscoretxt',getTextWidth('scoreTxt'))
	setTextSize('newscoretxt', 21)
	setTextAlignment('newscoretxt','CENTER')
	setTextBorder('newscoretxt', 1,'000001')
	addLuaText('newscoretxt')

	theRatingAlt = "N/A"
end

	if Hudtype == 'ForeverEngine' then
	setProperty('scoreTxt.visible', false)
   	setProperty('timeBarBG.visible', true)
    	setProperty('timeBar.visible', true)
    	setProperty('timeTxt.visible', true)

	makeLuaText('scoreforever','Score: 0 - Accuracy: 0% - Combo Breaks: 0 - Rank: F',0,0,0)
	setProperty('scoreforever.y',getProperty('scoreTxt.y'))
	setProperty('scoreforever.x',getProperty('scoreTxt.x'))
	setTextWidth('scoreforever',getTextWidth('scoreTxt'))
	setTextAlignment('scoreforever','CENTER')
	setTextSize('scoreforever', 16)
	addLuaText('scoreforever')

	makeLuaText('watermark','',0,3,690)
	setTextSize('watermark', 18)
	addLuaText('watermark')

	makeLuaText('version','Quadratic Formula Engine v'..version,0,1050,690)
	setTextSize('version', 15)
	addLuaText('version')

	setTextString('watermark',songName..' - '..string.upper(difficultyName))
end

	if Hudtype == 'KadeEngine' then
	setProperty('scoreTxt.visible', false)
   	setProperty('timeBarBG.visible', true)
    	setProperty('timeBar.visible', true)
	setProperty('timeTxt.visible', true)

	makeLuaText('kadescore','Score: 0 | Combo Breaks: 0 | Accuracy: 0 % | N/A',0,0,0)
	setProperty('kadescore.y',getProperty('scoreTxt.y')+10)
	setProperty('kadescore.x',getProperty('scoreTxt.x'))
	setTextAlignment('kadescore','CENTER')
	setTextWidth('kadescore',getTextWidth('scoreTxt'))
	setTextSize('kadescore', 15)
	addLuaText('kadescore')

	makeLuaText('version','Quadratic Formula Engine v'..version,0,1050,690)
	setTextSize('version', 15)
	addLuaText('version')

	makeLuaText('song','',0,10,690)
	setTextSize('song', 16)
	addLuaText('song')
	setTextString('song',songName..' - '..difficultyName)
end

	if Hudtype == 'Custom' then
	setProperty('scoreTxt.visible', false)
   	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
	setProperty('timeTxt.visible', false)

	makeLuaText('score','Score: 0',0,10,20)
	setTextFont('score','funkin.ttf')
	setTextSize('score', 21)
	addLuaText('score')

	makeLuaText('miss','Misses: 0',0,10,40)
	setTextFont('miss','funkin.ttf')
	setTextSize('miss', 21)
	addLuaText('miss')

	makeLuaText('acc','Accuracy: 0%',0,10,60)
	setTextFont('acc','funkin.ttf')
	setTextSize('acc', 21)
	addLuaText('acc')

	makeLuaText('rating','Rating: N/A',0,10,80)
	setTextFont('rating','funkin.ttf')
	setTextSize('rating', 21)
	addLuaText('rating')

	makeLuaText('combo','Combo: ',0,10,320)
	setTextFont('combo','funkin.ttf')
	setTextSize('combo', 21)
	addLuaText('combo')

	makeLuaText('sick','Sicks!:',0,10,340)
	setTextFont('sick','funkin.ttf')
	setTextSize('sick', 21)
	addLuaText('sick')

	makeLuaText('good','Goods!:',0,10, 360)
	setTextFont('good','funkin.ttf')
	setTextSize('good',21)
	addLuaText('good')

	makeLuaText('bad','Bads:',0,10, 380)
	setTextFont('bad','funkin.ttf')
	setTextSize('bad',21)
	addLuaText('bad')

	makeLuaText('shit','Shits:',0,10, 400)
	setTextFont('shit','funkin.ttf')
	setTextSize('shit',21)
	addLuaText('shit')

	makeLuaText('song','',0,10,690)
	setTextFont('song','funkin.ttf')
	setTextSize('song', 21)
	addLuaText('song')
	setTextString('song',songName..' - '..string.upper(difficultyName))

	makeLuaText('ver','Custom Hud v1.9',0,1100,690)
	setTextFont('ver','funkin.ttf')
	setTextSize('ver', 21)
	addLuaText('ver')
	setTextFont('botplayTxt','funkin.ttf')

	if not downscroll then
	setProperty('song.y', 10)
	setProperty('ver.y', 10)
	setProperty('rating.y', 680)
	setProperty('acc.y', 660)
	setProperty('miss.y', 640)
	setProperty('score.y', 620)
end
end
end
function onUpdate(elasped)
	if Hudtype == 'KadeEngine' then
iconOffset = 26
healthBarX = getProperty('healthBar.x')
healthBarW = getProperty('healthBar.width')
healthBarP = getProperty('healthBar.percent')

setGraphicSize('iconP1',math.lerp(150,getProperty('iconP1.width'), 0.50))
setProperty('iconP1.x', healthBarX + (healthBarW * (math.remapToRange(healthBarP, 0, 100, 100, 0) * 0.01) - iconOffset));

setGraphicSize('iconP2',math.lerp(150,getProperty('iconP1.width'), 0.50))
setProperty('iconP2.x', healthBarX + (healthBarW * (math.remapToRange(healthBarP, 0, 100, 100, 0) * 0.01) - iconOffset));

updateHitbox('iconP1')
updateHitbox('iconP2')
end

	setTextString('4miss','Miss x'..misses)

	if Hudtype == 'HealthEngine' then
		for i = 0,3 do
			setPropertyFromGroup('opponentStrums',i,'alpha',0.75)
			setPropertyFromGroup('playerStrums',i,'alpha',0.75)
		end
	end

	if Hudtype == 'DikeEngine' then
	local diff = ' - '..difficultyName
	setPropertyFromClass('lime.app.Application', 'current.window.title', 'Friday Night Funkin Psych Engine '..getProperty('curSong')..diff)
end

	setTextString('osumiss','Miss x'..misses)

	if Hudtype == 'osu!' then
	for i = 0,3 do
	setPropertyFromGroup('opponentStrums',i,'alpha',0)
end
end

	if Nps < 0 then
        Nps = 0
        NoteHit = false;
end   

	setTextString('combo','Combo: '..getProperty('combo'))

	setTextString('sick','Sicks!: ' .. getProperty('sicks'))
	setTextString('good','Goods!: ' ..getProperty('goods'))
	setTextString('bad','Bads: ' .. getProperty('bads'))
	setTextString('shit','Shits: ' .. getProperty('shits'))

	setTextString('nps','NPS: '..Nps)
end
function onRecalculateRating()
	if Hudtype == 'DikeEngine' then
	if ratingFC == 'SFC' then
	ratingFC = 'FC'
	elseif ratingFC == 'GFC' then
	ratingFC = 'FC'
	elseif ratingFC == 'Clear' and misses >= 20 then
	ratingFC = 'F'
	elseif ratingFC == 'SDCB' then
	ratingFC = 'NFC'
	elseif ratingFC == 'SDCB' and misses == 5 then
	ratingFC = 'NB'
	elseif ratingFC == 'Clear' then
	ratingFC = 'PGBNTB'
end
end

	if Hudtype == 'ModdingPlus' then
	if ratingName == 'Perfect!!' then
	ratingName = 'AAA'
	ratingFC = 'MFC'
	elseif ratingName == 'Sick!' then
	ratingName = 'AA'
	elseif ratingName == 'Great' then
	ratingName = 'B'
	elseif ratingName == 'Good' then
	ratingName = 'C'
	elseif ratingName == 'Meh' then
	ratingName = 'D'
	elseif ratingName == 'Bruh' then
	ratingName = 'F'
	elseif ratingName == 'Bad' then
	ratingName = 'F'
	elseif ratingName == 'Shit' then
	ratingName = 'F'
	elseif ratingName == 'You Suck!' then
	ratingName = 'FAIL'
end
end

	if Hudtype == 'ForeverEngine' then
	if ratingName == 'Perfect!!' then
	ratingName = 'S+'
	elseif ratingName == 'Sick!' then
	ratingName = 'S'
	elseif ratingName == 'Great' then
	ratingName = 'B'
	elseif ratingName == 'Good' then
	ratingName = 'C'
	elseif ratingName == 'Nice' then
	ratingName = 'D'
	elseif ratingName == 'Meh' then
	ratingName = 'D'
	elseif ratingName == 'Bruh' then
	ratingName = 'F'
	elseif ratingName == 'Bad' then
	ratingName = 'F'
	elseif ratingName == 'Shit' then
	ratingName = 'E'
	elseif ratingName == 'You Suck!' then
	ratingName = 'E'
end
end

	if Hudtype == 'KadeEngine' then
	if ratingName == 'Perfect!!' then
	ratingName = 'AAA'
	ratingFC = 'MFC'
	elseif ratingName == 'Sick!' then
	ratingName = 'AA'
	elseif ratingName == 'Great' then
	ratingName = 'B'
	elseif ratingName == 'Good' then
	ratingName = 'C'
	elseif ratingName == 'Meh' then
	ratingName = 'D'
	elseif ratingName == 'Bruh' then
	ratingName = 'F'
	elseif ratingName == 'Bad' then
	ratingName = 'F'
	elseif ratingName == 'Shit' then
	ratingName = 'F'
	elseif ratingName == 'You Suck!' then
	ratingName = 'FAIL'
end
end

	if Hudtype == 'VixtinEngine' then
	if ratingName =='Perfect!!' then
	ratingFC = 'MFC'
	theRatingAlt = 'AAA'
	elseif ratingName == 'Sick!' then
	theRatingAlt = 'AA'
	elseif ratingName == 'Great' then
	theRatingAlt = 'B'
	elseif ratingName == 'Good' then
	theRatingAlt = 'C'
	elseif ratingName == 'Nice' then
	theRatingAlt = 'Nice'
	elseif ratingName == 'Meh' then
	theRatingAlt = 'D'
	elseif ratingName == 'Bruh' then
	theRatingAlt = 'F'
	elseif ratingName == 'Bad' then
	theRatingAlt = 'F'
	elseif ratingName == 'Shit' then
	theRatingAlt = 'F'
	elseif ratingName == 'You Suck!' then
	theRatingAlt = 'FAIL'
	end
end
	setTextString('healthscore','Score: '..score..' | Misses: '..misses)
	setTextString('dikescore','Score:'..score..' | Misses:'..misses..' | '..ratingFC)
	setTextString('osucombo',''..getProperty('combo'))
	setTextString('osuacc',''..round(rating * 100, 2)..'%')
	setTextString('osuscore',''..score)
	setTextString('modplus','Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: ' .. round((getProperty('ratingPercent') * 100), 2)..' % (' .. ratingFC .. ') '..ratingName)
	setTextString('fnrscore','Score: '..score)
	setTextString('info','Misses: '..misses..' | Accuracy: '..round(rating * 100, 2) ..'% | Combo: '..getProperty('combo'))
	setTextString('fps','Score: '..score..' | Misses: '..misses..' | Accuracy: '..round(rating * 100, 2)..'%')
	setTextString('micdupacc','Accuracy: '..round(rating * 100, 2)..'%')
	setTextString('micdupmiss','Misses: '..misses)
	setTextString('micdupscore','Score: '..score)
	setTextString('score','Score: '..score)
	setTextString('miss','Misses: '..misses)
	setTextString('acc','Accuracy: '..round(rating * 100, 2)..'%')
	setTextString('rating','Rating: (' .. ratingFC .. ') '..ratingName)
	setTextString('kadescore','Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: '..round(rating * 100,2)..' % | ('..ratingFC..') '..ratingName)
	setTextString('scoreforever','Score: '..score..' - Accuracy: '..round(rating * 100, 2)..'% ['..ratingFC..'] - Combo Breaks: '..misses..' - Rank: '..ratingName)
	setTextString('newscoretxt','Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: ' .. round((getProperty('ratingPercent') * 100), 2)..' % (' .. ratingFC .. ') '..theRatingAlt)
	setTextString('vanillascore','Score: '..score)
end
function onBeatHit()
	if curBeat % 1 == 0 then
	scaleObject('iconP1', 1.15, 1.15)
	scaleObject('iconP2', 1.15, 1.15)
	doTweenX('bop','iconP1',1.3,0.1,'quadInOut')
	doTweenX('bop','iconP2',1.3,0.1,'quadInOut')
end

	if Hudtype == 'ForeverEngine' then
	if curBeat % 4 == 0 then
	doTweenZoom('zoom','camHUD',1,0.2,'quadOut')
end
end

	if Hudtype == 'osu!' then
	setProperty('camZooming', false)
end
end
function noteMiss(id, direction, noteType, isSustainNote)
	if Hudtype == 'osu!' then
	makeLuaText('osumiss','',0,570,140)
	setTextSize('osumiss', 30)
	addLuaText('osumiss')
	runTimer('miss', 0.2, 0)
function onTimerCompleted(tag)
	if tag == 'miss' then
	doTweenAlpha('fade','osumiss',0,0.2,'linear')
end
end
end
end
function onDestroy()
if Hudtype == 'DikeEngine' then
setPropertyFromClass('lime.app.Application', 'current.window.title', 'In The Menus')
end
end
function onSongStart()
	if Hudtype == 'osu!' then
	doTweenAlpha('tween','bgdim',1,0.3,'linear')
end
end
function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end
function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        Nps = Nps + 1
        NoteHit = false;
    end

    ezTimer('drain', 1, function()
        NoteHit = true;
    end)  
end

timers = {}
function ezTimer(tag, timer, callback) -- Better
    table.insert(timers,{tag, callback})
    runTimer(tag, timer)
end

function onTimerCompleted(tag)
    for k,v in pairs(timers) do
        if v[1] == tag then
            v[2]()
        end
    end
end
function math.lerp(a,b,t)
 return(b-a) * t + a;
end
function math.remapToRange(value,start1,stop1,start2,stop2)
 return start2 + (stop2 - start2) * ((value - start1)/(stop1 - start1))
end