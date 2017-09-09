
;= LAUNCHER
;= ################
; This PAF was compiled using a modified version of PAL:
; https://github.com/demondevin/portableapps.comlauncher

;= DEFINES
;= ################
!define _      `${PAF}\Keys`
!define CL     SOFTWARE\Classes
!define ULS    HKCU\${CL}
!define EX     SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts
!define EXTS   HKCU\Software\Microsoft\Windows\Roaming\OpenWith\FileExts
!define EXT    HKCU\${EX}
!define FX     `${DATA}\IcoFX`
!define DEFFX  `${DEFDATA}\IcoFX`
!define CFG    `${FX}\config.cfg`
!define DEFCFG `${DEFFX}\config.cfg`
!define EXE    `${APPDIR}\IcoFX.exe`
!define SND    `$SENDTO\${APP}.lnk`
!define PFM    `$0\PortableApps.com\PortableAppsPlatform.exe`

;= MACROS
;= ################
!define MsgBox "!insertmacro _MsgBox"
!macro _MsgBox
	StrCpy $MissingFileOrPath `Windows XP or newer`
	MessageBox MB_ICONSTOP|MB_TOPMOST `$(LauncherFileNotFound)`
	Call Unload
	Quit
!macroend

;= FUNCTIONS
;= ################
Function GetIconIndex
	!macro _GetIconIndex _TYPE _INDEX
		Push ${_TYPE}
		Call GetIconIndex
		Pop ${_INDEX}
	!macroend
	!define GetIconIndex `!insertmacro _GetIconIndex`
	Exch $0
	StrCmpS $0 ani 0 +3
	StrCpy $0 %1
		Goto END
	StrCmpS $0 apng 0 +3
	StrCpy $0 11
		Goto END
	StrCmpS $0 bmp 0 +3
	StrCpy $0 0
		Goto END
	StrCmpS $0 cul 0 +3
	StrCpy $0 1
		Goto END
	StrCmpS $0 cur 0 +3
	StrCpy $0 %1
		Goto END
	StrCmpS $0 gif 0 +3
	StrCpy $0 2
		Goto END
	StrCmpS $0 icl 0 +3
	StrCpy $0 3
		Goto END
	StrCmpS $0 icns 0 +3
	StrCpy $0 4
		Goto END
	StrCmpS $0 ico 0 +3
	StrCpy $0 %1
		Goto END
	StrCmpS $0 ifx 0 +3
	StrCpy $0 5
		Goto END
	StrCmpS $0 j2k 0 +3
	StrCpy $0 6
		Goto END
	StrCmpS $0 jp2 0 +3
	StrCpy $0 6
		Goto END
	StrCmpS $0 jpeg 0 +3
	StrCpy $0 7
		Goto END
	StrCmpS $0 jpg 0 +3
	StrCpy $0 7
		Goto END
	StrCmpS $0 pm 0 +3
	StrCpy $0 10
		Goto END
	StrCmpS $0 png 0 +3
	StrCpy $0 8
		Goto END
	StrCmpS $0 tif 0 +3
	StrCpy $0 9
		Goto END
	StrCmpS $0 tiff 0 +3
	StrCpy $0 9
		Goto END
	StrCmpS $0 xpm 0 +3
	StrCpy $0 10
		Goto +2
	StrCpy $0 error
	END:
	Exch $0
