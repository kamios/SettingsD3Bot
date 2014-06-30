;utils.au3

;Detecte la langue de l'OS
Func DetectLang()
	$OSlang = @OSLang
	Switch $OSlang
		Case "0409"
			Return "English"
		Case "040C"
			Return "Français"
		Case Else
			Return "English"
	EndSwitch
EndFunc

;;Création de dossiers
Func DossierAcreer()

	If FileExists($DossierProfils) = 0 then DirCreate($DossierProfils)
	If FileExists($DossierProfilsModif) = 0 then DirCreate($DossierProfilsModif)
	If FileExists($DossierProfilsModif & "settings\") = 0 then DirCreate($DossierProfilsModif & "settings\")
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
				$NomPerso = IniRead($DossierProfilsModif & $listeFichiers[$i], "Info", "NomPerso", "inconnu")
				$Build = IniRead($DossierProfilsModif & $listeFichiers[$i], "Info", "Build", "inconnu")
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

	If IsChecked($RadioTouche1) Then

		GUICtrlSetState($CheckboxTouche1 ,$GUI_SHOW)
		GUICtrlSetState($CheckboxTouche2 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche3 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellDelay1 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellDelay2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay4 ,$GUI_HIDE)

		GUICtrlSetState($CheckboxPrebuff1 ,$GUI_SHOW)
		GUICtrlSetState($CheckboxPrebuff2 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff3 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff4 ,$GUI_HIDE)

		GUICtrlSetState($InputPrebuffDelay1 ,$GUI_SHOW)
		GUICtrlSetState($InputPrebuffDelay2 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay3 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellType1 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellType2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellEnergyNeeds1 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellEnergyNeeds2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellLife1 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellLife2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellDistance1 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellDistance2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance4 ,$GUI_HIDE)

	EndIf

	If IsChecked($RadioTouche2) Then

		GUICtrlSetState($CheckboxTouche1 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche2 ,$GUI_SHOW)
		GUICtrlSetState($CheckboxTouche3 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellDelay1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay2 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellDelay3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay4 ,$GUI_HIDE)

		GUICtrlSetState($CheckboxPrebuff1 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff2 ,$GUI_SHOW)
		GUICtrlSetState($CheckboxPrebuff3 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff4 ,$GUI_HIDE)

		GUICtrlSetState($InputPrebuffDelay1 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay2 ,$GUI_SHOW)
		GUICtrlSetState($InputPrebuffDelay3 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellType1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType2 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellType3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellEnergyNeeds1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds2 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellEnergyNeeds3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellLife1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife2 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellLife3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellDistance1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance2 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellDistance3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance4 ,$GUI_HIDE)

	EndIf

	If IsChecked($RadioTouche3) Then

		GUICtrlSetState($CheckboxTouche1 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche2 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche3 ,$GUI_SHOW)
		GUICtrlSetState($CheckboxTouche4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellDelay1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay3 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellDelay4 ,$GUI_HIDE)

		GUICtrlSetState($CheckboxPrebuff1 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff2 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff3 ,$GUI_SHOW)
		GUICtrlSetState($CheckboxPrebuff4 ,$GUI_HIDE)

		GUICtrlSetState($InputPrebuffDelay1 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay2 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay3 ,$GUI_SHOW)
		GUICtrlSetState($InputPrebuffDelay4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellType1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType3 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellType4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellEnergyNeeds1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds3 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellEnergyNeeds4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellLife1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife3 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellLife4 ,$GUI_HIDE)

		GUICtrlSetState($InputSpellDistance1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance3 ,$GUI_SHOW)
		GUICtrlSetState($InputSpellDistance4 ,$GUI_HIDE)

	EndIf

	If IsChecked($RadioTouche4) Then

		GUICtrlSetState($CheckboxTouche1 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche2 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche3 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxTouche4 ,$GUI_SHOW)

		GUICtrlSetState($InputSpellDelay1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDelay4 ,$GUI_SHOW)

		GUICtrlSetState($CheckboxPrebuff1 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff2 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff3 ,$GUI_HIDE)
		GUICtrlSetState($CheckboxPrebuff4 ,$GUI_SHOW)

		GUICtrlSetState($InputPrebuffDelay1 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay2 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay3 ,$GUI_HIDE)
		GUICtrlSetState($InputPrebuffDelay4 ,$GUI_SHOW)

		GUICtrlSetState($InputSpellType1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellType4 ,$GUI_SHOW)

		GUICtrlSetState($InputSpellEnergyNeeds1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellEnergyNeeds4 ,$GUI_SHOW)

		GUICtrlSetState($InputSpellLife1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellLife4 ,$GUI_SHOW)

		GUICtrlSetState($InputSpellDistance1 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance2 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance3 ,$GUI_HIDE)
		GUICtrlSetState($InputSpellDistance4 ,$GUI_SHOW)

	EndIf

EndFunc;==>GestionTouches

;;Fonction permettant de suprimer un profil
Func SupprimerProfil($CheminDuDossier)

	Local $selection = GUICtrlRead($ListviewProfils) ;On lit l'item sélectionné

	If $selection <> 0 Then ;On vérifie qu'il ait bien sélection
		Local $index = ControlListView("Settings D3BOT", "", $ListviewProfils, "GetSelected")
		Local $ProfilSupp = ControlListView("Settings D3BOT", "", $ListviewProfils, "GetText", $index)
		Local $Confirm = MsgBox( 20, "Suppression de " & $ProfilSupp, "Etes-vous sûr ?");ajout d'un prompt de confirmation de la suppression

		If $Confirm = 6 Then ;test la réponse du MsgBox
				FileDelete($CheminDuDossier & $ProfilSupp)

				FileDelete($DossierProfilsModif & "settings\settings_" & $ProfilSupp)
				FileDelete($DossierProfilsModif & "settings\settingshero_" & $ProfilSupp)

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

	Local $SettingsCharger = $DossierProfilsModif & "settings\settings_" & $Profil
	Local $SettingsHeroCharger = $DossierProfilsModif & "settings\settingshero_" & $Profil
	$Hero = IniRead($SettingsCharger, "Run info", "Heros", "")
	Local $HeroCharge = $DossierSettingsIni & "settingsHero" & $Hero & ".ini"
	FileCopy($SettingsCharger, $DossierSettingsIni & "settings.ini",9)
	FileCopy($SettingsHeroCharger, $HeroCharge,9)

	MsgBox( 0, "", "Profil " & $Profil & " chargé !", 3)

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

		Local $FichierSettingsModif = "settings_" & $NomProfil & ".ini"
		Local $FichierSettingsHeroModif = "settingshero_" & $NomProfil & ".ini"
		ListerProfils($DossierProfilsModif)
		FileCopy($FichierSettingsDefaut, $DossierProfilsModif & "settings\" & $FichierSettingsModif)
		FileCopy($FichierSettingsHeroDefaut, $DossierProfilsModif & "settings\" & $FichierSettingsHeroModif)

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

	Local $fichier = $DossierGrab & GUICtrlRead($ComboLectureGrablist)
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

	Local $fichier = $DossierGrab & GUICtrlRead($ComboLectureGrablist)

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