; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Gnome Extractor"
#define MyAppVersion "0.4.1"
#define MyAppPublisher "DanchiZZ & Waz � Copyright"
#define MyAppURL "http://gnomex.tk/"
#define MyAppExeName "GnomeExtractor.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D51D687B-F3C1-4F0A-ACFF-9BFB5C63CCC9}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\Gnomoria
DefaultGroupName={#MyAppName}
LicenseFile=..\Readme\license.txt
OutputDir=Output
OutputBaseFilename=Gnome-Extractor-{#MyAppVersion}-installer
;SetupIconFile=..\bin\Debug\GnomeExtractor.exe
Compression=lzma
SolidCompression=yes
UsePreviousAppDir=yes
UsePreviousGroup=yes
UsePreviousSetupType=yes
UsePreviousTasks=yes

[Languages]
Name: english; MessagesFile: compiler:Default.isl
Name: russian; MessagesFile: compiler:Languages\Russian.isl

[CustomMessages]
russian.Cheats =���-������
russian.NoCheats =No-cheat ������
russian.Custom =����������
russian.Full =������
russian.Default =��-���������
english.Cheats =Cheat version
english.NoCheats =No-Cheat version
english.Custom =Custom
english.Full =Full
english.Default =Default
russian.InstallRussian=���������� ������� ����
english.InstallRussian=Install russian language

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: ..\bin\Debug\GnomeExtractor.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\Debug\NLog.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\Debug\NLog.config; DestDir: {app}; Flags: ignoreversion
Source: ..\Readme\Readme.txt; DestDir: {app}; Languages: english; Flags: ignoreversion isreadme
Source: ..\Readme\������ ����.txt; DestDir: {app}; Languages: russian; Flags: ignoreversion isreadme
; first settings.xml file with IsCheatsEnabled == true
Source: ..\bin\Debug\cheats\settings.xml; DestDir: {userappdata}\Gnome Extractor; Flags: ignoreversion; Components: cheats
; second settings.xml file with IsCheatsEnabled == false
Source: ..\bin\Debug\settings.xml; DestDir: {userappdata}\Gnome Extractor; Flags: ignoreversion; Components: nocheats
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: ..\Languages\english.xml; DestDir: {app}\Languages; DestName: english.xml; Flags: ignoreversion
Source: ..\Languages\russian.xml; DestDir: {app}\Languages; DestName: russian.xml; Flags: ignoreversion; Components: installRussian

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {group}\{cm:ProgramOnTheWeb,{#MyAppName}}; Filename: {#MyAppURL}
Name: {group}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: quicklaunchicon

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}; Flags: nowait postinstall skipifsilent

[Components]
Name: nocheats; Description: {cm:NoCheats}; Flags: exclusive disablenouninstallwarning
Name: cheats; Description: {cm:Cheats}; Flags: exclusive disablenouninstallwarning
Name: installRussian; Description: {cm:InstallRussian}; Types: default; Flags: disablenouninstallwarning

[Types]
Name: default; Description: {cm:Default}; Languages: 
Name: custom; Description: {cm:Custom}; Flags: iscustom

[UninstallDelete]
Name: {app}\error.log; Type: files

[InstallDelete]
Name: {app}\Readme_rus_GnomeExtractor_0_1.txt; Type: files
Name: {app}\Readme_eng_GnomeExtractor_0_1.txt; Type: files
Name: {app}\en-US\*; Type: filesandordirs
Name: {app}\Readme_rus_GnomeExtractor_0_3.txt; Type: files
Name: {app}\Readme_eng_GnomeExtractor_0_3.txt; Type: files
Name: {app}\en-US\; Type: dirifempty
Name: {app}\ru-RU\; Type: dirifempty
Name: {app}\ru-RU\*; Type: filesandordirs
