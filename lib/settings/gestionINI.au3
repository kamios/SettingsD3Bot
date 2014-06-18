;lecture du fichier settings.ini
Func LoadConfigs($FichierINI)

;###########################################
;Onglet Settings
;###########################################
	$PassD3 = IniRead($FichierINI, "Account info", "pass", "")

	$CloseWindows = IniRead($FichierINI, "Key info", "CloseWindows", "")
	$Inventory = IniRead($FichierINI, "Key info", "Inventory", "")
	$Potions = IniRead($FichierINI, "Key info", "Potions", "")
	$Portal = IniRead($FichierINI, "Key info", "Portal", "")
	$OpenMap = IniRead($FichierINI, "Key info", "OpenMap", "")
	$key1 = IniRead($FichierINI, "Key info", "key1", "")
	$key2 = IniRead($FichierINI, "Key info", "key2", "")
	$key3 = IniRead($FichierINI, "Key info", "key3", "")
	$key4 = IniRead($FichierINI, "Key info", "key4", "")
	$MouseMove = IniRead($FichierINI, "Key info", "MouseMove", "")

	$PartieSolo = IniRead($FichierINI, "Run info", "PartieSolo", "")
	$TakeABreak = IniRead($FichierINI, "Run info", "TakeABreak", "")
	$Breakafterxxgames = IniRead($FichierINI, "Run info", "Breakafterxxgames", "")
	$BreakTime = IniRead($FichierINI, "Run info", "BreakTime", "")

	$QualiteItemKeep = IniRead($FichierINI, "Run info", "QualiteItemKeep", "")
	$QualiteItemSalvage = IniRead($FichierINI, "Run info", "QualiteItemSalvage", "")
	$QualiteItemSell = IniRead($FichierINI, "Run info", "QualiteItemSell", "")
	$UnknownItemAction = IniRead($FichierINI, "Run info", "UnknownItemAction", "")
	$Unidentified = IniRead($FichierINI, "Run info", "Unidentified", "")

	$TypeDeBot = IniRead($FichierINI, "Run info", "TypeDeBot", "")
	$Follower = IniRead($FichierINI, "Run info", "Follower", "")
	$difficulte = IniRead($FichierINI, "Run info", "difficulte", "")
	$Hero = IniRead($FichierINI, "Run info", "Heros", "")
	$PuisMonstre = IniRead($FichierINI, "Run info", "PuisMonstre", "")
	$TypeDeGrabList = IniRead($FichierINI, "Run info", "TypeDeGrabList", "")

	$ChoixActRun = IniRead($FichierINI, "Run info", "Choix_Act_Run", "")
	$SequenceAleatoire = IniRead($FichierINI, "Run info", "Sequence_Aleatoire", "")
	$NbreRunChangSeqAlea = IniRead($FichierINI, "Run info", "NbreRunChangSeqAlea", "")
	$NombredeRun = IniRead($FichierINI, "Run info", "Nombre_de_Run", "")
	$NombreMiniAct1 = IniRead($FichierINI, "Run info", "NombreMiniAct1", "")
	$NombreMaxiAct1 = IniRead($FichierINI, "Run info", "NombreMaxiAct1", "")
	$NombreMiniAct2 = IniRead($FichierINI, "Run info", "NombreMiniAct2", "")
	$NombreMaxiAct2 = IniRead($FichierINI, "Run info", "NombreMaxiAct2", "")
	$NombreMiniAct3 = IniRead($FichierINI, "Run info", "NombreMiniAct3", "")
	$NombreMaxiAct3 = IniRead($FichierINI, "Run info", "NombreMaxiAct3", "")

	$SequenceFileAct1 = IniRead($FichierINI, "Run info", "SequenceFileAct1", "")
	$SequenceFileAct2 = IniRead($FichierINI, "Run info", "SequenceFileAct2", "")
	$SequenceFileAct222 = IniRead($FichierINI, "Run info", "SequenceFileAct222", "")
	$SequenceFileAct232 = IniRead($FichierINI, "Run info", "SequenceFileAct232", "")
	$SequenceFileAct283 = IniRead($FichierINI, "Run info", "SequenceFileAct283", "")
	$SequenceFileAct299 = IniRead($FichierINI, "Run info", "SequenceFileAct299", "")
	$SequenceFileAct3PtSauve = IniRead($FichierINI, "Run info", "SequenceFileAct3PtSauve", "")
	$SequenceFileAct3 = IniRead($FichierINI, "Run info", "SequenceFileAct3", "")
	$SequenceFileAct333 = IniRead($FichierINI, "Run info", "SequenceFileAct333", "")
	$SequenceFileAct362 = IniRead($FichierINI, "Run info", "SequenceFileAct362", "")
	$SequenceFileAct373 = IniRead($FichierINI, "Run info", "SequenceFileAct373", "")
	$SequenceFileAct374 = IniRead($FichierINI, "Run info", "SequenceFileAct374", "")
	$SequenceFileAct411 = IniRead($FichierINI, "Run info", "SequenceFileAct411", "")
	$SequenceFileAct442 = IniRead($FichierINI, "Run info", "SequenceFileAct442", "")

	$SequenceFileAdventure = IniRead($FichierINI, "Run info", "SequenceFileAdventure", "")
	$BountyAct = IniRead($FichierINI, "Run info", "BountyAct", "")
	;Début Cracoucas
	$PauseAfterBounty = IniRead($FichierINI, "Run info", "PauseAfterBounty", "")
	$BountyAndSequence = IniRead($FichierINI, "Run info", "BountyAndSequence", "")
	;Fin Cracoucas
	$NoBountyFailbackToAdventure = IniRead($FichierINI, "Run info", "NoBountyFailbackToAdventure", "")
	$SequenceFile = IniRead($FichierINI, "Run info", "SequenceFile", "")
	$EndSequenceOnBountyCompletion = IniRead($FichierINI, "Run info", "EndSequenceOnBountyCompletion", "")

	$priorityMonsterList = IniRead($FichierINI, "Run info", "priorityMonsterList", "")
	$monsterList = IniRead($FichierINI, "Run info", "monsterList", "")
	$specialmonsterList = IniRead($FichierINI, "Run info", "specialmonsterList", "")
	$decorList = IniRead($FichierINI, "Run info", "decorList", "")
	$chestList = IniRead($FichierINI, "Run info", "chestList", "")
	$rackList = IniRead($FichierINI, "Run info", "rackList", "")

	$ChaseElite = IniRead($FichierINI, "Run info", "ChaseElite", "")
	$WaitForLoot = IniRead($FichierINI, "Run info", "WaitForLoot", "")

	AjoutLog("Chargement du fichier : " & $FichierINI)

