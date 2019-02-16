;ENTER VERSION INFO HERE
#define Version "4.0.6"

;TODO: Would be great to get the following to work, but version info isn't in exe file:
;#define AppVersion GetFileVersion("dist\csgui.exe")
;#if AppVersion == ""
;    #error MyAppVer - Version information not found!
;#endif


[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E4376ABF-DB0A-41EA-B854-54ED7A20BD38}
AppName=Circuitscape
AppVerName=Circuitscape {#Version}
AppPublisher=Circuitscape
AppPublisherURL=https://www.circuitscape.org/
AppSupportURL=https://www.circuitscape.org/
AppUpdatesURL=https://www.circuitscape.org/
DefaultDirName={pf}\Circuitscape
DefaultGroupName=Circuitscape
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes
; For 64-bit only:
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"
; BHM 01/17/2011- Removed Flags: unchecked

[Files]
; Source: "C:\CIRCUITSCAPE\PyCircuitScape\dist\cs_gui.exe"; DestDir: "{app}"; Flags: ignoreversion; Permissions: users-modify
Source: "dist\csgui.exe"; DestDir: "{app}"; Flags: ignoreversion; Permissions: users-modify
Source: "dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: users-modify
; BHM added permissions above for 64-bit install 01/17/2011
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
;Name: "{group}\Circuitscape"; Filename: "{app}\cs_gui.exe"
Name: "{group}\Circuitscape"; Filename: "{app}\csgui.exe"
;Name: "{commondesktop}\Circuitscape"; Filename: "{app}\cs_gui.exe"; IconFilename: "{app}\cs_logo.ico"; Tasks: desktopicon
Name: "{commondesktop}\Circuitscape"; Filename: "{app}\csgui.exe"; IconFilename: "{app}\cs_logo.ico"; Tasks: desktopicon
;Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Circuitscape"; Filename: "{app}\cs_gui.exe"; IconFilename: "{app}\cs_logo.ico"; Tasks: quicklaunchicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Circuitscape"; Filename: "{app}\csgui.exe"; IconFilename: "{app}\cs_logo.ico"; Tasks: quicklaunchicon

[Dirs]
Name: {app}; Permissions: users-modify
; BHM added permissions above for 64-bit Windows 7 install 01/17/2011

[Run]
;Filename: "{app}\circuitscape_4_0.pdf"; Description: "View the user guide"; Flags: postinstall shellexec skipifsilent
Filename: https://circuitscape.org/docs/#3-installing-circuitscape; Description: "View the user guide"; Flags: postinstall shellexec skipifsilent
Filename: "{app}\csgui.exe"; Description: "{cm:LaunchProgram,Circuitscape}"; Flags: nowait postinstall skipifsilent
