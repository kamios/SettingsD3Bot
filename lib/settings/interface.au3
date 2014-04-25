; -- Created with ISN Form Studio 2 for ISN AutoIt Studio -- ;

#NoTrayIcon

Global $MainForm = GUICreate("Settings D3BOT",617,305,-1,-1,-1,-1)
GUISetIcon(@ScriptDir & "\lib\ico\icon.ico")

;;Menu
$OutilsMenu = GUICtrlCreateMenu("Outils")
$LogsItem = GUICtrlCreateMenuItem("Afficher les logs", $OutilsMenu)
$StatsItem = GUICtrlCreateMenuItem("Afficher les stats", $OutilsMenu)
$GrablistsItem = GUICtrlCreateMenuItem("Afficher les grablists", $OutilsMenu)
$OptionsMenu = GUICtrlCreateMenu("Options")
$VersionItem = GUICtrlCreateMenuItem("Version modifiée", $OptionsMenu)
GUICtrlCreateMenuitem("", $OptionsMenu)
$EnreD3PrefsItem = GUICtrlCreateMenuItem("Enregistrer le D3Prefs.txt", $OptionsMenu)
$CpuGpuItem = GUICtrlCreateMenuItem("Cpu/gpu pour Bot", $OptionsMenu)
GUICtrlCreateMenuitem("", $OptionsMenu)
$DebugItem = GUICtrlCreateMenuItem("Debug (logs)", $OptionsMenu)
$DevmodeItem = GUICtrlCreateMenuItem("Devmode", $OptionsMenu)
$HelpMenu = GUICtrlCreateMenu("?")
$InfoItem = GUICtrlCreateMenuItem("Aide", $HelpMenu)
$AproposItem = GUICtrlCreateMenuItem("A propos", $HelpMenu)
;;Fin Menu

;;Groupe Profils
GUICtrlCreateGroup("Profils",5,5,441,272,-1,-1)
GUICtrlSetResizing(-1,  $GUI_DOCKALL)
GUICtrlSetBkColor(-1,"0xF0F0F0")
Global $AddProfil = GUICtrlCreateButton("Ajouter Profil",10,250,100,22,-1,-1)
GUICtrlSetResizing(-1,  $GUI_DOCKALL)
Global $EditProfil = GUICtrlCreateButton("Editer Profil",110,250,100,22,-1,-1)
GUICtrlSetResizing(-1,  $GUI_DOCKALL)
Global $DeleteProfil = GUICtrlCreateButton("Effacer Profil",210,250,100,22,-1,-1)
GUICtrlSetResizing(-1,  $GUI_DOCKALL)
Global $ChargerProfil = GUICtrlCreateButton("Charger Profil",340,250,100,22,-1,-1)
GUICtrlSetResizing(-1,  $GUI_DOCKALL)
Global $ListviewProfils = GUICtrlCreatelistview("",10,20,430,225,-1,512)
GUICtrlSetResizing(-1,  $GUI_DOCKALL)
Global $ImageLogo = GUICtrlCreatePic(@ScriptDir & "\lib\images\logo.jpg",455,10,156,156,-1,-1)
GUICtrlSetResizing(-1,  $GUI_DOCKALL)
_GUICtrlListView_InsertColumn($ListviewProfils, 0, "Profil", 100)
_GUICtrlListView_InsertColumn($ListviewProfils, 1, "Nom du perso", 100)
_GUICtrlListView_InsertColumn($ListviewProfils, 2, "Build", 226)
;; Fin Groupe Profils

Func ChoixVersion()

	Global $ChoixVersion = GUICreate("Choix de la version utilisée",326,102,-1,-1,$WS_POPUP+$WS_BORDER,$WS_EX_TOPMOST)
	Global $RadioArreatCoreOriginal = GUICtrlCreateRadio("D3 Ros Bot",15,33,82,20,-1,-1)
	Global $RadioArreatCoreModif = GUICtrlCreateRadio("D3 Ros Bot : Version modifiée",127,33,195,20,-1,-1)
	GUICtrlCreateLabel("Veuillez choisir la version que vous utilisé :",15,5,299,25,-1,-1)
	GUICtrlSetFont(-1,10,700,4,"MS Sans Serif")
	GUICtrlSetBkColor(-1,"-2")
	Global $ButtonValiderChoixVersion = GUICtrlCreateButton("Valider",15,68,292,27,-1,-1)
	GUISetState(@SW_SHOW,$ChoixVersion)

	AjoutLog("Ouverture de la fenêtre : Choix de la version")
	GUICtrlSetState($RadioArreatCoreModif, $GUI_CHECKED);on selectionne la version originale par défaut

	GUICtrlSetState($RadioArreatCoreOriginal, $GUI_DISABLE);on désactive le choix pour le moment

	While 1

		$nMsg = GUIGetMsg()

		Switch $nMsg

			Case $ButtonValiderChoixVersion

				If IsChecked($RadioArreatCoreOriginal) Then
					$VersionUtilisee = "Originale"
				Else
					$VersionUtilisee = "Modif"
				EndIf

				;on enregistre la version utilisée dans SettingsArreatCore.ini
				iniwrite($OptionsIni, "Infos","VersionUtilisee",$VersionUtilisee)

				GUIDelete($ChoixVersion)
				AjoutLog("Fermeture de la fenêtre : Choix de la version")
				GUISetState(@SW_SHOW, $MainForm)
				ExitLoop

		EndSwitch
	WEnd
EndFunc;==>ChoixVersion