EndFunc;==>LoadConfigs

;lecture du fichier settingsHeroX.ini
Func LoadConfigsHero($FichierINI)

	$SpellOnLeft = IniRead($FichierINI, "Run info", "SpellOnLeft", "")
	$SpellDelayLeft = IniRead($FichierINI, "Run info", "SpellDelayLeft", "")
	$SpellTypeLeft = IniRead($FichierINI, "Run info", "SpellTypeLeft", "")
	$SpellEnergyNeedsLeft = IniRead($FichierINI, "Run info", "SpellEnergyNeedsLeft", "")
	$SpellLifeLeft = IniRead($FichierINI, "Run info", "SpellLifeLeft", "")
	$SpellDistanceLeft = IniRead($FichierINI, "Run info", "SpellDistanceLeft", "")

	$SpellOnRight = IniRead($FichierINI, "Run info", "SpellOnRight", "")
	$SpellDelayRight = IniRead($FichierINI, "Run info", "SpellDelayRight", "")
	$SpellTypeRight = IniRead($FichierINI, "Run info", "SpellTypeRight", "")
	$SpellEnergyNeedsRight = IniRead($FichierINI, "Run info", "SpellEnergyNeedsRight", "")
	$SpellLifeRight = IniRead($FichierINI, "Run info", "SpellLifeRight", "")
	$SpellDistanceRight = IniRead($FichierINI, "Run info", "SpellDistanceRight", "")

	$SpellOn1 = IniRead($FichierINI, "Run info", "SpellOn1", "")
	$SpellPreBuff1 = IniRead($FichierINI, "Run info", "SpellPreBuff1", "")
	$SpellPreBuffDelay1 = IniRead($FichierINI, "Run info", "SpellPreBuffDelay1", "")
	$SpellDelay1 = IniRead($FichierINI, "Run info", "SpellDelay1", "")
	$SpellType1 = IniRead($FichierINI, "Run info", "SpellType1", "")
	$SpellEnergyNeeds1 = IniRead($FichierINI, "Run info", "SpellEnergyNeeds1", "")
	$SpellLife1 = IniRead($FichierINI, "Run info", "SpellLife1", "")
	$SpellDistance1 = IniRead($FichierINI, "Run info", "SpellDistance1", "")

	$SpellOn2 = IniRead($FichierINI, "Run info", "SpellOn2", "")
	$SpellPreBuff2 = IniRead($FichierINI, "Run info", "SpellPreBuff2", "")
	$SpellPreBuffDelay2 = IniRead($FichierINI, "Run info", "SpellPreBuffDelay2", "")
	$SpellDelay2 = IniRead($FichierINI, "Run info", "SpellDelay2", "")
	$SpellType2 = IniRead($FichierINI, "Run info", "SpellType2", "")
	$SpellEnergyNeeds2 = IniRead($FichierINI, "Run info", "SpellEnergyNeeds2", "")
	$SpellLife2 = IniRead($FichierINI, "Run info", "SpellLife2", "")
	$SpellDistance2 = IniRead($FichierINI, "Run info", "SpellDistance2", "")

	$SpellOn3 = IniRead($FichierINI, "Run info", "SpellOn3", "")
	$SpellPreBuff3 = IniRead($FichierINI, "Run info", "SpellPreBuff3", "")
	$SpellPreBuffDelay3 = IniRead($FichierINI, "Run info", "SpellPreBuffDelay3", "")
	$SpellDelay3 = IniRead($FichierINI, "Run info", "SpellDelay3", "")
	$SpellType3 = IniRead($FichierINI, "Run info", "SpellType3", "")
	$SpellEnergyNeeds3 = IniRead($FichierINI, "Run info", "SpellEnergyNeeds3", "")
	$SpellLife3 = IniRead($FichierINI, "Run info", "SpellLife3", "")
	$SpellDistance3 = IniRead($FichierINI, "Run info", "SpellDistance3", "")

	$SpellOn4 = IniRead($FichierINI, "Run info", "SpellOn4", "")
	$SpellPreBuff4 = IniRead($FichierINI, "Run info", "SpellPreBuff4", "")
	$SpellPreBuffDelay4 = IniRead($FichierINI, "Run info", "SpellPreBuffDelay4", "")
	$SpellDelay4 = IniRead($FichierINI, "Run info", "SpellDelay4", "")
	$SpellType4 = IniRead($FichierINI, "Run info", "SpellType4", "")
	$SpellEnergyNeeds4 = IniRead($FichierINI, "Run info", "SpellEnergyNeeds4", "")
	$SpellLife4 = IniRead($FichierINI, "Run info", "SpellLife4", "")
	$SpellDistance4 = IniRead($FichierINI, "Run info", "SpellDistance4", "")

	$LifeForPotion = IniRead($FichierINI, "Run info", "LifeForPotion", "")
	$PotionStock = IniRead($FichierINI, "Run info", "PotionStock", "")
	$LifeForHealth = IniRead($FichierINI, "Run info", "LifeForHealth", "")
	$NbPotionBuy = IniRead($FichierINI, "Run info", "NbPotionBuy", "")
	$TakeGlobeInFight = IniRead($FichierINI, "Run info", "TakeGlobeInFight", "")
	$NoEnergyForDecor = IniRead($FichierINI, "Run info", "NoEnergyForDecor", "")

	$TakeShrines = IniRead($FichierINI, "Run info", "TakeShrines", "")
	$repairafterxxgames = IniRead($FichierINI, "Run info", "repairafterxxgames", "")
	$maxgamelength = IniRead($FichierINI, "Run info", "maxgamelength", "")
	$attackRange = IniRead($FichierINI, "Run info", "attackRange", "")
	$grabRange = IniRead($FichierINI, "Run info", "grabRange", "")

	$MonsterTri = IniRead($FichierINI, "Run info", "MonsterTri", "")
	$MonsterRefresh = IniRead($FichierINI, "Run info", "MonsterRefresh", "")
	$ItemRefresh = IniRead($FichierINI, "Run info", "ItemRefresh", "")
	$MonsterPriority = IniRead($FichierINI, "Run info", "MonsterPriority", "")

	$InventoryCheck = IniRead($FichierINI, "Run info", "InventoryCheck", "")
	$attacktimeout = IniRead($FichierINI, "Run info", "attacktimeout", "")
	$grabtimeout = IniRead($FichierINI, "Run info", "grabtimeout", "")

	$Gestionaffixe = IniRead($FichierINI, "Run info", "Gestion_affixe", "")
	$Gestionaffixeloot = IniRead($FichierINI, "Run info", "Gestion_affixe_loot", "")
	$BanAffixList = IniRead($FichierINI, "Run info", "BanAffixList", "")
	$GestaffixeByClass = IniRead($FichierINI, "Run info", "Gest_affixe_ByClass", "")

	$LifeArcane = IniRead($FichierINI, "Run info", "Life_Arcane", "")
	$LifeProj = IniRead($FichierINI, "Run info", "Life_Proj", "")
	$LifePeste = IniRead($FichierINI, "Run info", "Life_Peste", "")
	$LifeProfa = IniRead($FichierINI, "Run info", "Life_Profa", "")
	$LifeIce = IniRead($FichierINI, "Run info", "Life_Ice", "")
	$LifePoison = IniRead($FichierINI, "Run info", "Life_Poison", "")
	$LifeExplo = IniRead($FichierINI, "Run info", "Life_Explo", "")
	$LifeLave = IniRead($FichierINI, "Run info", "Life_Lave", "")
	$LifeMine = IniRead($FichierINI, "Run info", "Life_Mine", "")
	$LifeArm = IniRead($FichierINI, "Run info", "Life_Arm", "")
	$LifeSpore = IniRead($FichierINI, "Run info", "Life_Spore", "")
	$LifeLightning = IniRead($FichierINI, "Run info", "Life_Lightning", "")

	$UsePath = IniRead($FichierINI, "Run info", "UsePath", "")
	;Début Cracoucas
	$LegendaryPotion = IniRead($FichierINI, "Run info", "LegendaryPotion", "")
	$AllIndestructibleObject = IniRead($FichierINI, "Run info", "AllIndestructibleObject", "")
	;Fin Cracoucas
	$ResActivated = IniRead($FichierINI, "Run info", "ResActivated", "")
	$ResLife = IniRead($FichierINI, "Run info", "ResLife", "")
	$HCSecurity = IniRead($FichierINI, "Run info", "HCSecurity", "")
	$MinHCLife = IniRead($FichierINI, "Run info", "MinHCLife", "")

	AjoutLog("Chargement du fichier : " & $FichierINI)

