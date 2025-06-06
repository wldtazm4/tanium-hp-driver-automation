# Creates the default folder structure for the HP Tanium Driver Solution
# Usage: .\Setup-Environment.ps1 [-RootPath <path>]
param(
    [string]$RootPath = "C:\HP_Tanium_Automation"
)

$directories = @(
    "$RootPath\Scripts\Functions",
    "$RootPath\Config",
    "$RootPath\Logs",
    "$RootPath\Repositories\Win11",
    "$RootPath\Packages",
    "$RootPath\Temp",
    "$RootPath\Documentation"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
    }
}

Write-Host "Environment setup complete at $RootPath"

