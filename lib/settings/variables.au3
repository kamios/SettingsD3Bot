;variables.au3

;;Déclaration de variables générales
Global $Logs = ""
Global $Icon = @ScriptDir & "\lib\ico\icon.ico"
Global $VersionAutoIT = "Version d'AutoIT : " & @AutoItVersion

Global $DossierProfils = @ScriptDir & "\settings\profils\"
Global $DossierProfilsOriginale = @ScriptDir & "\settings\profils\originale\"
Global $DossierProfilsModif = @ScriptDir & "\settings\profils\modif\"
Global $DossierProfilsSettings = @ScriptDir & "\settings\profils\settings\"
Global $DossierProfilsSettingsDefaut = @ScriptDir & "\lib\settings\Defaut\"

Global $D3PrefsNormal = $DossierProfilsSettingsDefaut & "D3Prefs_Normal.txt"
Global $D3PrefsD3 = @UserProfileDir & "\Documents\Diablo III\D3Prefs.txt"
Global $D3PrefsPourBot = $DossierProfilsSettingsDefaut & "D3Prefs_Bot.txt"

Global $FichierSettingsOriginaleDefaut = $DossierProfilsSettingsDefaut & "settings.ini"
Global $FichierSettingsDefaut = $DossierProfilsSettingsDefaut & "settings_defaut.ini"
Global $FichierSettingsHeroDefaut = $DossierProfilsSettingsDefaut & "settingshero_Defaut.ini"

Global $DossierLogs = @ScriptDir & "\settings\logs\"
Global $DossierStats = @ScriptDir & "\stats\"
Global $DossierSettingsIni = @ScriptDir & "\settings\"
Global $OptionsIni = @ScriptDir & "\lib\settings\SettingsArreatCore.ini"
Global $DossierGrab = @ScriptDir & "\grablist\"
Global $SettingsIni = @ScriptDir& "\settings\settings.ini"
Global $SettingsHeroIni = @ScriptDir& "\settings\settingsHero1.ini"

Global $RadioSelect = ""
Global $RadioPreced = ""
Global $ProfilSel = ""
Global $VersionUtilisee = ""
Global $Version = "2.0"

;Variables settings.ini
Global $PassD3 = ""

Global $CloseWindows= ""
Global $Inventory = ""
Global $Potions = ""
Global $Portal = ""
Global $OpenMap = ""
Global $key1 = ""
Global $key2 = ""
Global $key3 = ""
Global $key4 = ""
Global $MouseMove = ""

Global $PartieSolo = ""
Global $TakeABreak = ""
Global $Breakafterxxgames = ""
Global $BreakTime = ""

;;Version Origianle
;###############################
Global $QualiteItem = ""
Global $Salvage = ""
Global $SalvageQualiteItem = ""
Global $Master = ""
;###############################

Global $QualiteItemKeep = ""
Global $QualiteItemSalvage = ""
Global $QualiteItemSell = ""
Global $UnknownItemAction = ""
Global $Unidentified = ""

Global $TypeDeBot = ""
Global $Follower = ""
Global $Hero = ""
Global $difficulte = ""
Global $PuisMonstre = ""
Global $TypeDeGrabList = ""

Global $ChoixActRun = ""
Global $SequenceAleatoire = ""
Global $NbreRunChangSeqAlea = ""
Global $NombredeRun = ""
Global $NombreMiniAct1 = ""
Global $NombreMaxiAct1 = ""
Global $NombreMiniAct2 = ""
Global $NombreMaxiAct2 = ""
Global $NombreMiniAct3 = ""
Global $NombreMaxiAct3 = ""

Global $SequenceFileAct1 = ""
Global $SequenceFileAct2 = ""
Global $SequenceFileAct232 = ""
Global $SequenceFileAct283 = ""
Global $SequenceFileAct299 = ""
Global $SequenceFileAct3PtSauve = ""
Global $SequenceFileAct3 = ""
Global $SequenceFileAct222 = ""
Global $SequenceFileAct232 = ""
Global $SequenceFileAct283 = ""
Global $SequenceFileAct299 = ""
Global $SequenceFileAct333 = ""
Global $SequenceFileAct362 = ""
Global $SequenceFileAct373 = ""
Global $SequenceFileAct374 = ""
Global $SequenceFileAct411 = ""
Global $SequenceFileAct442 = ""