EndFunc;==>LoadConfigsHero

Func LoadSettings($FichierINI)

	$PassD3 = IniRead($FichierINI, "Account info", "pass", "")

	$SequenceFile = IniRead($FichierINI, "Run info", "SequenceFile", "")

	$QualiteItem = IniRead($FichierINI, "Run info", "QualiteItem", "")
	$Salvage = IniRead($FichierINI, "Run info", "Salvage", "")
	$SalvageQualiteItem = IniRead($FichierINI, "Run info", "SalvageQualiteItem", "")

	$Master = IniRead($FichierINI, "Run info", "Master", "")
	$Follower = IniRead($FichierINI, "Run info", "Follower", "")

	$key1 = IniRead($FichierINI, "Key info", "key1", "")
	$key2 = IniRead($FichierINI, "Key info", "key2", "")
	$key3 = IniRead($FichierINI, "Key info", "key3", "")
	$key4 = IniRead($FichierINI, "Key info", "key4", "")

	$monsterList = IniRead($FichierINI, "Run info", "monsterList", "")
	$specialmonsterList = IniRead($FichierINI, "Run info", "specialmonsterList", "")

	$SpellOnLeft = IniRead($FichierINI, "Run info", "SpellOnLeft", "")
	$SpellDelayLeft = IniRead($FichierINI, "Run info", "SpellDelayLeft", "")
	$SpellTypeLeft = IniRead($FichierINI, "Run info", "SpellTypeLeft", "")
	$SpellEnergyNeedsLeft = IniRead($FichierINI, "Run info", "SpellEnergyNeedsLeft", "")
	$SpellLifeLeft = IniRead($FichierINI, "Run info", "SpellLifeLeft", "")
	$SpellDistanceLeft = IniRead($FichierINI, "Run info", "SpellDistanceLeft", "")

	$SpellOnRight = IniRead($FichierINI, "Run info", "SpellOnRight", "")
	$SpellDelayRight = IniRead($FichierINI, "Run info", "SpellDelayRight", "")
	$SpellTypeRight = IniRead($FichierINI, "Run info", "SpellTypeRight", "")
	$SpellEnergyNeedsRight = IniRead($FichierINI, "Run info", "SpellEnergyNeedsRight", "")
	$SpellLifeRight = IniRead($FichierINI, "Run info", "SpellLifeRight", "")
	$SpellDistanceRight = IniRead($FichierINI, "Run info", "SpellDistanceRight", "")

	$SpellOn1 = IniRead($FichierINI, "Run info", "SpellOn1", "")
	$SpellPreBuff1 = IniRead($FichierINI, "Run info", "SpellPreBuff1", "")
	$SpellPreBuffDelay1 = IniRead($FichierINI, "Run info", "SpellPreBuffDelay1", "")
	$SpellDelay1 = IniRead($FichierINI, "Run info", "SpellDelay1", "")
	$SpellType1 = IniRead($FichierINI, "Run info", "SpellType1", "")
	$SpellEnergyNeeds1 = IniRead($FichierINI, "Run info", "SpellEnergyNeeds1", "")
	$SpellLife1 = IniRead($FichierINI, "Run info", "SpellLife1", "")
	$SpellDistance1 = IniRead($FichierINI, "Run info", "SpellDistance1", "")

	$SpellOn2 = IniRead($FichierINI, "Run info", "SpellOn2", "")
	$SpellPreBuff2 = IniRead($FichierINI, "Run info", "SpellPreBuff2", "")
	$SpellPreBuffDelay2 = IniRead($FichierINI, "Run info", "SpellPreBuffDelay2", "")
	$SpellDelay2 = IniRead($FichierINI, "Run info", "SpellDelay2", "")
	$SpellType2 = IniRead($FichierINI, "Run info", "SpellType2", "")
	$SpellEnergyNeeds2 = IniRead($FichierINI, "Run info", "SpellEnergyNeeds2", "")
	$SpellLife2 = IniRead($FichierINI, "Run info", "SpellLife2", "")
	$SpellDistance2 = IniRead($FichierINI, "Run info", "SpellDistance2", "")

	$SpellOn3 = IniRead($FichierINI, "Run info", "SpellOn3", "")
	$SpellPreBuff3 = IniRead($FichierINI, "Run info", "SpellPreBuff3", "")
	$SpellPreBuffDelay3 = IniRead($FichierINI, "Run info", "SpellPreBuffDelay3", "")
	$SpellDelay3 = IniRead($FichierINI, "Run info", "SpellDelay3", "")
	$SpellType3 = IniRead($FichierINI, "Run info", "SpellType3", "")
	$SpellEnergyNeeds3 = IniRead($FichierINI, "Run info", "SpellEnergyNeeds3", "")
	$SpellLife3 = IniRead($FichierINI, "Run info", "SpellLife3", "")
	$SpellDistance3 = IniRead($FichierINI, "Run info", "SpellDistance3", "")

	$SpellOn4 = IniRead($FichierINI, "Run info", "SpellOn4", "")
	$SpellPreBuff4 = IniRead($FichierINI, "Run info", "SpellPreBuff4", "")
	$SpellPreBuffDelay4 = IniRead($FichierINI, "Run info", "SpellPreBuffDelay4", "")
	$SpellDelay4 = IniRead($FichierINI, "Run info", "SpellDelay4", "")
	$SpellType4 = IniRead($FichierINI, "Run info", "SpellType4", "")
	$SpellEnergyNeeds4 = IniRead($FichierINI, "Run info", "SpellEnergyNeeds4", "")
	$SpellLife4 = IniRead($FichierINI, "Run info", "SpellLife4", "")
	$SpellDistance4 = IniRead($FichierINI, "Run info", "SpellDistance4", "")

	$LifeForPotion = IniRead($FichierINI, "Run info", "LifeForPotion", "")
	$PotionStock = IniRead($FichierINI, "Run info", "PotionStock", "")

	$TakeShrines = IniRead($FichierINI, "Run info", "TakeShrines", "")
	$repairafterxxgames = IniRead($FichierINI, "Run info", "repairafterxxgames", "")
	$maxgamelength = IniRead($FichierINI, "Run info", "maxgamelength", "")
	$attackRange = IniRead($FichierINI, "Run info", "attackRange", "")
	$grabRange = IniRead($FichierINI, "Run info", "grabRange", "")

	$MonsterTri = IniRead($FichierINI, "Run info", "MonsterTri", "")
	$MonsterRefresh = IniRead($FichierINI, "Run info", "MonsterRefresh", "")
	$ItemRefresh = IniRead($FichierINI, "Run info", "ItemRefresh", "")
	$MonsterPriority = IniRead($FichierINI, "Run info", "MonsterPriority", "")

	$InventoryCheck = IniRead($FichierINI, "Run info", "InventoryCheck", "")
	$attacktimeout = IniRead($FichierINI, "Run info", "attacktimeout", "")
	$grabtimeout = IniRead($FichierINI, "Run info", "grabtimeout", "")

	$Gestionaffixe = IniRead($FichierINI, "Run info", "Gestion_affixe", "")
	$Gestionaffixeloot = IniRead($FichierINI, "Run info", "Gestion_affixe_loot", "")
	$BanAffixList = IniRead($FichierINI, "Run info", "BanAffixList", "")
	$GestaffixeByClass = IniRead($FichierINI, "Run info", "Gest_affixe_ByClass", "")

	$LifeArcane = IniRead($FichierINI, "Run info", "Life_Arcane", "")
	$LifeProj = IniRead($FichierINI, "Run info", "Life_Proj", "")
	$LifePeste = IniRead($FichierINI, "Run info", "Life_Peste", "")
	$LifeProfa = IniRead($FichierINI, "Run info", "Life_Profa", "")
	$LifeIce = IniRead($FichierINI, "Run info", "Life_Ice", "")
	$LifePoison = IniRead($FichierINI, "Run info", "Life_Poison", "")
	$LifeExplo = IniRead($FichierINI, "Run info", "Life_Explo", "")
	$LifeLave = IniRead($FichierINI, "Run info", "Life_Lave", "")
	$LifeMine = IniRead($FichierINI, "Run info", "Life_Mine", "")
	$LifeArm = IniRead($FichierINI, "Run info", "Life_Arm", "")
	$LifeSpore = IniRead($FichierINI, "Run info", "Life_Spore", "")
	$LifeLightning = IniRead($FichierINI, "Run info", "Life_Lightning", "")

	$UsePath = IniRead($FichierINI, "Run info", "UsePath", "")
	;Début Cracoucas
	$LegendaryPotion = IniRead($FichierINI, "Run info", "LegendaryPotion", "")
	$AllIndestructibleObject = IniRead($FichierINI, "Run info", "AllIndestructibleObject", "")
	;Fin Cracoucas
	$ResActivated = IniRead($FichierINI, "Run info", "ResActivated", "")
	$ResLife = IniRead($FichierINI, "Run info", "ResLife", "")

	AjoutLog("Chargement du fichier : " & $FichierINI)

