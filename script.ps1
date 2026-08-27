<#
.SYNOPSIS
  Template PowerShell script.

.DESCRIPTION
  This script is a template named script.ps1 created by Copilot. Replace the body with your logic.

.PARAMETER Name
  Example parameter.

.EXAMPLE
  .\script.ps1 -Name "World"
#>

param(
    [Parameter(Mandatory=$false)]
    [string]$Name = "World",

    [switch]$VerboseLogging
)

function Write-Log {
    param([string]$Message, [string]$Level='INFO')
    $timestamp = (Get-Date).ToString('o')
    if ($VerboseLogging) { Write-Host "[$timestamp] [$Level] $Message" -ForegroundColor Cyan }
    else { Write-Output "[$timestamp] [$Level] $Message" }
}

try {
    Write-Log "Script started. Args: Name=$Name, VerboseLogging=$VerboseLogging" "DEBUG"
    # Main script logic placeholder
    Write-Log "Hello, $Name!"
    # Return value
    exit 0
} catch {
    Write-Log "An error occurred: $_" "ERROR"
    exit 1
}