Global $SequenceFileAdventure = ""
Global $BountyAct = ""
Global $NoBountyFailbackToAdventure = ""
;Début Cracoucas
Global $PauseAfterBounty =""
Global $BountyAndSequence = ""
;Fin Cracoucas
Global $EndSequenceOnBountyCompletion = ""

Global $SequenceFile = ""

Global $priorityMonsterList = ""
Global $monsterList = ""
Global $specialmonsterList = ""
Global $decorList = ""
Global $chestList = ""
Global $rackList = ""

Global $ChaseElite = ""
Global $WaitForLoot = True

Global $Devmode = ""
Global $Debug = ""

;#Variables settingsHero.ini
Global $SpellOnLeft = ""
Global $SpellDelayLeft = ""
Global $SpellTypeLeft = ""
Global $SpellEnergyNeedsLeft = ""
Global $SpellLifeLeft = ""
Global $SpellDistanceLeft = ""

Global $SpellOnRight = ""
Global $SpellDelayRight = ""
Global $SpellTypeRight = ""
Global $SpellEnergyNeedsRight = ""
Global $SpellLifeRight = ""
Global $SpellDistanceRight = ""

Global $SpellOn1 = ""
Global $SpellPreBuff1 = ""
Global $SpellPreBuffDelay1 = ""
Global $SpellDelay1 = ""
Global $SpellType1 = ""
Global $SpellEnergyNeeds1 = ""
Global $SpellLife1 = ""
Global $SpellDistance1 = ""

Global $SpellOn2 = ""
Global $SpellPreBuff2 = ""
Global $SpellPreBuffDelay2 = ""
Global $SpellDelay2 = ""
Global $SpellType2 = ""
Global $SpellEnergyNeeds2 = ""
Global $SpellLife2 = ""
Global $SpellDistance2 = ""

Global $SpellOn3 = ""
Global $SpellPreBuff3 = ""
Global $SpellPreBuffDelay3 = ""
Global $SpellDelay3 = ""
Global $SpellType3 = ""
Global $SpellEnergyNeeds3 = ""
Global $SpellLife3 = ""
Global $SpellDistance3 = ""

Global $SpellOn4 = ""
Global $SpellPreBuff4 = ""
Global $SpellPreBuffDelay4 = ""
Global $SpellDelay4 = ""
Global $SpellType4 = ""
Global $SpellEnergyNeeds4 = ""
Global $SpellLife4 = ""
Global $SpellDistance4 = ""

Global $SpellOn = ""
Global $SpellPreBuff = ""
Global $SpellPreBuffDelay = ""
Global $SpellDelay = ""
Global $SpellType = ""
Global $SpellEnergyNeeds = ""
Global $SpellLife = ""
Global $SpellDistance = ""

Global $LifeForPotion = ""
Global $PotionStock = ""
Global $LifeForHealth = ""
Global $NbPotionBuy = ""
Global $TakeGlobeInFight = ""
Global $NoEnergyForDecor = ""

Global $TakeShrines = ""
Global $repairafterxxgames = ""
Global $maxgamelength = ""
Global $attackRange = ""
Global $grabRange = ""

Global $MonsterTri = ""
Global $MonsterRefresh = ""
Global $ItemRefresh = ""
Global $MonsterPriority = ""
Global $InventoryCheck = ""

Global $attacktimeout = ""
Global $grabtimeout = ""

Global $Gestionaffixe = ""
Global $Gestionaffixeloot = ""
Global $BanAffixList = ""
Global $GestaffixeByClass = ""

Global $LifeArcane = ""
Global $LifeProj = ""
Global $LifePeste = ""
Global $LifeProfa = ""
Global $LifeIce = ""
Global $LifePoison = ""
Global $LifeExplo = ""
Global $LifeLave = ""
Global $LifeMine = ""
Global $LifeArm = ""
Global $LifeSpore = ""
Global $LifeLightning = ""

Global $UsePath = ""
;Début Cracoucas
$LegendaryPotion = ""
$AllIndestructibleObject = ""
;Fin Cracoucas
Global $ResActivated = ""
Global $ResLife = ""
Global $HCSecurity = ""
Global $MinHCLife = ""

;;Variable Options
Global $D3PrefsBot = ""