FunctionEnd
Function GetLCID
	!macro _GetLCID _LNG _LCID
		Push ${_LNG}
		Call GetLCID
		Pop ${_LCID}
	!macroend
	!define GetLCID "!insertmacro _GetLCID"
	Exch $0
	StrCmpS $0 Chinese.lng 0 +3
	StrCpy $0 2052
		Goto EndLCID
	StrCmpS $0 Danish.lng 0 +3
	StrCpy $0 1030
		Goto EndLCID
	StrCmpS $0 German.lng 0 +3
	StrCpy $0 1031
		Goto EndLCID
	StrCmpS $0 English.lng 0 +3
	StrCpy $0 1033
		Goto EndLCID
	StrCmpS $0 Spanish.lng 0 +3
	StrCpy $0 1034
		Goto EndLCID
	StrCmpS $0 French.lng 0 +3
	StrCpy $0 1036
		Goto EndLCID
	StrCmpS $0 Italian.lng 0 +3
	StrCpy $0 1040
		Goto EndLCID
	StrCmpS $0 Japanese.lng 0 +3
	StrCpy $0 1041
		Goto EndLCID
	StrCmpS $0 Hungarian.lng 0 +3
	StrCpy $0 1038
		Goto EndLCID
	StrCmpS $0 PortuguesBrasil.lng 0 +3
	StrCpy $0 1046
		Goto EndLCID
	StrCmpS $0 Russian.lng 0 +3
	StrCpy $0 1049
		Goto +2
	StrCpy $0 1033
	EndLCID:
	Exch $0
FunctionEnd
Function GetLNG
	!macro _GetLNG _LCID _LNG
		Push ${_LCID}
		Call GetLNG
		Pop ${_LNG}
	!macroend
	!define GetLNG "!insertmacro _GetLNG"
	Exch $0
	StrCmpS $0 2052 0 +3
	StrCpy $0 Chinese.lng
		Goto EndLNG
	StrCmpS $0 1030 0 +3
	StrCpy $0 Danish.lng
		Goto EndLNG
	StrCmpS $0 1031 0 +3
	StrCpy $0 German.lng
		Goto EndLNG
	StrCmpS $0 1033 0 +3
	StrCpy $0 English.lng
		Goto EndLNG
	StrCmpS $0 1034 0 +3
	StrCpy $0 Spanish.lng
		Goto EndLNG
	StrCmpS $0 1036 0 +3
	StrCpy $0 French.lng
		Goto EndLNG
	StrCmpS $0 1040 0 +3
	StrCpy $0 Italian.lng
		Goto EndLNG
	StrCmpS $0 1041 0 +3
	StrCpy $0 Japanese.lng
		Goto EndLNG
	StrCmpS $0 1038 0 +3
	StrCpy $0 Hungarian.lng
		Goto EndLNG
	StrCmpS $0 1046 0 +3
	StrCpy $0 PortuguesBrasil.lng
		Goto EndLNG
	StrCmpS $0 1049 0 +3
	StrCpy $0 Russian.lng
		Goto +2
	StrCpy $0 error
	EndLNG:
	Exch $0
FunctionEnd
Function PAL:LanguageLCID
	IfFileExists `${CFG}` 0 +3
	Push `${CFG}`
	Goto +2
	Push `${DEFCFG}`
	Push Language=
	Call ReadS
	Pop $0
	Push $0
	Call GetLCID
	Pop $0
	System::Call 'Kernel32::SetEnvironmentVariable(t "PAL:LanguageLCID", t "$0")'
FunctionEnd

;= CUSTOM
;= ################
${SegmentFile}
!macro OS
	${If} ${IsNT}
		${IfNot} ${AtLeastWinXP}
			${MsgBox}
		${EndIf}
	${Else}
		${MsgBox}
	${EndIf}
!macroend
!macro Lang
	Push '$EXEDIR'
	Call Get.Parent
	Pop $0
	IfFileExists '${PFM}' 0 +6
	ReadEnvStr $0 PAL:LanguageLCID
	Push $0
	Call GetLNG
	Pop $0
	StrCmpS $0 error 0 +2
	Call PAL:LanguageLCID
!macroend
!macro LangInit
	ReadEnvStr $0 PAL:LanguageLCID
	Push $0
	Call GetLNG
	Pop $0
	System::Call 'Kernel32::SetEnvironmentVariable(t "PAL:LanguageCustom", t "$0")'
!macroend
!macro Init
	Push `${CONFIG}`
	Push Banner=
	Call ReadS
	Pop $0
	StrCmpS $0 true 0 +6
	Banner::show ""
	Banner::getWindow
	Pop $0
	GetDlgItem $0 $0 1030
	SendMessage $0 ${WM_SETTEXT} 0 "STR:$(i)"