Func Apropos()

	$Apropos = GUICreate("A Propos",350,166,-1,-1,-1,$WS_EX_TOPMOST)
	GUISetIcon(@ScriptDir & "\lib\ico\icon.ico")
	$ButtonFermerApropos = GUICtrlCreateButton("Quitter",266,140,79,20,-1,-1)
	$ImageApropos = GUICtrlCreatePic(@ScriptDir & "\lib\images\logo.jpg",5,5,156,156,-1,-1)
	GUICtrlCreateLabel("Settings D3BOT",195,10,117,21,-1,-1)
	GUICtrlSetFont(-1,10,700,0,"MS Sans Serif")
	GUICtrlSetBkColor(-1,"-2")
	$LabelVersionApropos = GUICtrlCreateLabel("Version " & $Version,225,32,67,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Pour plus d'information :",170,100,118,15,-1,-1)
	GUICtrlSetFont(-1,8,400,4,"MS Sans Serif")
	GUICtrlSetBkColor(-1,"-2")
	$LabelLienForum = GuiCtrlCreateHyperlink("http://forum.gmstemple.com/",175,120,166,15,0x0000ff,"Cliquer pour accéder au site !")
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Développer par Sebo.",175,56,127,15,-1,-1)
	GUICtrlSetColor(-1,"0x008000")
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Remerciement à Jiisan.",175,75,153,15,-1,-1)
	GUICtrlSetColor(-1,"0x008000")
	GUICtrlSetBkColor(-1,"-2")
	GUISetState(@SW_SHOW,$Apropos)

	AjoutLog("Affichage de la fenêtre A Propos")
	GUICtrlSetData($LabelVersionApropos, "Version " & $Version)

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($Apropos)
				AjoutLog("Fermeture de la fenêtre A Propos")
				ExitLoop

			Case $ButtonFermerApropos
				GUIDelete($Apropos)
				AjoutLog("Fermeture de la fenêtre A Propos")
				ExitLoop

			Case $LabelLienForum
				ShellExecute("http://forum.gmstemple.com/")

		EndSwitch
	WEnd

EndFunc;==>Apropos

Func Logs()

 	Global $MainLogs = GUICreate("Logs",536,535,-1,-1,-1,-1)
	GUISetIcon(@scriptdir & "\lib\ico\icon.ico", -1)
	Global $EditLogs = GUICtrlCreateEdit("",5,5,525,495,3145728,-1)
	Global $ButtonExporterLogs = GUICtrlCreateButton("Exporter",430,505,100,25,-1,-1)
	Global $ButtonEffacerLogs = GUICtrlCreateButton("Effacer",220,505,100,25,-1,-1)
	Global $ButtonFermerLogs = GUICtrlCreateButton("Fermer",325,505,100,25,-1,-1)
	GUISetState(@SW_SHOW,$MainLogs)

	AjoutLog("Ouverture de la fenêtre Logs")
	GUICtrlSetData($EditLogs,$Logs)

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($MainLogs)
				AjoutLog("Fermeture de la fenêtre Logs")
				ExitLoop

			Case $ButtonFermerLogs
				GUIDelete($MainLogs)
				AjoutLog("Fermeture de la fenêtre Logs")
				ExitLoop

			Case $ButtonEffacerLogs
				GUICtrlSetData($EditLogs,"")

			Case $ButtonExporterLogs
				CreerFichierLogs ()
				GUICtrlSetData($EditLogs,$Logs)

		EndSwitch
	WEnd

EndFunc;==>Logs

Func Grablists()

	Global $Grablist = GUICreate("Grablists",668,420,-1,-1,-1,-1)
	GUISetIcon(@ScriptDir & "\lib\ico\icon.ico")
	Global $EditGrablists = GUICtrlCreateEdit("",5,40,659,376,-1,-1)
	Global $ComboLectureGrablist = GUICtrlCreateCombo("",80,10,150,21,-1,-1)
	If $VersionUtilisee = "Originale" Then
		GUICtrlSetData(-1,"grablist_file.txt")
	Else
		GUICtrlSetData(-1,"grabListTourment.txt|grabListTourmentXp.txt|grablistNormal.txt|grablistDifficile.txt|grablistExpert.txt|grablistCalvaire.txt|grablistXp.txt")
	EndIf
	GUICtrlCreateLabel("Grablists :",15,15,50,15,-1,-1)
	GUICtrlSetFont(-1,8,400,4,"MS Sans Serif")
	GUICtrlSetBkColor(-1,"-2")
	Global $ButtonEnregistrerModif = GUICtrlCreateButton("Enregistrer les modifications",501,10,155,25,-1,-1)
	Global $ButtonFermerGrablist = GUICtrlCreateButton("Fermer",415,10,83,25,-1,-1)
	GUISetState(@SW_SHOW,$Grablist)

	AjoutLog("Ouverture de la fenêtre Grablist")

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($Grablist)
				AjoutLog("Fermeture de la fenêtre Grablist")
				ExitLoop

			Case $ButtonFermerGrablist
				GUIDelete($Grablist)
				AjoutLog("Fermeture de la fenêtre Grablist")
				ExitLoop

			Case $ButtonEnregistrerModif
				CreerFichier()


			Case $ComboLectureGrablist
				LectureGrablist()


		EndSwitch
	WEnd

EndFunc ;==>Grablists

Func Stats()

	Global $Stats = GUICreate("Stats",646,401,-1,-1,-1,-1)
	GUISetIcon(@scriptdir & "\lib\ico\icon.ico", -1)
	Global $EditStats = GUICtrlCreateEdit("",225,5,404,390,-1,-1)
	Global $ListStats = GUICtrlCreatelist("",15,52,200,266,-1,512)
	GUICtrlCreateLabel("Stats du :",15,10,50,15,-1,-1)
	GUICtrlSetFont(-1,8,400,4,"MS Sans Serif")
	GUICtrlSetBkColor(-1,"-2")
	Global $ButtonEffacerStats = GUICtrlCreateButton("Tout effacer",15,320,200,25,-1,-1)
	Global $ButtonCopierStats = GUICtrlCreateButton("Copier dans le presse-papier",15,370,200,25,-1,-1)
	Global $LabelDateStats = GUICtrlCreateLabel("",15,30,195,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $ButtonFermerStats = GUICtrlCreateButton("Fermer",15,345,200,25,-1,-1)
	GUISetState(@SW_SHOW,$Stats)

	AjoutLog("Ouverture de la fenêtre Stats")
	if FileExists($DossierStats) = 0 Then DirCreate($DossierStats)

	ListFichier($DossierStats,1)

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				GUIDelete($Stats)
				AjoutLog("Fermeture de la fenêtre Stats")
				ExitLoop

			Case $ButtonFermerStats
				GUIDelete($Stats)
				AjoutLog("Fermeture de la fenêtre Stats")
				ExitLoop

			Case $ButtonEffacerStats

				DirRemove($DossierStats, 1)
				DirCreate($DossierStats)
				ListFichier($DossierStats,1)
				GUICtrlSetData($EditStats,"")
				AjoutLog("Effacement des stats")

			Case $ButtonCopierStats
				Local $StatsCopier = GUICtrlRead($EditStats)
				ClipPut($StatsCopier)
				AjoutLog("Copie des stats dans le presse-papier")

			Case $ListStats

				GUICtrlSetData($EditStats,"")
				If GUICtrlRead($ListStats) = "" or GUICtrlRead($ListStats) = "Aucune stat" Then
					GUICtrlSetData($EditStats,"Aucune stat de dispo")
				Else
					Local $FichierLu = $DossierStats & GUICtrlRead($ListStats)
					ParseFichierStats(GUICtrlRead($ListStats))
					AfficheStats($FichierLu)
				EndIf

		EndSwitch
	WEnd

EndFunc;==>Stats

Func EditSettingsOri($ProfilSel)

EndFunc;==>EditSettingsOri

Func EditSettings($ProfilSel)

	Global $settings = GUICreate("Modification du Profil :  " & $ProfilSel,731,368,-1,-1,-1,-1)
	GUISetIcon(@scriptdir & "\lib\ico\icon.ico", -1)
	Global $tab = GUICtrlCreatetab(11,10,712,313,-1,-1)
	GuiCtrlSetState(-1,2048)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateTabItem("Settings")
	GUICtrlCreateTabItem("Runs")
	GUICtrlCreateTabItem("Séquences")
	GUICtrlCreateTabItem("Séquences Boss")
	GUICtrlCreateTabItem("Routines")
	GUICtrlCreateTabItem("Spells")
	GUICtrlCreateTabItem("")
	_GUICtrlTab_SetCurFocus($tab,-1)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,0)&GUICtrlRead ($tab, 1))
	GUICtrlCreateLabel("Pass D3 :",18,44,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputPassD3 = GUICtrlCreateInput("",68,39,150,20,-1,512)
	Global $RadioBotSeul = GUICtrlCreateRadio("Bot seul",235,39,60,20,-1,-1)
	GUICtrlCreateGroup("Gestion Raccourcis",18,68,182,242,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $RadioBotTeam = GUICtrlCreateRadio("Bot en team",304,39,80,20,-1,-1)
	GUICtrlCreateLabel("CoseWindows :",25,88,75,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputCloseWindows = GUICtrlCreateInput("",104,83,88,20,1,512)
	GUICtrlCreateLabel("Inventaire :",25,138,66,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputMouseMove = GUICtrlCreateInput("",104,108,88,20,1,512)
	Global $InputInventory = GUICtrlCreateInput("",104,133,32,20,1,512)
	GUICtrlCreateLabel("MouseMove :",25,113,66,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputPotions = GUICtrlCreateInput("",104,158,32,20,1,512)
	Global $InputPortal = GUICtrlCreateInput("",104,183,32,20,1,512)
	GUICtrlCreateLabel("Potions :",25,163,66,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Portal :",25,188,66,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $Inputkey1 = GUICtrlCreateInput("",104,208,32,20,1,512)
	Global $Inputkey2 = GUICtrlCreateInput("",104,233,32,20,1,512)
	Global $Inputkey3 = GUICtrlCreateInput("",104,258,32,20,1,512)
	Global $Inputkey4 = GUICtrlCreateInput("",104,283,32,20,1,512)
	GUICtrlCreateLabel("Key1 :",25,213,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Key2 :",25,238,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Key4 :",25,288,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Key3 :",25,263,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateGroup("Gestion Pauses",210,68,174,95,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateGroup("Gestion Loots",210,165,174,145,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $CheckboxPause = GUICtrlCreateCheckbox("Pause",217,83,114,20,-1,-1)
	Global $InputApresXparties = GUICtrlCreateInput("",342,108,34,20,1,512)
	Global $InputTempsPause = GUICtrlCreateInput("",342,133,34,20,1,512)
	GUICtrlCreateLabel("Pause après X parties :",216,113,114,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Temps de Pause :",217,138,92,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlSetTip(-1,"Temps de pause en seconde ==> 6 min x 60 s = 360 s")
	GUICtrlCreateLabel("Objets stockés :",216,185,88,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Objets recyclés :",217,210,87,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Objets vendus :",217,235,87,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputQualiteItemKeep = GUICtrlCreateInput("",307,180,69,20,1,512)
	Global $InputQualiteItemSalvage = GUICtrlCreateInput("",307,205,69,20,1,512)
	Global $InputQualiteItemSell = GUICtrlCreateInput("",307,230,69,20,1,512)
	Global $CheckboxFiltreNoID = GUICtrlCreateCheckbox("Non Identifié",216,280,150,20,-1,-1)
	Global $ComboUnknownItemAction = GUICtrlCreateCombo("",307,255,69,21,-1,-1)
	GUICtrlSetData(-1,"Vendre|Recycler")
	GUICtrlCreateLabel("Trash Sac :",216,258,77,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateGroup("Gestion Games",392,69,192,169,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $ComboTypeBot = GUICtrlCreateCombo("",476,82,100,21,-1,-1)
	GUICtrlSetData(-1,"Semi-Manuel|Auto|Manuel")
	GUICtrlCreateLabel("Type de Bot :",400,88,72,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $ComboPM = GUICtrlCreateCombo("",476,133,100,21,-1,-1)
	GUICtrlSetData(-1,"Tourment1|Tourment2|Tourment3|Tourment4|Tourment5|Tourment6")
	Global $ComboDifficulte = GUICtrlCreateCombo("",476,108,100,21,-1,-1)
	GUICtrlSetData(-1,"Normal|Difficile|Expert|Calvaire|Tourment")
	GUICtrlCreateLabel("Difficulté :",400,113,72,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("P. Monstres :",400,139,69,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Grablist :",400,164,69,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $ComboGrablist = GUICtrlCreateCombo("",476,158,100,21,-1,-1)
	GUICtrlSetData(-1,"Tourment|TourmentXp")
	Global $CheckboxFollower = GUICtrlCreateCheckbox("Follower",400,211,150,20,-1,-1)
	Global $ComboHero = GUICtrlCreateCombo("",476,183,100,21,-1,-1)
	GUICtrlSetData(-1,"Hero1|Hero2|Hero3|Hero4|Hero5|Hero6|Hero7|Hero8|Hero9|Hero10|Hero11|Hero12")
	GUICtrlCreateLabel("Hero :",400,187,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateTabItem("")
	Global $ButtonEnregistrerSettings = GUICtrlCreateButton("Enregistrer les modifications",562,330,161,30,-1,-1)
	Global $ButtonParDefautSettings = GUICtrlCreateButton("Valeurs par défaut",447,330,111,30,-1,-1)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,0)&GUICtrlRead ($tab, 1))
	Global $CheckboxChaseElite = GUICtrlCreateCheckbox("ChaseElite",597,82,89,21,-1,-1)
	Global $CheckboxWaitForLoot = GUICtrlCreateCheckbox("WaitForLoot",597,108,89,20,-1,-1)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,1)&GUICtrlRead ($tab, 1))
	Global $ComboChoixRun = GUICtrlCreateCombo("",106,40,272,20,-1,-1)
	GUICtrlSetData(-1,"Mode Bounty|Mode aventure|Mode Campagne : Acte Aléatoire (Act1,Act2,Act3)|Mode Campagne : Séquence par défaut/Test/etc|Mode Campagne : Act 1|Mode Campagne : Act 2|Mode Campagne : Act 3|Mode Campagne : Lt Vachem et Tuer Maghda|Mode Campagne : Tuer Maghda|Mode Campagne : Tuer Zoltun Kulle|Mode Campagne : Tuer Belial|Mode Campagne : Tuer Ghom|Mode Campagne : Tuer le Briseur de Siège|Mode Campagne : Tuer Asmodan|Mode Campagne : Tuer Asmodan, Iskatu et Rakanoth|Mode Campagne : Tuer Iskatu et Rakanoth|Mode Campagne : Tuer Diablo")
	GUICtrlCreateLabel("Chois du Run :",22,45,78,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateGroup("Séquence Aléatoire",385,37,327,98,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $CheckboxSequencesAlea = GUICtrlCreateCheckbox("Activé",398,53,150,20,-1,-1)
	GUICtrlCreateLabel("Changement Acte :",395,81,99,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputChangementAct = GUICtrlCreateInput("",515,76,33,21,1,512)
	GUICtrlCreateLabel("Changement Run :",395,109,99,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputChangementRun = GUICtrlCreateInput("",515,103,33,21,1,512)
	GUICtrlCreateLabel("Act1 (min-max) :",561,57,77,13,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputAct1Max = GUICtrlCreateInput("",677,51,25,20,1,512)
	Global $InputAct1Min = GUICtrlCreateInput("",644,51,25,20,1,512)
	Global $InputAct2Min = GUICtrlCreateInput("",644,77,25,20,1,512)
	Global $InputAct2Max = GUICtrlCreateInput("",677,77,25,20,1,512)
	Global $InputAct3Max = GUICtrlCreateInput("",677,103,25,20,1,512)
	Global $InputAct3Min = GUICtrlCreateInput("",644,103,25,20,1,512)
	GUICtrlCreateLabel("Act2 (min-max) :",561,84,77,13,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Act3 (min-max) :",561,110,77,13,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("BountyAct :",22,75,73,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputBountyAct = GUICtrlCreateInput("",104,68,88,20,1,512)
	Global $InputRackList = GUICtrlCreateInput("",149,290,532,20,-1,512)
	GUICtrlCreateLabel("List des Racks :",22,295,135,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Liste des Coffres :",22,270,98,13,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Liste du Decor :",22,247,78,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputChestList = GUICtrlCreateInput("",149,266,532,20,-1,512)
	Global $InputDecorList = GUICtrlCreateInput("",149,242,532,20,-1,512)
	GUICtrlCreateLabel("Liste Monstres Spéciaux :",22,222,145,13,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Liste Monstres :",22,198,102,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Priorité Monstres :",22,176,108,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpecialmonterList = GUICtrlCreateInput("",149,218,532,20,-1,512)
	Global $InputPriorityMonsterList = GUICtrlCreateInput("",149,170,532,20,-1,512)
	Global $InputMonsterList = GUICtrlCreateInput("",149,194,532,20,-1,512)
	Global $ChekboxEndSequence = GUICtrlCreateCheckbox("Quitter la séquence quand la prime est validée",22,117,255,21,-1,-1)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,2)&GUICtrlRead ($tab, 1))
	Global $InputSequenceAct2 = GUICtrlCreateInput("",129,59,552,18,-1,512)
	Global $InputSequenceAct1 = GUICtrlCreateInput("",129,37,552,18,-1,512)
	Global $InputSequenceAct3 = GUICtrlCreateInput("",129,81,552,18,-1,512)
	Global $InputSequenceAct3Pt = GUICtrlCreateInput("",129,103,552,18,-1,512)
	Global $InputSequenceTest = GUICtrlCreateInput("",129,158,552,18,-1,512)
	Global $InputSequenceAventure = GUICtrlCreateInput("",129,180,552,18,-1,512)
	GUICtrlCreateLabel("Séquence Acte 1 :",18,40,102,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Séquence Acte 2 :",18,62,102,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Séquence Acte 3 :",18,84,102,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Séquence Acte 3 PT :",18,107,128,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Séquence Test :",18,161,102,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Séquence Aventure :",18,183,102,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $ButtonResetSequenceAventure = GUICtrlCreateButton("R",686,178,21,20,-1,-1)
	Global $ButtonResetSequenceTest = GUICtrlCreateButton("R",686,156,21,20,-1,-1)
	Global $ButtonResetAct3PT = GUICtrlCreateButton("R",686,102,21,20,-1,-1)
	Global $ButtonResetAct3 = GUICtrlCreateButton("R",686,80,21,20,-1,-1)
	Global $ButtonResetAct1 = GUICtrlCreateButton("R",686,36,21,20,-1,-1)
	Global $ButtonResetAct2 = GUICtrlCreateButton("R",686,58,21,20,-1,-1)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,1)&GUICtrlRead ($tab, 1))
	Global $ButtonResetPrioMonstre = GUICtrlCreateButton("R",687,170,21,20,-1,-1)
	Global $ButtonResetListeMonstres = GUICtrlCreateButton("R",687,194,21,20,-1,-1)
	Global $ButtonResetListeMonstreSpe = GUICtrlCreateButton("R",687,218,21,20,-1,-1)
	Global $ButtonResetListeDecor = GUICtrlCreateButton("R",687,241,21,20,-1,-1)
	Global $ButtonResetListeCoffre = GUICtrlCreateButton("R",687,266,21,20,-1,-1)
	Global $ButtonResetListeRack = GUICtrlCreateButton("R",687,290,21,20,-1,-1)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,3)&GUICtrlRead ($tab, 1))
	Global $ButtonResetSequence222 = GUICtrlCreateButton("R",688,43,21,20,-1,-1)
	Global $InputSequenceAct222 = GUICtrlCreateInput("",129,44,552,18,-1,512)
	Global $InputSequenceAct232 = GUICtrlCreateInput("",129,66,552,18,-1,512)
	Global $InputSequenceAct283 = GUICtrlCreateInput("",129,88,552,18,-1,512)
	Global $InputSequenceAct299 = GUICtrlCreateInput("",129,110,552,18,-1,512)
	Global $InputSequenceAct333 = GUICtrlCreateInput("",129,132,552,18,-1,512)
	Global $InputSequenceAct362 = GUICtrlCreateInput("",130,154,552,18,-1,512)
	Global $InputSequenceAct374 = GUICtrlCreateInput("",129,176,552,18,-1,512)
	Global $InputSequenceAct373 = GUICtrlCreateInput("",129,198,552,18,-1,512)
	Global $InputSequenceAct411 = GUICtrlCreateInput("",129,220,552,18,-1,512)
	Global $InputSequenceAct442 = GUICtrlCreateInput("",129,242,552,18,-1,512)
	Global $ButtonResetSequence232 = GUICtrlCreateButton("R",688,65,21,20,-1,-1)
	Global $ButtonResetSequence283 = GUICtrlCreateButton("R",688,87,21,20,-1,-1)
	Global $ButtonResetSequence299 = GUICtrlCreateButton("R",688,109,21,20,-1,-1)
	Global $ButtonResetSequence333 = GUICtrlCreateButton("R",688,131,21,20,-1,-1)
	Global $ButtonResetSequence362 = GUICtrlCreateButton("R",688,152,21,20,-1,-1)
	Global $ButtonResetSequence374 = GUICtrlCreateButton("R",688,174,21,20,-1,-1)
	Global $ButtonResetSequence373 = GUICtrlCreateButton("R",688,196,21,20,-1,-1)
	Global $ButtonResetSequence411 = GUICtrlCreateButton("R",688,219,21,20,-1,-1)
	Global $ButtonResetSequence442 = GUICtrlCreateButton("R",688,241,21,20,-1,-1)
	GUICtrlCreateLabel("Lt Vachem / Maghda :",15,47,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Maghda :",15,69,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Zoltun Kulle :",15,92,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Belial :",15,114,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Ghom :",15,136,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Briseur de Siège :",15,158,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Asmo/Iskatu/Raka  :",15,180,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Asmodan :",15,202,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Iskatu / Rakanoth :",15,224,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Diablo :",15,244,107,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,4)&GUICtrlRead ($tab, 1))
	GUICtrlCreateGroup("Gestion Vie",18,36,259,92,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputPotionStock = GUICtrlCreateInput("",117,51,29,20,1,512)
	Global $InputLifeForPotion = GUICtrlCreateInput("",238,51,29,20,1,512)
	Global $InputVieGlobes = GUICtrlCreateInput("",238,78,29,20,1,512)
	Global $InputNbPotionBuy = GUICtrlCreateInput("",117,78,29,20,1,512)
	GUICtrlCreateGroup("Résurrection",608,36,102,70,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $CheckboxResActivated = GUICtrlCreateCheckbox("Activée",619,56,65,20,-1,-1)
	GUICtrlCreateLabel("Nombre :",621,85,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputResLife = GUICtrlCreateInput("",671,80,28,20,1,512)
	GUICtrlCreateGroup("Pause HC",609,108,102,70,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $CheckboxSecuHC = GUICtrlCreateCheckbox("Activée",618,128,65,20,-1,-1)
	GUICtrlCreateLabel("Vie mini :",620,158,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputViemini = GUICtrlCreateInput("",668,153,28,20,1,512)
	GUICtrlCreateLabel("Stock Potions :",27,57,75,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Potions achetée :",27,83,88,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Vie pour Potions :",153,56,88,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Vie pour Globes :",153,83,88,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateGroup("Gestion Affixes",18,132,259,180,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $CheckboxUsePath = GUICtrlCreateCheckbox("UsePath",618,185,63,23,-1,-1)
	Global $InputLifeArcane = GUICtrlCreateInput("",114,142,29,20,1,512)
	Global $InputLifePeste = GUICtrlCreateInput("",237,142,29,20,1,512)
	Global $InputLifeProj = GUICtrlCreateInput("",114,170,29,20,1,512)
	Global $InputLifeLave = GUICtrlCreateInput("",114,198,29,20,1,512)
	Global $InputLifeMine = GUICtrlCreateInput("",114,226,29,20,1,512)
	Global $InputLifeSpore = GUICtrlCreateInput("",114,255,29,20,1,512)
	Global $InputLifeArm = GUICtrlCreateInput("",114,284,29,20,-1,512)
	Global $InputLifeProfa = GUICtrlCreateInput("",237,170,29,20,1,512)
	Global $InputLifeIce = GUICtrlCreateInput("",237,198,29,20,1,512)
	Global $InputLifePoison = GUICtrlCreateInput("",237,226,29,20,1,512)
	Global $InputLifeExplo = GUICtrlCreateInput("",237,255,29,20,1,512)
	Global $InputLifeLightning = GUICtrlCreateInput("",237,284,29,20,1,512)
	GUICtrlCreateLabel("Arcane (%vie) :",25,146,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Proj (%vie) :",25,174,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Lave (%vie) :",25,202,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Mine (%vie) :",25,230,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Arm (%vie) :",25,288,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Spore (%vie) :",25,259,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Profa (%vie) :",152,174,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Peste (%vie) :",152,144,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Glace (%vie) :",152,202,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Poison (%vie) :",152,229,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Explo (%vie) :",152,257,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Elec (%vie) :",152,288,79,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateGroup("",282,36,160,130,-1,-1)
	GUICtrlSetBkColor(-1,"0xF0F0F0")
	GUICtrlCreateGroup("",448,36,155,130,-1,-1)
	GUICtrlSetBkColor(-1,"0xF0F0F0")
	Global $Inputattacktimeout = GUICtrlCreateInput("",386,51,45,20,1,512)
	Global $Inputgrabtimeout = GUICtrlCreateInput("",386,78,45,20,1,512)
	GUICtrlCreateLabel("Tempo. Attaque :",295,56,92,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Dist Attaque :",295,110,112,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Tempo. Collecte :",295,83,96,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Dist Collecte :",295,138,101,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputattackRange = GUICtrlCreateInput("",386,106,45,20,1,512)
	Global $InputgrabRange = GUICtrlCreateInput("",386,134,45,20,1,512)
	GUICtrlCreateGroup("",282,170,182,135,-1,-1)
	GUICtrlSetBkColor(-1,"0xF0F0F0")
	GUICtrlCreateGroup("",470,170,133,135,-1,-1)
	GUICtrlSetBkColor(-1,"0xF0F0F0")
	Global $CheckboxItemRefresh = GUICtrlCreateCheckbox("Vérif. si Objet",479,180,118,20,-1,-1)
	Global $CheckboxInventoryCheck = GUICtrlCreateCheckbox("Vérif. Inventaire",479,205,118,20,-1,-1)
	Global $CheckboxMonsterPriority = GUICtrlCreateCheckbox("Priorité Monstres",479,230,118,20,-1,-1)
	Global $CheckboxMonsterTri = GUICtrlCreateCheckbox("Tri des Monstres",479,255,118,20,-1,-1)
	Global $CheckboxMonsterRefresh = GUICtrlCreateCheckbox("Vérif. si Monstres",479,280,118,20,-1,-1)
	Global $CheckboxGestionaffixe = GUICtrlCreateCheckbox("Gestion des Affixes",291,180,150,20,-1,-1)
	Global $CheckboxGestionaffixeloot = GUICtrlCreateCheckbox("Gestion Affixes Loot",291,205,150,20,-1,-1)
	Global $CheckboxGestaffixeByClass = GUICtrlCreateCheckbox("Gestion Affixes Classe",291,230,150,20,-1,-1)
	Global $InputBanAffixList = GUICtrlCreateInput("",289,278,169,19,-1,512)
	GUICtrlCreateLabel("Bannir Affixes :",291,258,163,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Temps Max / Parties :",461,51,115,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $Inputmaxgamelength = GUICtrlCreateInput("",458,78,106,20,1,512)
	Global $CheckboxTakeShrines = GUICtrlCreateCheckbox("Prendre Sanctuaires",461,133,123,22,-1,-1)
	GUICtrlCreateLabel("Reparation (Partie) :",461,110,106,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $Inputrepairafterxxgames = GUICtrlCreateInput("",567,106,28,20,1,512)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,5)&GUICtrlRead ($tab, 1))
	GUICtrlCreateGroup("Souris Gauche",18,31,696,52,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $CheckboxSpellOnLeft = GUICtrlCreateCheckbox("Activée",24,52,55,21,-1,-1)
	GUICtrlCreateLabel("Délai :",90,57,35,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpellDelayLeft = GUICtrlCreateInput("",127,52,47,19,1,512)
	GUICtrlCreateLabel("Type :",191,55,32,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpellTypeLeft = GUICtrlCreateInput("",230,51,112,20,-1,512)
	GUICtrlCreateLabel("Energie :",360,58,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpellEnergyNeedsLeft = GUICtrlCreateInput("",411,54,37,20,1,512)
	GUICtrlCreateLabel("Vie :",465,58,28,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpellLifeLeft = GUICtrlCreateInput("",495,54,37,20,1,512)
	Global $InputSpellDistanceLeft = GUICtrlCreateInput("",609,54,37,20,1,512)
	GUICtrlCreateLabel("Distance :",548,57,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateGroup("Souris Droite",18,86,696,52,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpellEnergyNeedsRight = GUICtrlCreateInput("",411,106,37,20,1,512)
	Global $InputSpellLifeRight = GUICtrlCreateInput("",495,106,37,20,1,512)
	Global $InputSpellDistanceRight = GUICtrlCreateInput("",609,106,37,20,1,512)
	Global $InputSpellTypeRight = GUICtrlCreateInput("",230,106,112,20,-1,512)
	Global $InputSpellDelayRight = GUICtrlCreateInput("",127,106,47,19,1,512)
	Global $CheckboxSpellOnRight = GUICtrlCreateCheckbox("Activée",24,106,55,21,-1,-1)
	GUICtrlCreateLabel("Délai :",90,110,35,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Type :",191,110,32,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Energie :",360,110,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Vie :",465,111,28,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Distance :",548,111,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateGroup("Spells Secondaires",18,142,696,142,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	If $key1 = "&" Then
		Global $RadioTouche1 = GUICtrlCreateRadio("Premier Spell (" & StringReplace($key1, "&", "&&") & ")",27,163,100,21,-1,-1)
	Else
		Global $RadioTouche1 = GUICtrlCreateRadio("Premier Spell (" & $key1 & ")",27,163,100,21,-1,-1)
	EndIf
	Global $RadioTouche2 = GUICtrlCreateRadio("Deuxième Spell (" & $key2 & ")",141,163,107,21,-1,-1)
	Global $RadioTouche3 = GUICtrlCreateRadio("Troisième Spell (" & $key3 & ")",265,163,116,21,-1,-1)
	Global $RadioTouche4 = GUICtrlCreateRadio("Quatrième Spell (" & $key4 & ")",391,163,109,21,-1,-1)
	Global $CheckboxTouche1 = GUICtrlCreateCheckbox("Activée",27,190,55,21,-1,-1)
	Global $CheckboxTouche2 = GUICtrlCreateCheckbox("Activée",27,190,55,21,-1,-1)
	Global $CheckboxTouche3 = GUICtrlCreateCheckbox("Activée",27,190,55,21,-1,-1)
	Global $CheckboxTouche4 = GUICtrlCreateCheckbox("Activée",27,190,55,21,-1,-1)
	GUICtrlCreateLabel("Délai :",90,195,35,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpellDelay1 = GUICtrlCreateInput("",127,192,47,19,1,512)
	Global $InputSpellDelay2 = GUICtrlCreateInput("",127,192,47,19,1,512)
	Global $InputSpellDelay3 = GUICtrlCreateInput("",127,192,47,19,1,512)
	Global $InputSpellDelay4 = GUICtrlCreateInput("",127,192,47,19,1,512)
	GUICtrlCreateGroup("Prébuff",27,222,178,53,-1,-1)
 	GUICtrlSetBkColor(-1,"-2")
	Global $CheckboxPrebuff1 = GUICtrlCreateCheckbox("Activée",38,243,55,21,-1,-1)
	Global $CheckboxPrebuff2 = GUICtrlCreateCheckbox("Activée",38,243,55,21,-1,-1)
	Global $CheckboxPrebuff3 = GUICtrlCreateCheckbox("Activée",38,243,55,21,-1,-1)
	Global $CheckboxPrebuff4 = GUICtrlCreateCheckbox("Activée",38,243,55,21,-1,-1)
	GUICtrlCreateLabel("Délai :",106,248,35,16,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputPrebuffDelay1 = GUICtrlCreateInput("",146,244,47,19,1,512)
	Global $InputPrebuffDelay2 = GUICtrlCreateInput("",146,244,47,19,1,512)
	Global $InputPrebuffDelay3 = GUICtrlCreateInput("",146,244,47,19,1,512)
	Global $InputPrebuffDelay4 = GUICtrlCreateInput("",146,244,47,19,1,512)
	GUICtrlCreateLabel("Type :",191,197,32,14,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpellType1 = GUICtrlCreateInput("",230,192,112,20,-1,512)
	Global $InputSpellType2 = GUICtrlCreateInput("",230,192,112,20,-1,512)
	Global $InputSpellType3 = GUICtrlCreateInput("",230,192,112,20,-1,512)
	Global $InputSpellType4 = GUICtrlCreateInput("",230,192,112,20,-1,512)
	GUICtrlCreateLabel("Energie :",360,197,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputSpellEnergyNeeds1 = GUICtrlCreateInput("",411,192,37,20,1,512)
	Global $InputSpellEnergyNeeds2 = GUICtrlCreateInput("",411,192,37,20,1,512)
	Global $InputSpellEnergyNeeds3 = GUICtrlCreateInput("",411,192,37,20,1,512)
	Global $InputSpellEnergyNeeds4 = GUICtrlCreateInput("",411,192,37,20,1,512)
	Global $InputSpellLife1 = GUICtrlCreateInput("",495,192,37,20,1,512)
	Global $InputSpellLife2 = GUICtrlCreateInput("",495,192,37,20,1,512)
	Global $InputSpellLife3 = GUICtrlCreateInput("",495,192,37,20,1,512)
	Global $InputSpellLife4 = GUICtrlCreateInput("",495,192,37,20,1,512)
	Global $InputSpellDistance1 = GUICtrlCreateInput("",609,191,37,20,1,512)
	Global $InputSpellDistance2 = GUICtrlCreateInput("",609,191,37,20,1,512)
	Global $InputSpellDistance3 = GUICtrlCreateInput("",609,191,37,20,1,512)
	Global $InputSpellDistance4 = GUICtrlCreateInput("",609,191,37,20,1,512)
	GUICtrlCreateLabel("Vie :",465,197,28,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Distance :",548,196,50,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $CheckboxNoEnergyForDecor = GUICtrlCreateCheckbox("Le bot n'utilisera pas de sort a énergie pour casser les éléments du décor",22,290,370,20,-1,-1)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,1)&GUICtrlRead ($tab, 1))
	Global $CheckboxNoAdventure = GUICtrlCreateCheckbox("Pas de Prime : Séquence Aventure",22,95,201,20,-1,-1)
	GUISwitch($settings,_GUICtrlTab_SetCurFocus($tab,4)&GUICtrlRead ($tab, 1))
	Global $CheckboxTakeGlobeInFight = GUICtrlCreateCheckbox("Prendre les Globes en Combat",27,102,173,20,-1,-1)
	_GUICtrlTab_SetCurFocus($tab,0)
	GUISetState(@SW_SHOW,$settings)

AjoutLog("Ouverture de la fenêtre 'Edition de profil'")

;;On sélectionne le radio Premier Spell au démarrage
GUICtrlSetState($RadioTouche1 ,$GUI_CHECKED)
GestionTouches()

RemplirSettings()
EtatGriser()

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg

			Case $GUI_EVENT_CLOSE
				GUIDelete($settings)
				AjoutLog("Fermeture de la fenêtre 'Edition de profil'")
				ExitLoop

			Case $RadioBotSeul

				GUICtrlSetState($RadioBotTeam ,$GUI_UNCHECKED)

			Case $RadioBotTeam

				GUICtrlSetState($RadioBotSeul ,$GUI_UNCHECKED)

			Case $CheckboxPause

				If GUICtrlRead($CheckboxPause) = $GUI_CHECKED Then
					GUICtrlSetState($InputApresXparties, $GUI_ENABLE)
					GUICtrlSetState($InputTempsPause, $GUI_ENABLE)
					AjoutLog("On dégrise la pause")
				Else
					GUICtrlSetState($InputApresXparties, $GUI_DISABLE)
					GUICtrlSetState($InputTempsPause, $GUI_DISABLE)
					AjoutLog("On grise la pause")
				EndIf

			Case $ComboChoixRun

				If GUICtrlRead($ComboChoixRun) = "Acte Aléatoire (Act1,Act2,Act3)" Then
					GUICtrlSetState($CheckboxSequencesAlea, $GUI_ENABLE)
					GUICtrlSetState($InputChangementAct, $GUI_ENABLE)
					GUICtrlSetState($InputChangementRun, $GUI_ENABLE)
					GUICtrlSetState($InputAct1min, $GUI_ENABLE)
					GUICtrlSetState($InputAct1max, $GUI_ENABLE)
					GUICtrlSetState($InputAct2min, $GUI_ENABLE)
					GUICtrlSetState($InputAct2max, $GUI_ENABLE)
					GUICtrlSetState($InputAct3min, $GUI_ENABLE)
					GUICtrlSetState($InputAct3max, $GUI_ENABLE)
					AjoutLog("On dégrise les séquences aléatoires")
				Else
					GUICtrlSetState($CheckboxSequencesAlea, $GUI_DISABLE)
					GUICtrlSetState($CheckboxSequencesAlea, $GUI_UNCHECKED)
					GUICtrlSetState($InputChangementAct, $GUI_DISABLE)
					GUICtrlSetState($InputChangementRun, $GUI_DISABLE)
					GUICtrlSetState($InputAct1min, $GUI_DISABLE)
					GUICtrlSetState($InputAct1max, $GUI_DISABLE)
					GUICtrlSetState($InputAct2min, $GUI_DISABLE)
					GUICtrlSetState($InputAct2max, $GUI_DISABLE)
					GUICtrlSetState($InputAct3min, $GUI_DISABLE)
					GUICtrlSetState($InputAct3max, $GUI_DISABLE)
					AjoutLog("On grise les séquences aléatoires")
				EndIf

			Case $ButtonParDefautSettings

				ValeurDefaut()
				RemplirSettings()
				MsgBox( 0, "", "Valeurs par défaut chargées !", 3)

			Case $ButtonEnregistrerSettings
				RecupDonneesSettings()
				EnregistProfil($ProfilSel)
				GUIDelete($settings)
				AjoutLog("Fermeture de la fenêtre 'Edition de profil'")
				MsgBox( 0, "", "Profil modifié !", 3)
				ExitLoop

			Case $RadioTouche1
				GestionTouches()

			Case $RadioTouche2
				GestionTouches()

			Case $RadioTouche3
				GestionTouches()

			Case $RadioTouche4
				GestionTouches()

;########################################################
;#Boutons Reset
;########################################################

			Case $ButtonResetPrioMonstre

				$priorityMonsterList = "Goblin|Uber"
				GUICtrlSetData($InputPriorityMonsterList,$priorityMonsterList)
				AjoutLog("Liste des Monstres Prioritaires par défaut")

			Case $ButtonResetListeMonstres

				$monsterList = ""
				GUICtrlSetData($InputMonsterList,$monsterList)
				AjoutLog("Liste des Monstres par défaut")

			Case $ButtonResetListeMonstreSpe

				$specialmonsterList = "Goblin|brickhouse_|WoodWraith_|Siege_wallMonster|DuneDervish_|Ghost_|Lamprey_|SkeletonSummoner_|Uber|x1_SpeedKill_Gluttony"
				GUICtrlSetData($InputSpecialmonterList,$specialmonsterList)
				AjoutLog("Liste des Monstres Spéciaux par défaut")

			Case $ButtonResetListeDecor

				$decorList = "Bone|RockPile|DemonCage|Barrel|crate|barricade|_Barricade_|Rock|Log|BonePile"
				GUICtrlSetData($InputDecorList,$decorList)
				AjoutLog("Liste des Décors par défaut")

			Case $ButtonResetListeCoffre

				$chestList = "Props_Demonic_Container|Crater_Chest|Chest_Snowy|Chest_Frosty|TrOut_Fields_Chest|TrOut_Highlands_Chest|trOut_wilderness_chest|Cath_chest|Chest_Rare|caOut_StingingWinds_Chest|CaOut_Oasis_Chest|x1_Global_Chest_SpeedKill|x1_Global_Chest_CursedChest|a3dun_Crater_ST_Chest"
				GUICtrlSetData($InputChestList,$chestList)
				AjoutLog("Liste des Coffres par défaut")

			Case $ButtonResetListeRack

				$rackList = "WeaponRack|ArmorRack|Weapon_Rack_trOut_Highlands"
				GUICtrlSetData($InputRackList,$rackList)
				AjoutLog("Liste des Racks par défaut")

			Case $ButtonResetAct1

				$SequenceFileAct1 = "act1-manoir_[1-8]|act1-Val_[1-8]|act1-champs_[1-8]"
				GUICtrlSetData($InputSequenceAct1,$SequenceFileAct1)
				AjoutLog("Séquence Act1 par défaut")

			Case $ButtonResetAct2

				$SequenceFileAct2 = "act2-alcarnus_[1-8]|act2-gorge_noire_[1-6]|act2-dalgur_[1-2]"
				GUICtrlSetData($InputSequenceAct2,$SequenceFileAct2)
				AjoutLog("Séquence Act2 par défaut")

			Case $ButtonResetAct3

				$SequenceFileAct3 = "act3_pt_save_le_coeur_darreat_[1-5]|act3_tower_[1-5]|act3_field_[1-4]|[CMD]TakeWP=0"
				GUICtrlSetData($InputSequenceAct3,$SequenceFileAct3)
				AjoutLog("Séquence Act3 par défaut")

			Case $ButtonResetAct3PT

				$SequenceFileAct3PtSauve = "[CMD]safeportstart()|act3_core_start_[1-5]|act3_tower_[1-5]|act3_field_[1-4]|[CMD]TakeWP=0"
				GUICtrlSetData($InputSequenceAct3Pt,$SequenceFileAct3PtSauve)
				AjoutLog("Séquence Act3PT par défaut")

			Case $ButtonResetSequenceTest

				$SequenceFile = ""
				GUICtrlSetData($InputSequenceTest,$SequenceFile)
				AjoutLog("Séquence Test par défaut")

			Case $ButtonResetSequenceAventure

				$SequenceFileAdventure = "act3_ADV-core_start_[1-5]|act3_ADV-tower_[1-5]|act3_ADV-field_[1-4]|[CMD]TakeWPAdv=26"
				GUICtrlSetData($InputSequenceAventure,$SequenceFileAdventure)
				AjoutLog("Séquence Aventure par défaut")

			Case $ButtonResetSequence222

				$SequenceFileAct222 = "act2-Lieutenant_Vachem|act2-Tuer_Maghda_1"
				GUICtrlSetData($InputSequenceAct222,$SequenceFileAct222)
				AjoutLog("Séquence Act222 par défaut")

			Case $ButtonResetSequence232

				$SequenceFileAct232 = "act2-gorge_noire_[1-6]|act2-Tuer_Maghda"
				GUICtrlSetData($InputSequenceAct232,$SequenceFileAct232)
				AjoutLog("Séquence Act232 par défaut")

			Case $ButtonResetSequence222

				$SequenceFileAct283 = "act2-gorge_noire_[1-6]|act2-Tuer_ZoltunKulle"
				GUICtrlSetData($InputSequenceAct283,$SequenceFileAct283)
				AjoutLog("Séquence Act283 par défaut")

			Case $ButtonResetSequence299

				$SequenceFileAct299 = "act2-Tuer_Belial"
				GUICtrlSetData($InputSequenceAct299,$SequenceFileAct299)
				AjoutLog("Séquence Act299 par défaut")

			Case $ButtonResetSequence333

				$SequenceFileAct333 = "act3_rempart_[1-4]|act3-Tuer_Ghom"
				GUICtrlSetData($InputSequenceAct333,$SequenceFileAct333)
				AjoutLog("Séquence Act333 par défaut")

			Case $ButtonResetSequence362

				$SequenceFileAct362 = "act3_rempart_[1-4]|act3_field_[1-4]|act3-Tuer_Siegebreaker"
				GUICtrlSetData($InputSequenceAct362,$SequenceFileAct362)
				AjoutLog("Séquence Act362 par défaut")

			Case $ButtonResetSequence373

				$SequenceFileAct373 = "act3_tower_[1-5]|act3_field_[1-4]|act3-Tuer_Azmodan"
				GUICtrlSetData($InputSequenceAct373,$SequenceFileAct373)
				AjoutLog("Séquence Act373 par défaut")

			Case $ButtonResetSequence373

				$SequenceFileAct374 = "act3-Tuer_Azmodan_1|act4-Tuer_Iskatu_1|act4-Tuer_Rakanoth"
				GUICtrlSetData($InputSequenceAct374,$SequenceFileAct374)
				AjoutLog("Séquence Act374 par défaut")

			Case $ButtonResetSequence373

				$SequenceFileAct411 = "act4-Tuer_Iskatu|act4-Tuer_Rakano"
				GUICtrlSetData($InputSequenceAct411,$SequenceFileAct411)
				AjoutLog("Séquence Act411 par défaut")

			Case $ButtonResetSequence442

				$SequenceFileAct442 = "act4-Tuer_Diablo"
				GUICtrlSetData($InputSequenceAct442,$SequenceFileAct442)
				AjoutLog("Séquence Act373 par défaut")

		EndSwitch
	WEnd

EndFunc;==>EditSettings

Func CreerProfil()

	Global $CreationProfil = GUICreate("Créer un profil",262,117,-1,-1,-1,$WS_EX_TOPMOST,$MainForm)
	GUISetIcon(@scriptdir & "\lib\ico\icon.ico", -1)
	Global $CreerProfil = GUICtrlCreateButton("Créer",170,85,82,25,-1,-1)
	Global $AnnulerProfil = GUICtrlCreateButton("Annuler",80,85,82,24,-1,-1)
	GUICtrlCreateLabel("Nom du profil :",15,10,74,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	Global $InputProfil = GUICtrlCreateInput("",100,5,150,20,-1,512)
	Global $InputNomPerso = GUICtrlCreateInput("",100,30,150,20,-1,512)
	Global $InputBuild = GUICtrlCreateInput("",100,55,150,20,-1,512)
	GUICtrlCreateLabel("Personnage :",15,35,76,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUICtrlCreateLabel("Build :",15,60,74,15,-1,-1)
	GUICtrlSetBkColor(-1,"-2")
	GUISetState(@SW_SHOW,$CreationProfil)

	AjoutLog("Ouverture de la fenêtre 'Créer un profil'")

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg

			Case $GUI_EVENT_CLOSE

				GUIDelete($CreationProfil)
				AjoutLog("Fermeture de la fenêtre 'Créer un profil'")
				ExitLoop

			Case $AnnulerProfil

				GUIDelete($CreationProfil)
				AjoutLog("Fermeture de la fenêtre 'Créer un profil'")
				ExitLoop

			Case $CreerProfil
				Switch $VersionUtilisee
					Case "Modif"
						CreationProfil($DossierProfilsModif)
					Case "Originale"
						CreationProfil($DossierProfilsOriginale)
				EndSwitch
				GUIDelete($CreationProfil)
				AjoutLog("Fermeture de la fenêtre 'Créer un profil'")
				ExitLoop

		EndSwitch
	WEnd
EndFunc;==>CreerProfil