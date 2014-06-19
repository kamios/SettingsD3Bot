#Region Include
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <GuiListView.au3>
#Include <GuiButton.au3>
#include <GuiTab.au3>
#include <GuiMenu.au3>
#include <Misc.au3>
#include <File.au3>

#include "lib\settings\variables.au3" 		;Variable globales
#include "lib\settings\interface.au3" 		;Construction des diverses fen�tre
#include "lib\settings\utils.au3" 			;Traitement divers (listage, cr�ation de fichier ou dossier...)
#include "lib\settings\defaut.au3" 			;Valeur par d�faut
#include "lib\settings\gestionINI.au3" 		;Permet Lecture et enregistrement des fichiers ini
#include "lib\settings\gestionGUI.au3" 		;Permet d'ins�rer et de recup�rer les donn�es pour les fichiers ini
#EndRegion

;;Si le script est d�j� lanc�, on emp�che un nouveau lancement.
_Singleton(@ScriptName, 0)

AjoutLog("----------------------------------------------------------------------------")
AjoutLog("		D�marrage de Settings D3BOT (version " & $Version & ")")
AjoutLog("----------------------------------------------------------------------------")
AjoutLog($VersionAutoIT)

If FileExists($OptionsIni) = 0 Then ;on test si le fichier de config existe
	_FileCreate($OptionsIni) ;sinon on le cr��
	;On met les valeurs par d�faut pour la cr�ation du fichier
	iniwrite($OptionsIni, "Optimisations","D3PrefsBot","false")
EndIf

;;Test pour savoir si les dossiers profils,builds et logs existent
If FileExists($DossierProfils) = 0 or FileExists($DossierLogs) = 0 or FileExists($DossierProfilsModif) = 0 _
	or FileExists($DossierProfilsModif & "settings\") = 0 Then
	DossierAcreer()
Else
	AjoutLog("Dossiers Profils et Logs : OK")
EndIf

GUISetState(@SW_SHOW, $MainForm)
ListerProfils($DossierProfilsModif)

LectureOptions();Lecture options pour le menu
RempliOptions();On r�percute les valeurs (Debug, Devmode et D3PrefsBot)

While 1
$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $AddProfil

			CreerProfil()
			ListerProfils($DossierProfilsModif)

		Case $EditProfil

			Local $selection = GUICtrlRead($ListviewProfils) ;On lit l'item s�lectionn�

			If $selection <> 0 Then ;On v�rifie qu'il ait bien s�lection
				Local $index = ControlListView("Settings D3BOT", "", $ListviewProfils, "GetSelected")
				Local $ProfilEdit = ControlListView("Settings D3BOT", "", $ListviewProfils, "GetText", $index) ;On r�cup�re le nom du profil dans la listview

				EditProfil($ProfilEdit)
			Else
				MsgBox( 48, "", "Aucun profil de s�lectionn�", 3)
			EndIf

			ControlListView ("Settings D3BOT", "", $ListviewProfils, "DeSelect", -1) ;Annule la s�lection de la listview
			$selection = "" ;On vide la variable pour le prochian chargement

		Case $DeleteProfil

			SupprimerProfil($DossierProfilsModif)
			ListerProfils($DossierProfilsModif)

		Case $ChargerProfil

			Local $selection = GUICtrlRead($ListviewProfils) ;On lit l'item s�lectionn�

			If $selection <> 0 Then ;On v�rifie qu'il ait bien s�lection
				Local $index = ControlListView("Settings D3BOT", "", $ListviewProfils, "GetSelected")
				Local $ProfilCharge = ControlListView("Settings D3BOT", "", $ListviewProfils, "GetText", $index) ;On r�cup�re le nom du profil dans la listview
				ChargeProfil($ProfilCharge)
			Else
				MsgBox( 48, "", "Aucun profil de s�lectionn�", 3)
			EndIf

			ControlListView ("Settings D3BOT", "", $ListviewProfils, "DeSelect", -1) ;Annule la selection de la listview
			$selection = "" ;On vide la variable pour le prochian chargement

			LectureOptions()
			RempliOptions()

		Case $LogsItem

			Logs();on ouvre la fen�tre Logs

		Case $GrablistsItem

			Grablists();on ouvre la fen�tre Grablists

		Case $StatsItem

			Stats();on ouvre la fen�tre Stats

		Case $AproposItem
			Apropos()

		Case $EnreD3PrefsItem

			FileCopy($D3PrefsD3, $D3PrefsNormal) ;on enregistre le fichier D3Prefs.txt
			AjoutLog("On enregistre le fichier D3Prefs original")
			LectureOptions();on d�grise l'option Gpu/Cpu pour bot

		Case $CpuGpuItem

			If IsChecked($CpuGpuItem) Then
                GUICtrlSetState($CpuGpuItem, $GUI_UNCHECKED)
				FileCopy($D3PrefsPourBot, $D3PrefsD3, 9)
				GUICtrlSetState($EnreD3PrefsItem, $GUI_ENABLE)
				AjoutLog("On remplace D3Prefs.txt par la version de Toinou75")
            Else
                GUICtrlSetState($CpuGpuItem, $GUI_CHECKED)
				FileCopy($D3PrefsNormal, $D3PrefsD3, 9)
				GUICtrlSetState($EnreD3PrefsItem, $GUI_DISABLE)
				AjoutLog("On remet le D3Prefs.txt original")
            EndIf

			RecupOtions()
			EnregOptions()

		Case $DevmodeItem

			If IsChecked($DevmodeItem) Then
                GUICtrlSetState($DevmodeItem, $GUI_UNCHECKED)
				$Devmode = "False"
				AjoutLog("On d�sactive le Devmode")
			Else
				GUICtrlSetState($DevmodeItem, $GUI_CHECKED)
				$Devmode = "True"
				AjoutLog("On active le Devmode")
			EndIf
			IniWrite($SettingsIni, "Run info", "Devmode", $Devmode)

		Case $DebugItem

			If IsChecked($DebugItem) Then
                GUICtrlSetState($DebugItem, $GUI_UNCHECKED)
				$Debug = "False"
				AjoutLog("On d�sactive le Debug (logs)")
			Else
				GUICtrlSetState($DebugItem, $GUI_CHECKED)
				$Debug = "True"
				AjoutLog("On active le Debug (logs)")
			EndIf
			IniWrite($SettingsIni, "Run info", "debug", $Debug)


	EndSwitch
WEnd