!macroend
${SegmentPrePrimary}
	${File::BackupLocal} `${SND}`
	CreateShortCut `${SND}` `${EXE}` "" `${EXE}` 0
!macroend
!macro PreExecExecute
	Push `${CONFIG}`
	Push Banner=
	Call ReadS
	Pop $0
	StrCmpS $0 true 0 +3
	StrCmpS $SecondaryLaunch true +2
	Banner::destroy
!macroend
${SegmentPostPrimary}
	${File::RestoreLocal} `${SND}`
!macroend
!macro PreReg
	StrCpy $0 1
		ClearErrors
		ReadINIStr $1 `${LAUNCHER}` Associations $0
		IfErrors +49
		Push $1
		Call GetIconIndex
		Pop $2
		StrCmpS $2 error +43
		StrCpy $2 1
		IfFileExists `${RUNTIME}` 0 +3
		ReadINIStr $3 `${RUNTIME}` Associations $2
		Goto +2
		ReadINIStr $3 `${RUNTIME2}` Associations $2
		StrCmpS $3 "" +3
		IntOp $2 $2 + 1
		Goto -6
		WriteINIStr `${RUNTIME}` Associations $2 $1
		WriteINIStr `${RUNTIME2}` Associations $2 $1
		Registry::_KeyExists /NOUNLOAD `${_}\${ULS}\.$1`
		Pop $2
		StrCmpS $2 -1 0 +6
		Registry::_KeyExists /NOUNLOAD `${ULS}\.$1`
		Pop $2
		StrCmpS $2 0 0 +3
			Registry::_MoveKey /NOUNLOAD `${ULS}\.$1` `${_}\${ULS}\.$1`
			Pop $2
		Registry::_KeyExists /NOUNLOAD `${_}\${ULS}\${APP}.$1`
		Pop $2
		StrCmpS $2 -1 0 +6
		Registry::_KeyExists /NOUNLOAD `${ULS}\${APP}.$1`
		Pop $2
		StrCmpS $2 0 0 +3
			Registry::_MoveKey /NOUNLOAD `${ULS}\${APP}.$1` `${_}\${ULS}\${APP}.$1`
			Pop $2
		Registry::_KeyExists /NOUNLOAD `${_}\${EXT}\.$1`
		Pop $2
		StrCmpS $2 -1 0 +6
		Registry::_KeyExists /NOUNLOAD `${EXT}\.$1`
		Pop $2
		StrCmpS $2 0 0 +3
			Registry::_MoveKey /NOUNLOAD `${EXT}\.$1` `${_}\${EXT}\.$1`
			Pop $2
		Registry::_KeyExists /NOUNLOAD `${_}\${EXTS}\.$1`
		Pop $2
		StrCmpS $2 -1 0 +6
		Registry::_KeyExists /NOUNLOAD `${EXTS}\.$1`
		Pop $2
		StrCmpS $2 0 0 +3
			Registry::_MoveKey /NOUNLOAD `${EXTS}\.$1` `${_}\${EXTS}\.$1`
			Pop $2
		IntOp $0 $0 + 1
	Goto -50
!macroend
!macro UnPreRegWrite
	StrCpy $0 1
		IfFileExists `${RUNTIME}` 0 +4
		ClearErrors
		ReadINIStr $1 `${RUNTIME}` Associations $0
		Goto +3
		ClearErrors
		ReadINIStr $1 `${RUNTIME2}` Associations $0
		IfErrors +18
			Push $1
			Call GetIconIndex
			Pop $2
			StrCmp $2 `%1` 0 +3
			WriteRegStr HKCU `${CL}\${APP}.$1\DefaultIcon` "" %1
			Goto +2
			WriteRegStr HKCU `${CL}\${APP}.$1\DefaultIcon` "" `"${DLL}",$2`
			WriteRegStr HKCU `${CL}\.$1` "" ${APP}.$1
			WriteRegStr HKCU `${CL}\.$1\OpenWithList\IcoFX2.exe` "" ""
			WriteRegStr HKCU `${CL}\${APP}.$1` "" Icon
			WriteRegStr HKCU `${CL}\${APP}.$1\shell\open` Icon `${EXE}`
			WriteRegStr HKCU `${CL}\${APP}.$1\shell\open\command` "" `"${EXE}" "%1"`
			WriteRegStr HKCU `${EX}\.$1\UserChoice` Progid ${APP}.$1
			WriteRegStr HKCU `${EX}\.$1\UndoClass` "" PreviewHandlerLib.ifxfile
			WriteRegBin HKCU `${EX}\.$1\OpenWithProgids` ${APP}.$1 0
		IntOp $0 $0 + 1
	Goto -23