EndFunc;==>LoadSettings

Func SaveSettings($FichierINI)

	IniWrite($FichierINI, "Account info", "pass", $PassD3)

	IniWrite($FichierINI, "Run info", "SequenceFile", $SequenceFile)

	IniWrite($FichierINI, "Run info", "QualiteItem", $QualiteItem)
	IniWrite($FichierINI, "Run info", "Salvage", $Salvage)
	IniWrite($FichierINI, "Run info", "SalvageQualiteItem", $SalvageQualiteItem)

	IniWrite($FichierINI, "Run info", "monsterList", $monsterList)
	IniWrite($FichierINI, "Run info", "specialmonsterList", $specialmonsterList)

	IniWrite($FichierINI, "Run info", "Follower", $Follower)
	IniWrite($FichierINI, "Run info", "Master", $Master)

	IniWrite($FichierINI, "Key info", "key1", $key1)
	IniWrite($FichierINI, "Key info", "key2", $key2)
	IniWrite($FichierINI, "Key info", "key3", $key3)
	IniWrite($FichierINI, "Key info", "key4", $key4)

	IniWrite($FichierINI, "Run info", "SpellOnLeft", $SpellOnLeft)
	IniWrite($FichierINI, "Run info", "SpellDelayLeft", $SpellDelayLeft)
	IniWrite($FichierINI, "Run info", "SpellTypeLeft", $SpellTypeLeft)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeedsLeft", $SpellEnergyNeedsLeft)
	IniWrite($FichierINI, "Run info", "SpellLifeLeft", $SpellLifeLeft)
	IniWrite($FichierINI, "Run info", "SpellDistanceLeft", $SpellDistanceLeft)

	IniWrite($FichierINI, "Run info", "SpellOnRight", $SpellOnRight)
	IniWrite($FichierINI, "Run info", "SpellDelayRight", $SpellDelayRight)
	IniWrite($FichierINI, "Run info", "SpellTypeRight", $SpellTypeRight)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeedsRight", $SpellEnergyNeedsRight)
	IniWrite($FichierINI, "Run info", "SpellLifeRight", $SpellLifeRight)
	IniWrite($FichierINI, "Run info", "SpellDistanceRight", $SpellDistanceRight)

	IniWrite($FichierINI, "Run info", "SpellOn1", $SpellOn1)
	IniWrite($FichierINI, "Run info", "SpellPreBuff1", $SpellPreBuff1)
	IniWrite($FichierINI, "Run info", "SpellPreBuffDelay1", $SpellPreBuffDelay1)
	IniWrite($FichierINI, "Run info", "SpellDelay1", $SpellDelay1)
	IniWrite($FichierINI, "Run info", "SpellType1", $SpellType1)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeeds1", $SpellEnergyNeeds1)
	IniWrite($FichierINI, "Run info", "SpellLife1", $SpellLife1)
	IniWrite($FichierINI, "Run info", "SpellDistance1", $SpellDistance1)

	IniWrite($FichierINI, "Run info", "SpellOn2", $SpellOn2)
	IniWrite($FichierINI, "Run info", "SpellPreBuff2", $SpellPreBuff2)
	IniWrite($FichierINI, "Run info", "SpellPreBuffDelay2", $SpellPreBuffDelay2)
	IniWrite($FichierINI, "Run info", "SpellDelay2", $SpellDelay2)
	IniWrite($FichierINI, "Run info", "SpellType2", $SpellType2)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeeds2", $SpellEnergyNeeds2)
	IniWrite($FichierINI, "Run info", "SpellLife2", $SpellLife2)
	IniWrite($FichierINI, "Run info", "SpellDistance2", $SpellDistance2)

	IniWrite($FichierINI, "Run info", "SpellOn3", $SpellOn3)
	IniWrite($FichierINI, "Run info", "SpellPreBuff3", $SpellPreBuff3)
	IniWrite($FichierINI, "Run info", "SpellPreBuffDelay3", $SpellPreBuffDelay3)
	IniWrite($FichierINI, "Run info", "SpellDelay3", $SpellDelay3)
	IniWrite($FichierINI, "Run info", "SpellType3", $SpellType3)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeeds3", $SpellEnergyNeeds3)
	IniWrite($FichierINI, "Run info", "SpellLife3", $SpellLife3)
	IniWrite($FichierINI, "Run info", "SpellDistance3", $SpellDistance3)

	IniWrite($FichierINI, "Run info", "SpellOn4", $SpellOn4)
	IniWrite($FichierINI, "Run info", "SpellPreBuff4", $SpellPreBuff4)
	IniWrite($FichierINI, "Run info", "SpellPreBuffDelay4", $SpellPreBuffDelay4)
	IniWrite($FichierINI, "Run info", "SpellDelay4", $SpellDelay4)
	IniWrite($FichierINI, "Run info", "SpellType4", $SpellType4)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeeds4", $SpellEnergyNeeds4)
	IniWrite($FichierINI, "Run info", "SpellLife4", $SpellLife4)
	IniWrite($FichierINI, "Run info", "SpellDistance4", $SpellDistance4)

	IniWrite($FichierINI, "Run info","LifeForPotion",$LifeForPotion)
	IniWrite($FichierINI, "Run info","PotionStock",$PotionStock)

	IniWrite($FichierINI, "Run info","TakeShrines",$TakeShrines)
	IniWrite($FichierINI, "Run info","repairafterxxgames",$repairafterxxgames)
	IniWrite($FichierINI, "Run info","maxgamelength",$maxgamelength)
	IniWrite($FichierINI, "Run info","attackRange",$attackRange)
	IniWrite($FichierINI, "Run info","grabRange",$grabRange)

	IniWrite($FichierINI, "Run info","MonsterTri",$MonsterTri)
	IniWrite($FichierINI, "Run info","MonsterRefresh",$MonsterRefresh)
	IniWrite($FichierINI, "Run info","ItemRefresh",$ItemRefresh)
	IniWrite($FichierINI, "Run info","MonsterPriority",$MonsterPriority)
	IniWrite($FichierINI, "Run info","InventoryCheck",$InventoryCheck)

	IniWrite($FichierINI, "Run info","attacktimeout",$attacktimeout)
	IniWrite($FichierINI, "Run info","grabtimeout",$grabtimeout)

	IniWrite($FichierINI, "Run info","Gestion_affixe",$Gestionaffixe)
	IniWrite($FichierINI, "Run info","Gestion_affixe_loot",$Gestionaffixeloot)
	IniWrite($FichierINI, "Run info","BanAffixList",$BanAffixList)
	IniWrite($FichierINI, "Run info","Gest_affixe_ByClass",$GestaffixeByClass)

    IniWrite($FichierINI, "Run info","Life_Arcane",$LifeArcane)
    IniWrite($FichierINI, "Run info","Life_Peste",$LifePeste)
    IniWrite($FichierINI, "Run info","Life_Profa",$LifeProfa)
    IniWrite($FichierINI, "Run info","Life_Mine",$LifeMine)
    IniWrite($FichierINI, "Run info","Life_Spore",$LifeSpore)
    IniWrite($FichierINI, "Run info","Life_Arm",$LifeArm)
    IniWrite($FichierINI, "Run info","Life_Lave",$LifeLave)
	IniWrite($FichierINI, "Run info","Life_Proj",$LifeProj)
    IniWrite($FichierINI, "Run info","Life_Ice",$LifeIce)
    IniWrite($FichierINI, "Run info","Life_Poison",$LifePoison)
    IniWrite($FichierINI, "Run info","Life_Explo",$LifeExplo)
	IniWrite($FichierINI, "Run info","Life_Lightning",$LifeLightning)

	IniWrite($FichierINI, "Run info","ResLife",$ResLife)
	IniWrite($FichierINI, "Run info","ResActivated",$ResActivated)
	IniWrite($FichierINI, "Run info","UsePath",$UsePath)
	;Début Cracoucas
	IniWrite($FichierINI, "Run info", "LegendaryPotion", $LegendaryPotion)
	IniWrite($FichierINI, "Run info", "AllIndestructibleObject", $AllIndestructibleObject)
	;Fin Cracoucas


	AjoutLog("Enregistrement des modifs du fichier : " & $FichierINI)

