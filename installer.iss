#define AppName "RiskLot Pro"
#define AppVersion "1.0.0"
[Setup]
AppId={{D16E5B4A-EB58-4D72-A89D-68E3C45DF762}
AppName={#AppName}
AppVersion={#AppVersion}
DefaultDirName={autopf}\RiskLot Pro
DefaultGroupName=RiskLot Pro
OutputDir=installer_output
OutputBaseFilename=RiskLotPro_Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
[Files]
Source: "dist\RiskLotPro.exe"; DestDir: "{app}"; Flags: ignoreversion
[Icons]
Name: "{group}\RiskLot Pro"; Filename: "{app}\RiskLotPro.exe"
Name: "{autodesktop}\RiskLot Pro"; Filename: "{app}\RiskLotPro.exe"; Tasks: desktopicon
[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: checkedonce
[Run]
Filename: "{app}\RiskLotPro.exe"; Description: "Launch RiskLot Pro"; Flags: nowait postinstall skipifsilent
