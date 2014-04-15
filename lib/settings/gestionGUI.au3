;;fonction pour remplir la GUI avec settings.ini et settingsHero.ini
Func RemplirSettings()

;###########################################
;Onglet Settings
;###########################################

	GUICtrlSetData($InputPassD3,$PassD3)
	GUICtrlSetData($InputCloseWindows,$CloseWindows)
	GUICtrlSetData($InputInventory,$Inventory)
	GUICtrlSetData($InputPotions,$Potions)
	GUICtrlSetData($InputPortal,$Portal)
	GUICtrlSetData($Inputkey1,$key1)
	GUICtrlSetData($Inputkey2,$key2)
	GUICtrlSetData($Inputkey3,$key3)
	GUICtrlSetData($Inputkey4,$key4)
	GUICtrlSetData($InputMouseMove,$MouseMove)

	If $PartieSolo = "True" Then
		GUICtrlSetState($RadioBotSeul ,$GUI_CHECKED)
	Else
		GUICtrlSetState($RadioBotTeam ,$GUI_CHECKED)
	EndIf

	If $TakeABreak = "True" Then
		GUICtrlSetState($CheckboxPause ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxPause ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($InputApresXparties,$Breakafterxxgames)
	GUICtrlSetData($InputTempsPause,$BreakTime)

	GUICtrlSetData($InputQualiteItemKeep,$QualiteItemKeep)
	GUICtrlSetData($InputQualiteItemSalvage,$QualiteItemSalvage)
	GUICtrlSetData($InputQualiteItemSell,$QualiteItemSell)

	Switch $UnknownItemAction
		Case "Sell"
			GUICtrlSetData($ComboUnknownItemAction, "Vendre")
		Case "Salvage"
			GUICtrlSetData($ComboUnknownItemAction, "Recycler")
	EndSwitch

	If $Unidentified = "True" Then
		GUICtrlSetState($CheckboxFiltreNoID ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxFiltreNoID ,$GUI_UNCHECKED)
	EndIf

	Switch $TypeDeBot
		Case 0
			GUICtrlSetData($ComboTypeBot, "Semi-Manuel")
		Case 1
			GUICtrlSetData($ComboTypeBot, "Auto")
		Case 2
			GUICtrlSetData($ComboTypeBot, "Manuel")
	EndSwitch

	If $Follower = "True" Then
		GUICtrlSetState($CheckboxFollower ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxFollower ,$GUI_UNCHECKED)
	EndIf

	Switch $difficulte
		Case 1
			GUICtrlSetData($ComboDifficulte, "Normal")
		Case 2
			GUICtrlSetData($ComboDifficulte, "Difficile")
		Case 3
			GUICtrlSetData($ComboDifficulte, "Expert")
		Case 4
			GUICtrlSetData($ComboDifficulte, "Calvaire")
		Case 5
			GUICtrlSetData($ComboDifficulte, "Tourment")
	EndSwitch

	Switch $PuisMonstre
		Case 1
			GUICtrlSetData($ComboPM, "Tourment1")
		Case 2
			GUICtrlSetData($ComboPM, "Tourment2")
		Case 3
			GUICtrlSetData($ComboPM, "Tourment3")
		Case 4
			GUICtrlSetData($ComboPM, "Tourment4")
		Case 5
			GUICtrlSetData($ComboPM, "Tourment5")
		Case 6
			GUICtrlSetData($ComboPM, "Tourment6")
	EndSwitch

	Switch $TypeDeGrabList
		Case 1
			GUICtrlSetData($ComboGrablist, "Tourment")
		Case 2
			GUICtrlSetData($ComboGrablist, "TourmentXp")
	EndSwitch

	If $WaitForLoot = "True" Then
		GUICtrlSetState($CheckboxWaitForLoot ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxWaitForLoot ,$GUI_UNCHECKED)
	EndIf

	If $ChaseElite = "True" Then
		GUICtrlSetState($CheckboxChaseElite ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxChaseElite ,$GUI_UNCHECKED)
	EndIf

;###########################################
;Onglet Run
;###########################################

	Switch $ChoixActRun
		Case -3
			GUICtrlSetData($ComboChoixRun, "Mode Bounty")
		Case -2
			GUICtrlSetData($ComboChoixRun, "Mode aventure")
		Case -1
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Acte Aléatoire (Act1,Act2,Act3)")
		Case 0
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Séquence par défaut/Test/etc")
		Case 1
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Act 1")
		Case 2
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Act 2")
		Case 3
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Act 3")
		Case 4
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Lt Vachem et Tuer Maghda")
		Case 5
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer Maghda")
		Case 6
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer Zoltun Kulle")
		Case 7
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer Belial")
		Case 8
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer Ghom")
		Case 9
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer le Briseur de Siège")
		Case 10
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer Asmodan")
		Case 11
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer Asmodan, Iskatu et Rakanoth")
		Case 12
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer Iskatu et Rakanoth")
		Case 13
			GUICtrlSetData($ComboChoixRun, "Mode Campagne : Tuer Diablo")
	EndSwitch

	If $SequenceAleatoire = "True" Then
		GUICtrlSetState($CheckboxSequencesAlea ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxSequencesAlea ,$GUI_UNCHECKED)
	EndIf

	GUICtrlSetData($InputChangementAct,$NbreRunChangSeqAlea)
	GUICtrlSetData($InputChangementRun,$NombredeRun)
	GUICtrlSetData($InputAct1Min,$NombreMiniAct1)
	GUICtrlSetData($InputAct1Max,$NombreMaxiAct1)
	GUICtrlSetData($InputAct2Min,$NombreMiniAct2)
	GUICtrlSetData($InputAct2Max,$NombreMaxiAct2)
	GUICtrlSetData($InputAct3Min,$NombreMiniAct3)
	GUICtrlSetData($InputAct3Max,$NombreMaxiAct3)

	GUICtrlSetData($InputPriorityMonsterList,$priorityMonsterList)
	GUICtrlSetData($InputMonsterList,$monsterList)
	GUICtrlSetData($InputSpecialmonterList,$specialmonsterList)
	GUICtrlSetData($InputDecorList,$decorList)
	GUICtrlSetData($InputChestList,$chestList)
	GUICtrlSetData($InputRackList,$rackList)

	GUICtrlSetData($InputBountyAct,$BountyAct)

	If $NoBountyFailbackToAdventure = "True" Then
		GUICtrlSetState($CheckboxNoAdventure ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxNoAdventure ,$GUI_UNCHECKED)
	EndIf

;###########################################
;Onglet Routines
;###########################################

	GUICtrlSetData($InputLifeForPotion,$LifeForPotion)
	GUICtrlSetData($InputPotionStock,$PotionStock)
	GUICtrlSetData($InputNbPotionBuy,$NbPotionBuy)
	GUICtrlSetData($InputVieGlobes,$LifeForHealth)
	If $TakeShrines = "True" Then
		GUICtrlSetState($CheckboxTakeShrines ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxTakeShrines ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($Inputrepairafterxxgames,$repairafterxxgames)
	GUICtrlSetData($Inputmaxgamelength,$maxgamelength)
	GUICtrlSetData($InputattackRange,$attackRange)
	GUICtrlSetData($InputgrabRange,$grabRange)
	If $MonsterTri = "True" Then
		GUICtrlSetState($CheckboxMonsterTri ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxMonsterTri ,$GUI_UNCHECKED)
	EndIf
	If $MonsterRefresh = "True" Then
		GUICtrlSetState($CheckboxMonsterRefresh ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxMonsterRefresh ,$GUI_UNCHECKED)
	EndIf
	If $ItemRefresh = "True" Then
		GUICtrlSetState($CheckboxItemRefresh ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxItemRefresh ,$GUI_UNCHECKED)
	EndIf
	If $MonsterPriority = "True" Then
		GUICtrlSetState($CheckboxMonsterPriority ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxMonsterPriority ,$GUI_UNCHECKED)
	EndIf
	If $InventoryCheck = "True" Then
		GUICtrlSetState($CheckboxInventoryCheck ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxInventoryCheck ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($Inputattacktimeout,$attacktimeout)
	GUICtrlSetData($Inputgrabtimeout,$grabtimeout)
	If $Gestionaffixe = "True" Then
		GUICtrlSetState($CheckboxGestionaffixe ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxGestionaffixe ,$GUI_UNCHECKED)
	EndIf
	If $Gestionaffixeloot = "True" Then
		GUICtrlSetState($CheckboxGestionaffixeloot ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxGestionaffixeloot ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($InputBanAffixList,$BanAffixList)
	If $GestaffixeByClass = "True" Then
		GUICtrlSetState($CheckboxGestaffixeByClass ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxGestaffixeByClass ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($InputLifeArcane,$LifeArcane)
	GUICtrlSetData($InputLifeProj,$LifeProj)
	GUICtrlSetData($InputLifePeste,$LifePeste)
	GUICtrlSetData($InputLifeProfa,$LifeProfa)
	GUICtrlSetData($InputLifeIce,$LifeIce)
	GUICtrlSetData($InputLifePoison,$LifePoison)
	GUICtrlSetData($InputLifeExplo,$LifeExplo)
	GUICtrlSetData($InputLifeLave,$LifeLave)
	GUICtrlSetData($InputLifeMine,$LifeMine)
	GUICtrlSetData($InputLifeArm,$LifeArm)
	GUICtrlSetData($InputLifeSpore,$LifeSpore)
	GUICtrlSetData($InputLifeLightning,$LifeLightning)
	If $UsePath = "True" Then
		GUICtrlSetState($CheckboxUsePath ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxUsePath ,$GUI_UNCHECKED)
	EndIf
	If $ResActivated = "True" Then
		GUICtrlSetState($CheckboxResActivated ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxResActivated ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($InputResLife,$ResLife)
	If $HCSecurity = "True" Then
		GUICtrlSetState($CheckboxSecuHC ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxSecuHC ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($InputViemini,$MinHCLife)

;###########################################
;Onglet Spell
;###########################################

	If $SpellOnLeft = "True" Then
		GUICtrlSetState($CheckboxSpellOnLeft ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxSpellOnLeft ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($InputSpellDelayLeft,$SpellDelayLeft)
	GUICtrlSetData($InputSpellTypeLeft,$SpellTypeLeft)
	GUICtrlSetData($InputSpellEnergyNeedsLeft,$SpellEnergyNeedsLeft)
	GUICtrlSetData($InputSpellLifeLeft,$SpellLifeLeft)
	GUICtrlSetData($InputSpellDistanceLeft,$SpellDistanceLeft)
	If $SpellOnRight = "True" Then
		GUICtrlSetState($CheckboxSpellOnRight ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxSpellOnRight ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($InputSpellDelayRight,$SpellDelayRight)
	GUICtrlSetData($InputSpellTypeRight,$SpellTypeRight)
	GUICtrlSetData($InputSpellEnergyNeedsRight,$SpellEnergyNeedsRight)
	GUICtrlSetData($InputSpellLifeRight,$SpellLifeRight)
	GUICtrlSetData($InputSpellDistanceRight,$SpellDistanceRight)

	If $SpellOn1 = "True" Then
		GUICtrlSetState($CheckboxTouche ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxTouche ,$GUI_UNCHECKED)
	EndIf
	If $SpellPreBuff1 = "True" Then
		GUICtrlSetState($CheckboxPrebuff ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CheckboxPrebuff ,$GUI_UNCHECKED)
	EndIf
	GUICtrlSetData($InputPrebuffDelay,$SpellPreBuffDelay1)
	GUICtrlSetData($InputSpellDelay,$SpellDelay1)
	GUICtrlSetData($InputSpellType,$SpellType1)
	GUICtrlSetData($InputSpellEnergyNeeds,$SpellEnergyNeeds1)
	GUICtrlSetData($InputSpellLife,$SpellLife1)
	GUICtrlSetData($InputSpellDistance,$SpellDistance1)

;###########################################
;Onglet Séquences
;###########################################

	GUICtrlSetData($InputSequenceAct1,$SequenceFileAct1)
	GUICtrlSetData($InputSequenceAct2,$SequenceFileAct2)
	GUICtrlSetData($InputSequenceAct3Pt,$SequenceFileAct3PtSauve)
	GUICtrlSetData($InputSequenceAct3,$SequenceFileAct3)
	GUICtrlSetData($InputSequenceTest,$SequenceFile)
	GUICtrlSetData($InputSequenceAventure,$SequenceFileAdventure)

;###########################################
;Onglet Séquences Boss
;###########################################

	GUICtrlSetData($InputSequenceAct222,$SequenceFileAct222)
	GUICtrlSetData($InputSequenceAct232,$SequenceFileAct232)
	GUICtrlSetData($InputSequenceAct283,$SequenceFileAct283)
	GUICtrlSetData($InputSequenceAct299,$SequenceFileAct299)
	GUICtrlSetData($InputSequenceAct333,$SequenceFileAct333)
	GUICtrlSetData($InputSequenceAct362,$SequenceFileAct362)
	GUICtrlSetData($InputSequenceAct373,$SequenceFileAct373)
	GUICtrlSetData($InputSequenceAct374,$SequenceFileAct374)
	GUICtrlSetData($InputSequenceAct411,$SequenceFileAct411)
	GUICtrlSetData($InputSequenceAct442,$SequenceFileAct442)


	AjoutLog("Remplissage des données avec le settings.ini et le settingsHero.ini")
EndFunc;==>RemplirSettings

;;On récupère les données de la GUI pour settings.ini et settingsHero.ini
Func RecupDonneesSettings()

;###########################################
;Onglet Settings
;###########################################

	$PassD3 = GUICtrlRead($InputPassD3)

	$CloseWindows= GUICtrlRead($InputCloseWindows)
	$Inventory = GUICtrlRead($InputInventory)
	$Potions = GUICtrlRead($InputPotions)
	$Portal = GUICtrlRead($InputPortal)
	$key1 = GUICtrlRead($Inputkey1)
	$key2 = GUICtrlRead($Inputkey2)
	$key3 = GUICtrlRead($Inputkey3)
	$key4 = GUICtrlRead($Inputkey4)
	$MouseMove = GUICtrlRead($InputMouseMove)

	If IsChecked($RadioBotSeul) Then
		$PartieSolo = "True"
	Else
		$PartieSolo = "False"
	EndIf
	If IsChecked($CheckboxPause) Then
		$TakeABreak = "True"
	Else
		$TakeABreak = "False"
	EndIf
	$Breakafterxxgames = GUICtrlRead($InputApresXparties)
	$BreakTime = GUICtrlRead($InputTempsPause)

	If IsChecked($CheckboxFollower) Then
		$Follower = "True"
	Else
		$Follower = "False"
	EndIf

	$QualiteItemKeep = GUICtrlRead($InputQualiteItemKeep)
	$QualiteItemSalvage = GUICtrlRead($InputQualiteItemSalvage)
	$QualiteItemSell = GUICtrlRead($InputQualiteItemSell)
	Local $ValComboUnknownItemAction = GUICtrlRead($ComboUnknownItemAction)
	Switch $ValComboUnknownItemAction
		Case "Vendre"
			$UnknownItemAction = "Sell"
		Case "Recycler"
			$UnknownItemAction = "Salvage"
	EndSwitch
	If IsChecked($CheckboxFiltreNoID) Then
		$Unidentified = "True"
	Else
		$Unidentified = "False"
	EndIf
	Local $ValComboTypeBot = GUICtrlRead($ComboTypeBot)
	Switch $ValComboTypeBot
		Case "Semi-Manuel"
			$TypeDeBot = 0
		Case "Auto"
			$TypeDeBot = 1
		Case "Manuel"
			$TypeDeBot = 2
	EndSwitch
	Local $ValComboDiff = GUICtrlRead($ComboDifficulte)
	Switch $ValComboDiff
		Case "Normal"
			$difficulte = 1
		Case "Difficile"
			$difficulte = 2
		case "Expert"
			$difficulte = 3
		Case "Calvaire"
			$difficulte = 4
		Case "Tourment"
			$difficulte = 5
	EndSwitch
	Local $ValComboPM = GUICtrlRead($ComboPM)
	Switch $ValComboPM
		Case "Tourment1"
			$PuisMonstre = 1
		Case "Tourment2"
			$PuisMonstre = 2
		Case "Tourment3"
			$PuisMonstre = 3
		Case "Tourment4"
			$PuisMonstre = 4
		Case "Tourment5"
			$PuisMonstre = 5
		Case "Tourment6"
			$PuisMonstre = 6
	EndSwitch
	Local $ValComboGrab =  GUICtrlRead($ComboGrablist)
	Switch $ValComboGrab
		Case "Tourment"
			$TypeDeGrabList = 1
		Case "TourmentXp"
			$TypeDeGrabList = 2
	EndSwitch

	If IsChecked($CheckboxChaseElite) Then
		$ChaseElite = "True"
	Else
		$ChaseElite = "False"
	EndIf

	If IsChecked($CheckboxWaitForLoot) Then
		$WaitForLoot= "True"
	Else
		$WaitForLoot = "False"
	EndIf

;###########################################
;Onglet Run
;##########################################

	Local $ValComboRun =  GUICtrlRead($ComboChoixRun)
	Switch $ValComboRun
		Case "Mode Bounty"
			$ChoixActRun = -3
		Case "Mode aventure"
			$ChoixActRun = -2
		Case "Mode Campagne : Acte Aléatoire (Act1,Act2,Act3)"
			$ChoixActRun = -1
		Case "Mode Campagne : Séquence par défaut/Test/etc"
			$ChoixActRun = 0
		Case "Mode Campagne : Act 1"
			$ChoixActRun = 1
		Case "Mode Campagne : Act 2"
			$ChoixActRun = 2
		Case "Mode Campagne : Act 3"
			$ChoixActRun = 3
		Case "Mode Campagne : Lt Vachem et Tuer Maghda"
			$ChoixActRun = 222
		Case "Mode Campagne : Tuer Maghda"
			$ChoixActRun = 232
		Case "Mode Campagne : Tuer Zoltun Kulle"
			$ChoixActRun = 283
		Case "Mode Campagne : Tuer Belial"
			$ChoixActRun = 299
		Case "Mode Campagne : Tuer Ghom"
			$ChoixActRun = 333
		Case "Mode Campagne : Tuer le Briseur de Siège"
			$ChoixActRun = 362
		Case "Mode Campagne : Tuer Asmodan"
			$ChoixActRun = 373
		Case "Mode Campagne : Tuer Asmodan, Iskatu et Rakanoth"
			$ChoixActRun = 374
		Case "Mode Campagne : Tuer Iskatu et Rakanoth"
			$ChoixActRun = 411
		Case "Mode Campagne : Tuer Diablo"
			$ChoixActRun = 442
	EndSwitch

	If IsChecked($CheckboxNoAdventure) Then
		$NoBountyFailbackToAdventure = "True"
	Else
		$NoBountyFailbackToAdventure = "False"
	EndIf

	If IsChecked($CheckboxSequencesAlea) Then
		$SequenceAleatoire = "True"
	Else
		$SequenceAleatoire = "False"
	EndIf

	$NbreRunChangSeqAlea = GUICtrlRead($InputChangementAct)
	$NombredeRun = GUICtrlRead($InputChangementRun)
	$NombreMiniAct1 = GUICtrlRead($InputAct1min)
	$NombreMaxiAct1 = GUICtrlRead($InputAct1max)
	$NombreMiniAct2 = GUICtrlRead($InputAct2min)
	$NombreMaxiAct2 = GUICtrlRead($InputAct2max)
	$NombreMiniAct3 = GUICtrlRead($InputAct3min)
	$NombreMaxiAct3 = GUICtrlRead($InputAct3max)

	$priorityMonsterList = GUICtrlRead($InputPriorityMonsterList)
	$monsterList = GUICtrlRead($InputMonsterList)
	$specialmonsterList = GUICtrlRead($InputSpecialmonterList)
	$decorList = GUICtrlRead($InputDecorList)
	$chestList = GUICtrlRead($InputChestList)
	$rackList = GUICtrlRead($InputRackList)

;###########################################
;Onglet Spell
;###########################################

	If IsChecked($CheckboxSpellOnLeft) Then
		$SpellOnLeft = "True"
	Else
		$SpellOnLeft = "False"
	EndIf
	$SpellDelayLeft = GUICtrlRead($InputSpellDelayLeft)
	$SpellTypeLeft = GUICtrlRead($InputSpellTypeLeft)
	$SpellEnergyNeedsLeft = GUICtrlRead($InputSpellEnergyNeedsLeft)
	$SpellLifeLeft = GUICtrlRead($InputSpellLifeLeft)
	$SpellDistanceLeft = GUICtrlRead($InputSpellDistanceLeft)
	
	If IsChecked($CheckboxSpellOnRight) Then
		$SpellOnRight = "True"
	Else
		$SpellOnRight = "False"
	EndIf
	$SpellDelayRight = GUICtrlRead($InputSpellDelayRight)
	$SpellTypeRight = GUICtrlRead($InputSpellTypeRight)
	$SpellEnergyNeedsRight = GUICtrlRead($InputSpellEnergyNeedsRight)
	$SpellLifeRight = GUICtrlRead($InputSpellLifeRight)
	$SpellDistanceRight = GUICtrlRead($InputSpellDistanceRight)

;###########################################
;Onglet Séquences
;###########################################

	$SequenceFileAct1 = GUICtrlRead($InputSequenceAct1)
	$SequenceFileAct2 = GUICtrlRead($InputSequenceAct2)
	$SequenceFileAct3PtSauve = GUICtrlRead($InputSequenceAct3Pt)
	$SequenceFileAct3 = GUICtrlRead($InputSequenceAct3)

	$SequenceFile = GUICtrlRead($InputSequenceTest)
	$SequenceFileAdventure = GUICtrlRead($InputSequenceAventure)

;###########################################
;Onglet Séquences Boss
;###########################################

	$SequenceFileAct222 = GUICtrlRead($InputSequenceAct222)
	$SequenceFileAct232 = GUICtrlRead($InputSequenceAct232)
	$SequenceFileAct283 = GUICtrlRead($InputSequenceAct283)
	$SequenceFileAct299 = GUICtrlRead($InputSequenceAct299)
	$SequenceFileAct333 = GUICtrlRead($InputSequenceAct333)
	$SequenceFileAct362 = GUICtrlRead($InputSequenceAct362)
	$SequenceFileAct373 = GUICtrlRead($InputSequenceAct373)
	$SequenceFileAct374 = GUICtrlRead($InputSequenceAct374)
	$SequenceFileAct411 = GUICtrlRead($InputSequenceAct411)
	$SequenceFileAct442 = GUICtrlRead($InputSequenceAct442)

;###########################################
;Onglet Routines
;###########################################

	$LifeForPotion = GUICtrlRead($InputLifeForPotion)
	$PotionStock = GUICtrlRead($InputPotionStock)
	$NbPotionBuy = GUICtrlRead($InputNbPotionBuy)
	$LifeForHealth = GUICtrlRead($InputVieGlobes)
	If IsChecked($CheckboxTakeShrines) Then
		$TakeShrines = "True"
	Else
		$TakeShrines = "False"
	EndIf
	$repairafterxxgames = GUICtrlRead($Inputrepairafterxxgames)
	$maxgamelength = GUICtrlRead($Inputmaxgamelength)
	$attackRange = GUICtrlRead($InputattackRange)
	$grabRange = GUICtrlRead($InputgrabRange)
	If IsChecked($CheckboxMonsterTri) Then
		$MonsterTri = "True"
	Else
		$MonsterTri = "False"
	EndIf
	If IsChecked($CheckboxMonsterRefresh) Then
		$MonsterRefresh = "True"
	Else
		$MonsterRefresh = "False"
	EndIf
	If IsChecked($CheckboxItemRefresh) Then
		$ItemRefresh = "True"
	Else
		$ItemRefresh = "False"
	EndIf
	If IsChecked($CheckboxMonsterPriority) Then
		$MonsterPriority = "True"
	Else
		$MonsterPriority = "False"
	EndIf
	If IsChecked($CheckboxInventoryCheck) Then
		$InventoryCheck = "True"
	Else
		$InventoryCheck = "False"
	EndIf
	$attacktimeout = GUICtrlRead($Inputattacktimeout)
	$grabtimeout = GUICtrlRead($Inputgrabtimeout)
	If IsChecked($CheckboxGestionaffixe) Then
		$Gestionaffixe = "True"
	Else
		$Gestionaffixe = "False"
	EndIf
	If IsChecked($CheckboxGestionaffixeloot) Then
		$Gestionaffixeloot = "True"
	Else
		$Gestionaffixeloot = "False"
	EndIf
	$BanAffixList = GUICtrlRead($InputBanAffixList)
	If IsChecked($CheckboxGestaffixeByClass) Then
		$GestaffixeByClass = "True"
	Else
		$GestaffixeByClass = "False"
	EndIf
	$LifeArcane = GUICtrlRead($InputLifeArcane)
	$LifeProj = GUICtrlRead($InputLifeProj)
	$LifePeste = GUICtrlRead($InputLifePeste)
	$LifeProfa = GUICtrlRead($InputLifeProfa)
	$LifeIce = GUICtrlRead($InputLifeIce)
	$LifePoison = GUICtrlRead($InputLifePoison)
	$LifeExplo = GUICtrlRead($InputLifeExplo)
	$LifeLave = GUICtrlRead($InputLifeLave)
	$LifeArm = GUICtrlRead($InputLifeArm)
	$LifeSpore = GUICtrlRead($InputLifeSpore)
	$LifeMine = GUICtrlRead($InputLifeMine)
	$LifeLightning = GUICtrlRead($InputLifeLightning)

	If IsChecked($CheckboxResActivated) Then
		$ResActivated = "True"
	Else
		$ResActivated = "False"
	EndIf
	If IsChecked($CheckboxUsePath) Then
		$UsePath = "True"
	Else
		$UsePath = "False"
	EndIf
	$ResLife = GUICtrlRead($InputResLife)
	If IsChecked($CheckboxSecuHC) Then
		$HCSecurity = "True"
	Else
		$HCSecurity = "False"
	EndIf
	$MinHCLife = GUICtrlRead($InputViemini)

	AjoutLog("On récupère les données pour le settings.ini et le settingsHero.ini")
EndFunc;==>RecupDonneesSettings


Func RempliOptions()

	If $D3PrefsBot = "true" Then
		GUICtrlSetState($CpuGpuItem ,$GUI_CHECKED)
	Else
		GUICtrlSetState($CpuGpuItem ,$GUI_UNCHECKED)

		If FileExists($D3PrefsNormal) = 0 Then
			GUICtrlSetState($CpuGpuItem, $GUI_DISABLE)
		EndIf
	EndIf

	If $Devmode = "true" Then
		GUICtrlSetState($DevmodeItem ,$GUI_CHECKED)
	Else
		GUICtrlSetState($DevmodeItem ,$GUI_UNCHECKED)
	EndIf

	if $VersionUtilisee = "Modif" Then
		GUICtrlSetState($VersionItem ,$GUI_CHECKED)
	Else
		GUICtrlSetState($VersionItem ,$GUI_UNCHECKED)
	EndIf

	AjoutLog("Remplissage des options : " & $OptionsIni)
EndFunc;==>RempliOtions


Func RecupOtions()

	If IsChecked($CpuGpuItem) Then
		$D3PrefsBot = "true"
	Else
		$D3PrefsBot = "false"
	EndIf
	AjoutLog("On récupère les options : " & $OptionsIni)
EndFunc;==>RecupOtions