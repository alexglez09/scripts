# Define paths
$settingsPath = "$env:LOCALAPPDATA\Microsoft\VisualStudio\17.0_650ef552\Settings\CurrentSettings.vssettings"
$extensionsPath = "$env:LOCALAPPDATA\Microsoft\VisualStudio\17.0_650ef552\Extensions"
$backupPath = "C:\Projects\dev-settings\VS"

# Copy settings
Copy-Item -Path $settingsPath -Destination $backupPath -Force

# Copy extensions
Copy-Item -Path $extensionsPath -Destination $backupPath -Recurse -Force

Write-Host "vs-export completed"