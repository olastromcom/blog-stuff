<#
    FileName:    Detectect_quickassist.ps1
    Author:      Ola Ström
    Contact:     @olastromcom
    Created:     2021-12-13
    Updated:     2021-12-13
    Version history:
    1.0.0 - (2021-12-13) Script created
#>

$WinCap = Get-WindowsCapability -online -name App.Support.QuickAssist*

If ($WinCap.State -match "NotPresent"){
    Write-Warning "Windows Capability - Quick Assist missing - exiting"
    Exit 0
}
else {
    Write-Host "Windows Capability - Quick Assist installed, Running Remediation script"
    Exit 1
}