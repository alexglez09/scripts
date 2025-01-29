# Installations using Chocolatey

$packages = @(
    "cmder",
    "vscode",
    "everything",
    "gitextensions",
    "meld",
    "adobereader",
    "7zip",
    "postman",
    "winrar",
    "studio3t",
    "python",
    "nvm",
    "sql-server-management-studio",
    "visualstudio2022professional",
    "gh",
    "jq",
    "vlc",
    "azure-cli",
    "procexp",
    "lockhunter",
    "citrix-receiver"
)

foreach ($package in $packages) {
    try {
        Write-Output "Starting installation of $package"
        choco install $package -y
        Write-Output "Successfully installed $package"
    } catch {
        Write-Output "Error installing $package : $_"
    }
}

Write-Output "All installations completed"
