<#
    FileName:    remove_quickasssit.ps1
    Author:      Ola Strom
    Contact:     @olastromcom
    Created:     2021-12-13
    Updated:     2022-06-16
    Version history:
    1.0.0 - (2021-12-13) Script created
    1.1.0 - (2022-06-16) Script updated for MS Store app
    1.1.1 - (2022-09-26) Modified so the packagename is dynamic since it gets updated (Lasse Nilsson)
#>

$WinCap = Get-AppxPackage -name "MicrosoftCorporationII.QuickAssist"

Remove-AppxPackage -package $WinCap.PackageFullName
