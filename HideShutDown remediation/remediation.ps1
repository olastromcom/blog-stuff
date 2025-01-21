# PowerShell script to update the registry value
$registryPath = "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Start\HideShutDown"
$registryName = "value"
$registryValue = 1

# Set the registry value
Set-ItemProperty -Path $registryPath -Name $registryName -Value $registryValue

Write-Output "Registry value updated successfully."