!macroend
!macro PostReg
	StrCpy $0 1
		IfFileExists `${RUNTIME}` 0 +4
		ClearErrors
		ReadINIStr $1 `${RUNTIME}` Associations $0
		Goto +3
		ClearErrors
		ReadINIStr $1 `${RUNTIME2}` Associations $0
		IfErrors +59
		Registry::_DeleteKey /NOUNLOAD `${ULS}\.$1`
		Pop $2
		Registry::_KeyExists /NOUNLOAD `${_}\${ULS}\.$1`
		Pop $2
		StrCmpS $2 0 0 +10
			Registry::_MoveKey /NOUNLOAD `${_}\${ULS}\.$1` `${ULS}\.$1`
			Pop $2
				StrCpy $3 `${ULS}\.$1`
				Push `$3`
				Call Get.Parent
				Pop $3
				Registry::_DeleteKeyEmpty /NOUNLOAD `${_}\$3`
				Pop $2
			StrCmpS $3 "" 0 -5
		Registry::_DeleteKey /NOUNLOAD `${ULS}\${APP}.$1`
		Pop $2
		Registry::_KeyExists /NOUNLOAD `${_}\${ULS}\${APP}.$1`
		Pop $2
		StrCmpS $2 0 0 +10
			Registry::_MoveKey /NOUNLOAD `${_}\${ULS}\${APP}.$1` `${ULS}\${APP}.$1`
			Pop $2
				StrCpy $3 `${ULS}\${APP}.$1`
				Push `$3`
				Call Get.Parent
				Pop $3
				Registry::_DeleteKeyEmpty /NOUNLOAD `${_}\$3`
				Pop $2
			StrCmpS $3 "" 0 -5
		Registry::_DeleteKey /NOUNLOAD `${EXT}\.$1`
		Pop $2
		Registry::_KeyExists /NOUNLOAD `${_}\${EXT}\.$1`
		Pop $2
		StrCmpS $2 0 0 +10
			Registry::_MoveKey /NOUNLOAD `${_}\${EXT}\.$1` `${EXT}\.$1`
			Pop $2
			StrCpy $3 `${EXT}\.$1`
				Push `$3`
				Call Get.Parent
				Pop $3
				Registry::_DeleteKeyEmpty /NOUNLOAD `${_}\$3`
				Pop $2
			StrCmpS $3 "" 0 -5
		Registry::_DeleteKey /NOUNLOAD `${EXTS}\.$1`
		Pop $2
		Registry::_KeyExists /NOUNLOAD `${_}\${EXTS}\.$1`
		Pop $2
		StrCmpS $2 0 0 +10
			Registry::_MoveKey /NOUNLOAD `${_}\${EXTS}\.$1` `${EXTS}\.$1`
			Pop $2
			StrCpy $3 `${EXTS}\.$1`
				Push `$3`
				Call Get.Parent
				Pop $3
				Registry::_DeleteKeyEmpty /NOUNLOAD `${_}\$3`
				Pop $2
			StrCmpS $3 "" 0 -5
		IntOp $0 $0 + 1
	Goto -64
	Registry::_DeleteKeyEmpty /NOUNLOAD ${_}
	Pop $2
	Registry::_DeleteKeyEmpty /NOUNLOAD ${PAF}
	Pop $2
!macroend