EndFunc;==>SaveSettings

;ecriture du fichier settings.ini
Func SaveConfigs($FichierINI)

	IniWrite($FichierINI, "Account info", "pass", $PassD3)

	IniWrite($FichierINI, "Key info", "CloseWindows", $CloseWindows)
	IniWrite($FichierINI, "Key info", "Inventory", $Inventory)
	IniWrite($FichierINI, "Key info", "Potions", $Potions)
	IniWrite($FichierINI, "Key info", "Portal", $Portal)
	IniWrite($FichierINI, "Key info", "OpenMap", $OpenMap)
	IniWrite($FichierINI, "Key info", "key1", $key1)
	IniWrite($FichierINI, "Key info", "key2", $key2)
	IniWrite($FichierINI, "Key info", "key3", $key3)
	IniWrite($FichierINI, "Key info", "key4", $key4)
	IniWrite($FichierINI, "Key info", "MouseMove", $MouseMove)

	IniWrite($FichierINI, "Run info", "PartieSolo", $PartieSolo)
	IniWrite($FichierINI, "Run info", "TakeABreak", $TakeABreak)
	IniWrite($FichierINI, "Run info", "Breakafterxxgames", $Breakafterxxgames)
	IniWrite($FichierINI, "Run info", "BreakTime", $BreakTime)

	IniWrite($FichierINI, "Run info", "QualiteItemKeep", $QualiteItemKeep)
	IniWrite($FichierINI, "Run info", "QualiteItemSalvage", $QualiteItemSalvage)
	IniWrite($FichierINI, "Run info", "QualiteItemSell", $QualiteItemSell)
	IniWrite($FichierINI, "Run info", "UnknownItemAction", $UnknownItemAction)
	IniWrite($FichierINI, "Run info", "Unidentified", $Unidentified)

	IniWrite($FichierINI, "Run info", "TypeDeBot", $TypeDeBot)
	IniWrite($FichierINI, "Run info", "Follower", $Follower)
	IniWrite($FichierINI, "Run info", "difficulte", $difficulte)
	IniWrite($FichierINI, "Run info", "Heros", $Hero)
	IniWrite($FichierINI, "Run info", "PuisMonstre", $PuisMonstre)
	IniWrite($FichierINI, "Run info", "TypeDeGrabList", $TypeDeGrabList)

	IniWrite($FichierINI, "Run info", "Choix_Act_Run", $ChoixActRun)
	IniWrite($FichierINI, "Run info", "Sequence_Aleatoire", $SequenceAleatoire)
	IniWrite($FichierINI, "Run info", "NbreRunChangSeqAlea", $NbreRunChangSeqAlea)
	IniWrite($FichierINI, "Run info", "Nombre_de_Run", $NombredeRun)
	IniWrite($FichierINI, "Run info", "NombreMiniAct1", $NombreMiniAct1)
	IniWrite($FichierINI, "Run info", "NombreMaxiAct1", $NombreMaxiAct1)
	IniWrite($FichierINI, "Run info", "NombreMiniAct2", $NombreMiniAct2)
	IniWrite($FichierINI, "Run info", "NombreMaxiAct2", $NombreMaxiAct2)
	IniWrite($FichierINI, "Run info", "NombreMiniAct3", $NombreMiniAct3)
	IniWrite($FichierINI, "Run info", "NombreMaxiAct3", $NombreMaxiAct3)

	IniWrite($FichierINI, "Run info", "SequenceFileAct1", $SequenceFileAct1)
	IniWrite($FichierINI, "Run info", "SequenceFileAct2", $SequenceFileAct2)
	IniWrite($FichierINI, "Run info", "SequenceFileAct222", $SequenceFileAct222)
	IniWrite($FichierINI, "Run info", "SequenceFileAct232", $SequenceFileAct232)
	IniWrite($FichierINI, "Run info", "SequenceFileAct283", $SequenceFileAct283)
	IniWrite($FichierINI, "Run info", "SequenceFileAct299", $SequenceFileAct299)
	IniWrite($FichierINI, "Run info", "SequenceFileAct3PtSauve", $SequenceFileAct3PtSauve)
	IniWrite($FichierINI, "Run info", "SequenceFileAct3", $SequenceFileAct3)
	IniWrite($FichierINI, "Run info", "SequenceFileAct333", $SequenceFileAct333)
	IniWrite($FichierINI, "Run info", "SequenceFileAct362", $SequenceFileAct362)
	IniWrite($FichierINI, "Run info", "SequenceFileAct373", $SequenceFileAct373)
	IniWrite($FichierINI, "Run info", "SequenceFileAct374", $SequenceFileAct374)
	IniWrite($FichierINI, "Run info", "SequenceFileAct411", $SequenceFileAct411)
	IniWrite($FichierINI, "Run info", "SequenceFileAct442", $SequenceFileAct442)

	IniWrite($FichierINI, "Run info", "SequenceFile", $SequenceFile)
	IniWrite($FichierINI, "Run info", "SequenceFileAdventure", $SequenceFileAdventure)
	IniWrite($FichierINI, "Run info", "BountyAct", $BountyAct)
	;Début Cracoucas
	IniWrite($FichierINI, "Run info", "PauseAfterBounty", $PauseAfterBounty)
	IniWrite($FichierINI, "Run info", "BountyAndSequence", $BountyAndSequence)
	;Fin Cracoucas

	IniWrite($FichierINI, "Run info", "NoBountyFailbackToAdventure", $NoBountyFailbackToAdventure)
	IniWrite($FichierINI, "Run info", "EndSequenceOnBountyCompletion", $EndSequenceOnBountyCompletion)

	IniWrite($FichierINI, "Run info", "priorityMonsterList", $priorityMonsterList)
	IniWrite($FichierINI, "Run info", "monsterList", $monsterList)
	IniWrite($FichierINI, "Run info", "specialmonsterList", $specialmonsterList)
	IniWrite($FichierINI, "Run info", "decorList", $decorList)
	IniWrite($FichierINI, "Run info", "chestList", $chestList)
	IniWrite($FichierINI, "Run info", "rackList", $rackList)

	IniWrite($FichierINI, "Run info", "ChaseElite", $ChaseElite)
	IniWrite($FichierINI, "Run info", "WaitForLoot", $WaitForLoot)

	AjoutLog("Enregistrement des modifs du fichier : " & $FichierINI)

