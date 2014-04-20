;fonctions.au3

;;Création de dossiers
Func DossierAcreer()

	If FileExists($DossierProfils) = 0 then DirCreate($DossierProfils)
	If FileExists($DossierProfilsModif) = 0 then DirCreate($DossierProfilsModif)
	If FileExists($DossierProfilsOriginale) = 0 then DirCreate($DossierProfilsOriginale)
	If FileExists($DossierProfilsModif & "settings\") = 0 then DirCreate($DossierProfilsModif & "settings\")
	If FileExists($DossierProfilsOriginale & "settings\") = 0 then DirCreate($DossierProfilsOriginale & "settings\")
	If FileExists($DossierLogs) = 0 then DirCreate($DossierLogs)
	AjoutLog("Création des dossiers profils, builds et logs")

EndFunc;==>DossierAcreer

;;Fonction permettant de lister les profils
Func ListerProfils($CheminDuDossier)

	_GUICtrlListView_DeleteAllItems($ListviewProfils)
	Local $array = DirGetSize($CheminDuDossier, 1)

    If Not @error = 4 Then ; si le dossier n'est pas vide on continue
		Local $listeFichiers = _FileListToArray($CheminDuDossier,"*",1)

		If $array[1] > 0 Then
			For $i=1 to $listeFichiers[0]
				Switch $VersionUtilisee
					Case "Modif"
						$NomPerso = IniRead($DossierProfilsModif & $listeFichiers[$i], "Info", "NomPerso", "inconnu")
						$Build = IniRead($DossierProfilsModif & $listeFichiers[$i], "Info", "Build", "inconnu")
					Case "Originale"
						$NomPerso = IniRead($DossierProfilsOriginale & $listeFichiers[$i], "Info", "NomPerso", "inconnu")
						$Build = IniRead($DossierProfilsOriginale & $listeFichiers[$i], "Info", "Build", "inconnu")
				EndSwitch
				GUICtrlCreateListViewItem($listeFichiers[$i] & "|" & $NomPerso & "|" & $Build,$ListviewProfils)
			Next
			AjoutLog("Listage des profils")
		Else
			AjoutLog("Aucun profil")
		EndIf
	EndIf

EndFunc;==>ListerProfils

Func ListFichier($CheminDuDossier,$i)

	Switch $i
		Case 1
			GUICtrlSetData($ListStats,"")
			GUICtrlSetData($labelDateStats,"--")
			GUICtrlSetData($EditStats,"")
		Case 2

		Case 3

	EndSwitch

	Local $array = DirGetSize($CheminDuDossier, 1)
	Local $listeFichiers = _FileListToArray($CheminDuDossier,"*",1)

	If IsArray($array) Then
		Switch $i
			Case 1
				If $array[1] > 0 Then
					For $i=1 to $listeFichiers[0]
						GUICtrlSetData($ListStats,$listeFichiers[$i])
					Next
					AjoutLog("Stats chargées dans la ListBox")
				Else
					GUICtrlSetData($ListStats,"Aucune stat")
					AjoutLog("Aucune stat")
				EndIf
			Case 2

			Case 3

		EndSwitch
	EndIf

EndFunc;==>ListFichier


;;Fonction perttant de gérer les radio pour les touches 1 à 4
Func GestionTouches()

	Switch $RadioSelect
		Case 1
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
		Case 2
			If $SpellOn2 = "True" Then
				GUICtrlSetState($CheckboxTouche ,$GUI_CHECKED)
			Else
				GUICtrlSetState($CheckboxTouche ,$GUI_UNCHECKED)
			EndIf
			If $SpellPreBuff2 = "True" Then
				GUICtrlSetState($CheckboxPrebuff ,$GUI_CHECKED)
			Else
				GUICtrlSetState($CheckboxPrebuff ,$GUI_UNCHECKED)
			EndIf
			GUICtrlSetData($InputPrebuffDelay,$SpellPreBuffDelay2)
			GUICtrlSetData($InputSpellDelay,$SpellDelay2)
			GUICtrlSetData($InputSpellType,$SpellType2)
			GUICtrlSetData($InputSpellEnergyNeeds,$SpellEnergyNeeds2)
			GUICtrlSetData($InputSpellLife,$SpellLife2)
			GUICtrlSetData($InputSpellDistance,$SpellDistance2)
		Case 3
			If $SpellOn3 = "True" Then
				GUICtrlSetState($CheckboxTouche ,$GUI_CHECKED)
			Else
				GUICtrlSetState($CheckboxTouche ,$GUI_UNCHECKED)
			EndIf
			If $SpellPreBuff3 = "True" Then
				GUICtrlSetState($CheckboxPrebuff ,$GUI_CHECKED)
			Else
				GUICtrlSetState($CheckboxPrebuff ,$GUI_UNCHECKED)
			EndIf
			GUICtrlSetData($InputPrebuffDelay,$SpellPreBuffDelay3)
			GUICtrlSetData($InputSpellDelay,$SpellDelay3)
			GUICtrlSetData($InputSpellType,$SpellType3)
			GUICtrlSetData($InputSpellEnergyNeeds,$SpellEnergyNeeds3)
			GUICtrlSetData($InputSpellLife,$SpellLife3)
			GUICtrlSetData($InputSpellDistance,$SpellDistance3)
		Case 4
			If $SpellOn4 = "True" Then
				GUICtrlSetState($CheckboxTouche ,$GUI_CHECKED)
			Else
				GUICtrlSetState($CheckboxTouche ,$GUI_UNCHECKED)
			EndIf
			If $SpellPreBuff4 = "True" Then
				GUICtrlSetState($CheckboxPrebuff ,$GUI_CHECKED)
			Else
				GUICtrlSetState($CheckboxPrebuff ,$GUI_UNCHECKED)
			EndIf
			GUICtrlSetData($InputPrebuffDelay,$SpellPreBuffDelay4)
			GUICtrlSetData($InputSpellDelay,$SpellDelay4)
			GUICtrlSetData($InputSpellType,$SpellType4)
			GUICtrlSetData($InputSpellEnergyNeeds,$SpellEnergyNeeds4)
			GUICtrlSetData($InputSpellLife,$SpellLife4)
			GUICtrlSetData($InputSpellDistance,$SpellDistance4)
	EndSwitch

EndFunc;==>GestionTouches

Func EnregistTouches()
	If IsChecked($CheckboxTouche) Then
		$SpellOn = "True"
	Else
		$SpellOn = "False"
	EndIf
	If IsChecked($CheckboxPrebuff) Then
		$SpellPreBuff = "True"
	Else
		$SpellPreBuff = "False"
	EndIf
	$SpellPreBuffDelay = GuiCtrlRead($InputPrebuffDelay)
	$SpellDelay = GuiCtrlRead($InputSpellDelay)
	$SpellType = GuiCtrlRead($InputSpellType)
	$SpellEnergyNeeds = GuiCtrlRead($InputSpellEnergyNeeds)
	$SpellLife = GuiCtrlRead($InputSpellLife)
	$SpellDistance = GuiCtrlRead($InputSpellDistance)

	Switch $RadioSelect
		Case 1
			$SpellOn1 = $SpellOn
			$SpellPreBuff1 = $SpellPreBuff
			$SpellPreBuffDelay1 = $SpellPreBuffDelay
			$SpellDelay1 = $SpellDelay
			$SpellType1 = $SpellType
			$SpellEnergyNeeds1 = $SpellEnergyNeeds
			$SpellLife1 = $SpellLife
			$SpellDistance1 = $SpellDistance
		Case 2
			$SpellOn2 = $SpellOn
			$SpellPreBuff2 = $SpellPreBuff
			$SpellPreBuffDelay2 = $SpellPreBuffDelay
			$SpellDelay2 = $SpellDelay
			$SpellType2 = $SpellType
			$SpellEnergyNeeds2 = $SpellEnergyNeeds
			$SpellLife2 = $SpellLife
			$SpellDistance2 = $SpellDistance
		Case 3
			$SpellOn3 = $SpellOn
			$SpellPreBuff3 = $SpellPreBuff
			$SpellPreBuffDelay3 = $SpellPreBuffDelay
			$SpellDelay3 = $SpellDelay
			$SpellType3 = $SpellType
			$SpellEnergyNeeds3 = $SpellEnergyNeeds
			$SpellLife3 = $SpellLife
			$SpellDistance3 = $SpellDistance
		Case 4
			$SpellOn4 = $SpellOn
			$SpellPreBuff4 = $SpellPreBuff
			$SpellPreBuffDelay4 = $SpellPreBuffDelay
			$SpellDelay4 = $SpellDelay
			$SpellType4 = $SpellType
			$SpellEnergyNeeds4 = $SpellEnergyNeeds
			$SpellLife4 = $SpellLife
			$SpellDistance4 = $SpellDistance
	EndSwitch

EndFunc;==>EnregistTouches

;;Fonction permettant de suprimer un profil
Func SupprimerProfil($CheminDuDossier)

	Local $selection = GUICtrlRead($ListviewProfils) ;On lit l'item sélectionné

	If $selection <> 0 Then ;On vérifie qu'il ait bien sélection
		Local $index = ControlListView("Settings D3BOT", "", $ListviewProfils, "GetSelected")
		Local $ProfilSupp = ControlListView("Settings D3BOT", "", $ListviewProfils, "GetText", $index)
		Local $Confirm = MsgBox( 20, "Suppression de " & $ProfilSupp, "Etes-vous sûr ?");ajout d'un prompt de confirmation de la suppression

		If $Confirm = 6 Then ;test la réponse du MsgBox
				FileDelete($CheminDuDossier & $ProfilSupp)
				Switch $VersionUtilisee
					Case "Modif"
						FileDelete($DossierProfilsModif & "settings\settings_" & $ProfilSupp)
						FileDelete($DossierProfilsModif & "settings\settingshero_" & $ProfilSupp)
					Case "Originale"
						FileDelete($DossierProfilsOriginale & "settings\settings_" & $ProfilSupp)
				EndSwitch
				AjoutLog("On supprime le profil : " & $ProfilSupp)
		Else
				GUIDelete($confirm)
		EndIf
		_GUICtrlListView_DeleteItemsSelected($ListviewProfils)
	Else
		MsgBox( 48, "", "Aucun profil de sélectionné", 3)
	EndIf

EndFunc;==>SupprimerProfil

;;Fonction permettant d'éditer un profil
Func EditProfil($Profil)

	Local $SettingsEdit = $DossierProfilsModif & "settings\settings_" & $Profil
	Local $SettingsHeroEdit = $DossierProfilsModif & "settings\settingshero_" & $Profil
	LoadConfigs($SettingsEdit)
	LoadConfigsHero($SettingsHeroEdit)
	EditSettings($Profil)

EndFunc;==>EditProfil

Func EnregistProfil($Profil)

	Local $SettingsLu = $DossierProfilsModif & "settings\settings_" & $Profil
	Local $SettingsHeroLu = $DossierProfilsModif & "settings\settingshero_" & $Profil
	SaveConfigs($SettingsLu)
	SaveConfigsHero($SettingsHeroLu)

EndFunc;==>EnregistProfil

;;Fonction permettant de charger un profil
Func ChargeProfil($Profil)

	Switch $VersionUtilisee
		Case "Modif"
			Local $SettingsCharger = $DossierProfilsModif & "settings\settings_" & $Profil
			Local $SettingsHeroCharger = $DossierProfilsModif & "settings\settingshero_" & $Profil
			FileCopy($SettingsCharger, $DossierSettingsIni & "settings.ini",9)
			FileCopy($SettingsHeroCharger, $DossierSettingsIni & "settingsHero1.ini",9)
		Case "Originale"
			Local $SettingsCharger = $DossierProfilsOriginale & "settings\settings_" & $Profil
			FileCopy($SettingsCharger, @ScriptDir & "settings.ini",9)
	EndSwitch
	MsgBox( 0, "", "Profil chargé !", 3)

EndFunc;==>ChargeProfil

;;Fonction permattant de créer un profil
Func CreationProfil($CheminDuDossier)

	Local $NomProfil = GUICtrlRead($InputProfil)
	Local $NomPerso = GUICtrlRead($InputNomPerso)
	Local $Build = GUICtrlRead($InputBuild)

	If $NomProfil = "" Then ;si pas de nom de profil, on ne le créé pas
		MsgBox( 48 + 262144, "", "Aucun nom de profil donné", 3)
	Else
		Local $FichierProfil = $CheminDuDossier & $NomProfil & ".ini"
		_FileCreate($FichierProfil)
		Switch $VersionUtilisee
			Case "Modif"
				Local $FichierSettingsModif = "settings_" & $NomProfil & ".ini"
				Local $FichierSettingsHeroModif = "settingshero_" & $NomProfil & ".ini"
				ListerProfils($DossierProfilsModif)
				FileCopy($FichierSettingsDefaut, $DossierProfilsModif & "settings\" & $FichierSettingsModif)
				FileCopy($FichierSettingsHeroDefaut, $DossierProfilsModif & "settings\" & $FichierSettingsHeroModif)
			Case "Originale"
				Local $FichierSettingsOriginale = "settings_" & $NomProfil & ".ini"
				ListerProfils($DossierProfilsOriginale)
				FileCopy($FichierSettingsOriginaleDefaut, $DossierProfilsOriginale & "settings\" & $FichierSettingsOriginale)
		EndSwitch
				IniWrite($FichierProfil, "Info", "NomPerso", $NomPerso)
				IniWrite($FichierProfil, "Info", "Build", $Build)
		AjoutLog("Création d'un nouveau profil : " & $NomProfil)
	EndIf

EndFunc;==>CreationProfil

;;On désactive certains champs
Func EtatGriser()

	If $ChoixActRun <> "-1" Then
		GUICtrlSetState($CheckboxSequencesAlea, $GUI_DISABLE)
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

	If $TakeABreak = "false" Then
		GUICtrlSetState($InputApresXparties, $GUI_DISABLE)
		GUICtrlSetState($InputTempsPause, $GUI_DISABLE)
		AjoutLog("On grise la pause")
	EndIf

EndFunc;==>EtatGriser

Func AfficheStats($FichierStats)

	$ContenuStats = FileRead($FichierStats)
	GUICtrlSetData($EditStats, $ContenuStats)
	FileClose($FichierStats)
	AjoutLog("Affichage du fichier : " & $FichierStats)

EndFunc;==>AfficheStats

Func ParseFichierStats($NomFichierStats)

	Local $String = StringMid($NomFichierStats, 6, 16)
	Local $HeureStats = StringRight($String,5)
	Local $AnneeStats = StringLeft($String,4)
	Local $MoisStats = StringMid($String,6,2)
	Local $JourStats = StringMid($String,9,2)
	GUICtrlSetData($labelDateStats,$JourStats & "/" & $MoisStats & "/" & $AnneeStats & "  à " & $HeureStats)
	AjoutLog("On récupère date et heure du fichier : " & $NomFichierStats)

EndFunc;==>ParseFichierStats

;;Lecture du fichier grablist
Func LectureGrablist()

	If $VersionUtilisee = "Originale" Then
		Local $fichier = @ScriptDir & "\" & GUICtrlRead($ComboLectureGrablist)
	Else
		Local $fichier = $DossierGrab & GUICtrlRead($ComboLectureGrablist)
	EndIf

	$nbr_lignes = _FileCountLines($fichier)
	$fp = FileOpen($fichier, 0)

	$contenu = ""
	For $i = 1 To $nbr_lignes
		$lignesX = FileReadLine($fp, $i)
		$contenu = $contenu & $lignesX & @CRLF
	Next
	FileClose($Fichier)
	GUICtrlSetData($EditGrablists, $contenu)
	AjoutLog("Lecture de " & GUICtrlRead($ComboLectureGrablist))

EndFunc;==>LectureGrablist

;;Modification de la grablist
Func CreerFichier()

	If $VersionUtilisee = "Originale" Then
		Local $fichier = @ScriptDir & "\" & GUICtrlRead($ComboLectureGrablist)
	Else
		Local $fichier = $DossierGrab & GUICtrlRead($ComboLectureGrablist)
	EndIf

	Local $hFile = FileOpen($fichier, 2)
	Local $GrabModif = GUICtrlRead($EditGrablists)
	FileWrite($hFile, $GrabModif)
	FileClose($fichier)
	AjoutLog("Modification de " & $ComboLectureGrablist)

EndFunc;==>CreerFichier

;;Gestion des checkBox
Func IsChecked($control)

    Return BitAnd(GUICtrlRead($control),$GUI_CHECKED) = $GUI_CHECKED

EndFunc;==>IsChecked

;;Exportation du fichier log
Func CreerFichierLogs ()

	$File = $DossierLogs & "Logs_" & @MDAY & "-" & @MON & "-" & @YEAR & "_" & @HOUR & "-" & @MIN & "-" & @SEC & ".txt"
	AjoutLog("Fichier " & $File & " créé.")
	$hFile = FileOpen($File, 2)
	FileWrite($hFile, $logs)
	FileClose($hFile)
	MsgBox(262144, "Chemin", "Vous trouverez les fichiers Logs dans :" & @CRLF & @CRLF & $DossierLogs ,3)
	AjoutLog("Fichier Log créé : " & $File)
	;ShellExecuteWait($File) ; Affiche le fichier.

EndFunc;==>CreerFichierLogs

;;Ajout d'une ligne de Logs
Func AjoutLog($InfoLog)

	$Logs = "[" & @HOUR & ":" & @MIN & ":" & @SEC & "]" & " - " & $InfoLog & @CRLF & $Logs

EndFunc;==>AjoutLog

;===============================================================================
;
; Function Name:    GuiCtrlCreateHyperlink()
; Description:    Creates a label that acts as a hyperlink
;
; Parameter(s):     		$s_Text    	  - Label text
;                           $i_Left       - Label left coord
;                           [$i_Top]      - Label top coord
;                           [$i_Width]    - Label width
;                           [$i_Height]   - Label height
;                           [$i_Color]    - Text Color
;                           [$s_ToolTip]  - Hyperlink ToolTip
;                           [$i_Style]    - Label style
;                           [$i_ExStyle]  - Label extended style
;
; Requirement(s):   None
; Return Value(s):  Control ID
;
; Author(s):        Saunders <krawlie@hotmail.com>
;
;===============================================================================

Func GuiCtrlCreateHyperlink($S_TEXT, $I_LEFT, $I_TOP, _
        $I_WIDTH = -1, $I_HEIGHT = -1, $I_COLOR = 0x0000ff, $S_TOOLTIP = '', $I_STYLE = -1, $I_EXSTYLE = -1)

    Local $I_CTRLID
    $I_CTRLID = GUICtrlCreateLabel($S_TEXT, $I_LEFT, $I_TOP, $I_WIDTH, $I_HEIGHT, $I_STYLE, $I_EXSTYLE)
    If $I_CTRLID <> 0 Then
        GUICtrlSetFont($I_CTRLID, -1, -1, 4)
        GUICtrlSetColor($I_CTRLID, $I_COLOR)
        GUICtrlSetCursor($I_CTRLID, 0)
        If $S_TOOLTIP <> '' Then
            GUICtrlSetTip($I_CTRLID, $S_TOOLTIP)
        EndIf
    EndIf
    Return $I_CTRLID

EndFunc ;==>GuiCtrlCreateHyperlink