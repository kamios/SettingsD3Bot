;;Settings.ini et settingsHero.ini par défaut
Func ValeurDefaut()
	;;Settings
	$PassD3 = ""

	$CloseWindows = "{SPACE}"
	$Inventory = "i"
	$Potions = "q"
	$Portal = "t"
	$key1 = "&"
	$key2 = "é"
	$key3 = '"'
	$key4 = "'"
	$MouseMove = "middle"

	$PartieSolo = "True"
	$TakeABreak = "True"
	$Breakafterxxgames = 15
	$BreakTime = 360

	$QualiteItemKeep = 9
	$QualiteItemSalvage = "1|2|3|4|5"
	$QualiteItemSell = "6|7|8"
	$UnknownItemAction = "Salvage"
	$Unidentified = "True"

	$TypeDeBot = 2
	$Follower = "False"
	$Heros = 1
	$difficulte = 5
	$PuisMonstre = 1
	$TypeDeGrabList = 1

	$Choix_Act_Run = 1
	$Sequence_Aleatoire = "False"
	$NbreRunChangSeqAlea = 0
	$Nombre_de_Run = 0
	$NombreMiniAct1 = 3
	$NombreMaxiAct1 = 6
	$NombreMiniAct2 = 3
	$NombreMaxiAct2 = 6
	$NombreMiniAct3 = 3
	$NombreMaxiAct3 = 6

	$priorityMonsterList = "Goblin|Uber"
	$monsterList = ""
	$specialmonsterList = "Goblin|brickhouse_|WoodWraith_|Siege_wallMonster|DuneDervish_|Ghost_|Lamprey_|SkeletonSummoner_|Uber"
	$decorList = "Bone|RockPile|DemonCage|Barrel|crate|barricade|_Barricade_|Rock|Log|BonePile"
	$chestList = "Props_Demonic_Container|Crater_Chest|Chest_Snowy|Chest_Frosty|TrOut_Fields_Chest|TrOut_Highlands_Chest|trOut_wilderness_chest|Cath_chest|Chest_Rare|caOut_StingingWinds_Chest|CaOut_Oasis_Chest"
	$rackList = "WeaponRack|ArmorRack|Weapon_Rack_trOut_Highlands"

	;;Séquences
	$SequenceFileAct1 = "act1-manoir_[1-8]|act1-Val_[1-8]|act1-champs_[1-8]"
	$SequenceFileAct2 = "act2-alcarnus_[1-8]|act2-gorge_noire_[1-6]|act2-dalgur_[1-2]"
	$SequenceFileAct222 = "act2-Lieutenant_Vachem|act2-Tuer_Maghda_1"
	$SequenceFileAct232 = "act2-gorge_noire_[1-6]|act2-Tuer_Maghda"
	$SequenceFileAct283 = "act2-gorge_noire_[1-6]|act2-Tuer_Zoltun_Kulle"
	$SequenceFileAct299 = "act2-tuer_Belial"
	$SequenceFileAct3PtSauve = "act3_pt_save_le_coeur_darreat_[1-5]|act3_tower_[1-5]|act3_field_[1-4]|[CMD]TakeWP=0"
	$SequenceFileAct3 = "[CMD]safeportstart()|act3_core_start_[1-5]|act3_tower_[1-5]|act3_field_[1-4]|[CMD]TakeWP=0"
	$SequenceFileAct333 = "act3_rempart_[1-2]|act3_tuer_Ghom"
	$SequenceFileAct362 = "act3_rempart_[1-2]|act3_field_[1-2]|act3-Tuer_Siegebreaker"
	$SequenceFileAct373 = "act3_tower_[1-5]|act3_field_[1-2]|act3-Tuer_Azmodan"
	$SequenceFileAct374 = "act3-Tuer_Azmodan_1|act4-Tuer_Iskatu_1|act4-Tuer_Rakanoth"
	$SequenceFileAct411 = "act4-Tuer_Iskatu|act4-Tuer_Rakanoth"
	$SequenceFileAct442 = "act4-Tuer_Diablo"

	$SequenceFileAdventure = "act3_ADV-core_start_[1-5]|act3_ADV-tower_[1-5]|act3_ADV-field_[1-4]|[CMD]TakeWPAdv=26"
	$BountyAct = "1|2|3"
	$NoBountyFailbackToAdventure = "True"

	$SequenceFile = "act3_ADV-core_start_[1-5]|act3_ADV-tower_[1-5]|act3_ADV-field_[1-4]|[CMD]TakeWPAdv=26"

	$ChaseElite = "True"
	$WaitForLoot = "True"

	;;SettingsHero.ini
	$LifeForPotion = 60
	$PotionStock = 100
	$LifeForHealth = 70
	$NbPotionBuy = 0

	$TakeShrines = "True"
	$repairafterxxgames = 4
	$maxgamelength = 1800000
	$attackRange = 50
	$grabRange = 130

	$MonsterTri = "True"
	$MonsterRefresh = "True"
	$ItemRefresh = "True"
	$MonsterPriority = "False"
	$InventoryCheck = "True"

	$attacktimeout = 15000
	$grabtimeout = 10000

	$Gestionaffixe = "True"
	$Gestionaffixeloot = "True"
	$BanAffixList = ""
	$GestaffixeByClass = "False"

	$LifeArcane = 100
	$LifeProj = 100
	$LifePeste = 70
	$LifeProfa = 100
	$LifeIce = 100
	$LifePoison = 100
	$LifeExplo = 100
	$LifeLave = 70
	$LifeMine = 100
	$LifeArm = 100
	$LifeSpore = 100
	$LifeLightning = 100

	$UsePath = "True"
	$ResActivated = "True"
	$ResLife = 3
	$HCSecurity = "False"
	$MinHCLife = 80

	;;Souris
	$SpellOnLeft = "True"
	$SpellDelayLeft = ""
	$SpellTypeLeft = ""
	$SpellEnergyNeedsLeft = ""
	$SpellLifeLeft = ""
	$SpellDistanceLeft = ""

	$SpellOnRight = "True"
	$SpellDelayRight = ""
	$SpellTypeRight = ""
	$SpellEnergyNeedsRight = ""
	$SpellLifeRight = ""
	$SpellDistanceRight = ""

	;;Touche 1 à 4
	$SpellOn1 = "True"
	$SpellPreBuff1 = "False"
	$SpellPreBuffDelay1 = ""
	$SpellDelay1 = ""
	$SpellType1 = ""
	$SpellEnergyNeeds1 = ""
	$SpellLife1 = ""
	$SpellDistance1 = ""

	$SpellOn2 = "True"
	$SpellPreBuff2 = "False"
	$SpellPreBuffDelay2 = ""
	$SpellDelay2 = ""
	$SpellType2 = ""
	$SpellEnergyNeeds2 = ""
	$SpellLife2 = ""
	$SpellDistance2 = ""

	$SpellOn3 = "True"
	$SpellPreBuff3 = "False"
	$SpellPreBuffDelay3 = ""
	$SpellDelay3 = ""
	$SpellType3 = ""
	$SpellEnergyNeeds3 = ""
	$SpellLife3 = ""
	$SpellDistance3 = ""

	$SpellOn4 = "True"
	$SpellPreBuff4 = "False"
	$SpellPreBuffDelay4 = ""
	$SpellDelay4 = ""
	$SpellType4 = ""
	$SpellEnergyNeeds4 = ""
	$SpellLife4 = ""
	$SpellDistance4 = ""

	AjoutLog("Chargement settings.ini et settingsHero.ini par défaut")
EndFunc