EndFunc;==>SaveConfigs

;ecriture du fichier settingsHeroX.ini
Func SaveConfigsHero($FichierINI)

	IniWrite($FichierINI, "Run info", "SpellOnLeft", $SpellOnLeft)
	IniWrite($FichierINI, "Run info", "SpellDelayLeft", $SpellDelayLeft)
	IniWrite($FichierINI, "Run info", "SpellTypeLeft", $SpellTypeLeft)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeedsLeft", $SpellEnergyNeedsLeft)
	IniWrite($FichierINI, "Run info", "SpellLifeLeft", $SpellLifeLeft)
	IniWrite($FichierINI, "Run info", "SpellDistanceLeft", $SpellDistanceLeft)

	IniWrite($FichierINI, "Run info", "SpellOnRight", $SpellOnRight)
	IniWrite($FichierINI, "Run info", "SpellDelayRight", $SpellDelayRight)
	IniWrite($FichierINI, "Run info", "SpellTypeRight", $SpellTypeRight)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeedsRight", $SpellEnergyNeedsRight)
	IniWrite($FichierINI, "Run info", "SpellLifeRight", $SpellLifeRight)
	IniWrite($FichierINI, "Run info", "SpellDistanceRight", $SpellDistanceRight)

	IniWrite($FichierINI, "Run info", "SpellOn1", $SpellOn1)
	IniWrite($FichierINI, "Run info", "SpellPreBuff1", $SpellPreBuff1)
	IniWrite($FichierINI, "Run info", "SpellPreBuffDelay1", $SpellPreBuffDelay1)
	IniWrite($FichierINI, "Run info", "SpellDelay1", $SpellDelay1)
	IniWrite($FichierINI, "Run info", "SpellType1", $SpellType1)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeeds1", $SpellEnergyNeeds1)
	IniWrite($FichierINI, "Run info", "SpellLife1", $SpellLife1)
	IniWrite($FichierINI, "Run info", "SpellDistance1", $SpellDistance1)

	IniWrite($FichierINI, "Run info", "SpellOn2", $SpellOn2)
	IniWrite($FichierINI, "Run info", "SpellPreBuff2", $SpellPreBuff2)
	IniWrite($FichierINI, "Run info", "SpellPreBuffDelay2", $SpellPreBuffDelay2)
	IniWrite($FichierINI, "Run info", "SpellDelay2", $SpellDelay2)
	IniWrite($FichierINI, "Run info", "SpellType2", $SpellType2)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeeds2", $SpellEnergyNeeds2)
	IniWrite($FichierINI, "Run info", "SpellLife2", $SpellLife2)
	IniWrite($FichierINI, "Run info", "SpellDistance2", $SpellDistance2)

	IniWrite($FichierINI, "Run info", "SpellOn3", $SpellOn3)
	IniWrite($FichierINI, "Run info", "SpellPreBuff3", $SpellPreBuff3)
	IniWrite($FichierINI, "Run info", "SpellPreBuffDelay3", $SpellPreBuffDelay3)
	IniWrite($FichierINI, "Run info", "SpellDelay3", $SpellDelay3)
	IniWrite($FichierINI, "Run info", "SpellType3", $SpellType3)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeeds3", $SpellEnergyNeeds3)
	IniWrite($FichierINI, "Run info", "SpellLife3", $SpellLife3)
	IniWrite($FichierINI, "Run info", "SpellDistance3", $SpellDistance3)

	IniWrite($FichierINI, "Run info", "SpellOn4", $SpellOn4)
	IniWrite($FichierINI, "Run info", "SpellPreBuff4", $SpellPreBuff4)
	IniWrite($FichierINI, "Run info", "SpellPreBuffDelay4", $SpellPreBuffDelay4)
	IniWrite($FichierINI, "Run info", "SpellDelay4", $SpellDelay4)
	IniWrite($FichierINI, "Run info", "SpellType4", $SpellType4)
	IniWrite($FichierINI, "Run info", "SpellEnergyNeeds4", $SpellEnergyNeeds4)
	IniWrite($FichierINI, "Run info", "SpellLife4", $SpellLife4)
	IniWrite($FichierINI, "Run info", "SpellDistance4", $SpellDistance4)

	IniWrite($FichierINI, "Run info","LifeForPotion",$LifeForPotion)
	;Début Cracoucas
	IniWrite($FichierINI, "Run info", "LegendaryPotion", $LegendaryPotion)
	;Fin Cracoucas
	IniWrite($FichierINI, "Run info","PotionStock",$PotionStock)
	IniWrite($FichierINI, "Run info","LifeForHealth",$LifeForHealth)
	IniWrite($FichierINI, "Run info","NbPotionBuy",$NbPotionBuy)
	IniWrite($FichierINI, "Run info","TakeGlobeInFight",$TakeGlobeInFight)
	IniWrite($FichierINI, "Run info","NoEnergyForDecor",$NoEnergyForDecor)

	IniWrite($FichierINI, "Run info","TakeShrines",$TakeShrines)
	IniWrite($FichierINI, "Run info","repairafterxxgames",$repairafterxxgames)
	;Début Cracoucas
	IniWrite($FichierINI, "Run info", "AllIndestructibleObject", $AllIndestructibleObject)
	;Fin Cracoucas
	IniWrite($FichierINI, "Run info","maxgamelength",$maxgamelength)
	IniWrite($FichierINI, "Run info","attackRange",$attackRange)
	IniWrite($FichierINI, "Run info","grabRange",$grabRange)

	IniWrite($FichierINI, "Run info","MonsterTri",$MonsterTri)
	IniWrite($FichierINI, "Run info","MonsterRefresh",$MonsterRefresh)
	IniWrite($FichierINI, "Run info","ItemRefresh",$ItemRefresh)
	IniWrite($FichierINI, "Run info","MonsterPriority",$MonsterPriority)
	IniWrite($FichierINI, "Run info","InventoryCheck",$InventoryCheck)

	IniWrite($FichierINI, "Run info","attacktimeout",$attacktimeout)
	IniWrite($FichierINI, "Run info","grabtimeout",$grabtimeout)

	IniWrite($FichierINI, "Run info","Gestion_affixe",$Gestionaffixe)
	IniWrite($FichierINI, "Run info","Gestion_affixe_loot",$Gestionaffixeloot)
	IniWrite($FichierINI, "Run info","BanAffixList",$BanAffixList)
	IniWrite($FichierINI, "Run info","Gest_affixe_ByClass",$GestaffixeByClass)

    IniWrite($FichierINI, "Run info","Life_Arcane",$LifeArcane)
    IniWrite($FichierINI, "Run info","Life_Peste",$LifePeste)
    IniWrite($FichierINI, "Run info","Life_Profa",$LifeProfa)
    IniWrite($FichierINI, "Run info","Life_Mine",$LifeMine)
    IniWrite($FichierINI, "Run info","Life_Spore",$LifeSpore)
    IniWrite($FichierINI, "Run info","Life_Arm",$LifeArm)
    IniWrite($FichierINI, "Run info","Life_Lave",$LifeLave)
	IniWrite($FichierINI, "Run info","Life_Proj",$LifeProj)
    IniWrite($FichierINI, "Run info","Life_Ice",$LifeIce)
    IniWrite($FichierINI, "Run info","Life_Poison",$LifePoison)
    IniWrite($FichierINI, "Run info","Life_Explo",$LifeExplo)
	IniWrite($FichierINI, "Run info","Life_Lightning",$LifeLightning)

	IniWrite($FichierINI, "Run info","ResLife",$ResLife)
	IniWrite($FichierINI, "Run info","ResActivated",$ResActivated)
	IniWrite($FichierINI, "Run info","UsePath",$UsePath)
	IniWrite($FichierINI, "Run info","HCSecurity",$HCSecurity)
	IniWrite($FichierINI, "Run info","MinHCLife",$MinHCLife)

	AjoutLog("Enregistrement des modifs du fichier : " & $FichierINI)

