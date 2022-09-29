<#
    FileName:    Detetect_quickassist_app.ps1
    Author:      Ola Strom
    Contact:     @olastromcom
    Created:     2021-12-13
    Updated:     2022-06-16
    Version history:
    1.0.0 - (2021-12-13) Script created
    1.1.0 - (2022-06-16) Script updated for MS Store app
    1.1.1 - (2022-09-26) Added -Like instead so it workd. Also If Then and not only catch
#>

$WinCap = Get-AppxPackage -name "MicrosoftCorporationII.QuickAssist"

try {
    If ($WinCap.Name -like "*MicrosoftCorporationII.QuickAssist"){
        Write-Warning "Quick Assist installed - running remediation script"
        Exit 1
    }
    Else{
    Write-Host "Quick Assist missing - exiting"
        Exit 0
        }
}
catch {
        Write-Host "Quick Assist missing - exiting"
        Exit 0
}
