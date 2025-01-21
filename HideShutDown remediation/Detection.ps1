# Created by Ola Ström, olastrom.com
# Date: 2025-01-21
# Version: 1.0
# PowerShell script to update the registry value

# Define the registry path and value
$registryPath = "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Start\HideShutDown"
$valueName = "value"

# Check the current value
$currentValue = (Get-ItemProperty -Path $registryPath -Name $valueName).$valueName

# Check the value and set the appropriate exit code
if ($currentValue -eq 1) {
    Write-Output "Registry value is set to 1."
    exit 0
} else {
    Write-Output "Registry value is not set to 1."
    exit 1
}