EndFunc;==>SaveConfigsHero

;;Lecture des options de Settings Arreat Core
Func LectureOptions()

	If $VersionUtilisee = "Modif" Then
		$Devmode = IniRead($SettingsIni, "Run info", "Devmode", "")
		$Debug = IniRead($SettingsIni, "Run info", "debug", "")

		Switch $Debug
			Case 0
				GUICtrlSetState($DebugItem, $GUI_UNCHECKED)
			Case 1
				GUICtrlSetState($DebugItem, $GUI_CHECKED)
		EndSwitch
	Else
		GUICtrlSetState($DebugItem, $GUI_DISABLE);on desactive l'item , l'option n'existe pas dans la version originale
		$Devmode = IniRead(@ScriptDir& "\settings.ini", "Run info", "Devmode", "")
	EndIf

	If $Devmode = "true" Then
		GUICtrlSetState($DevmodeItem, $GUI_CHECKED)
	Else
		GUICtrlSetState($DevmodeItem, $GUI_UNCHECKED)
	EndIf

	$D3PrefsBot = IniRead($OptionsIni, "Optimisations", "D3PrefsBot", "")
	If $D3PrefsBot = "true" Then
		GUICtrlSetState($CpuGpuItem, $GUI_CHECKED)
	Else
		GUICtrlSetState($CpuGpuItem, $GUI_UNCHECKED)
	EndIf

	AjoutLog("Chargement du fichier : " & $OptionsIni)

EndFunc;==>LectureOptions

;;Enregistrement des options de settings Arreat Core
Func EnregOptions()

	iniwrite($OptionsIni, "Optimisations","D3PrefsBot",$D3PrefsBot)

	AjoutLog("Enregistrement des modifs du fichier : " & $OptionsIni)

EndFunc;==>EnregOptions