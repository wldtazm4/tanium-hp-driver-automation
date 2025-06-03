# HP Tanium Driver Solution - Script-Based Implementation Guide

## Overview

This guide provides a detailed implementation plan for automating HP driver and firmware management using a script-based approach (rather than PowerShell modules). This solution uses HP's Client Management Script Library (CMSL) and HP Image Assistant (HPIA) to maintain driver repositories and create Tanium deployment packages.

## Table of Contents

1. [Step-by-Step Todo List](#step-by-step-todo-list)
2. [Architecture Overview](#architecture-overview)
3. [Project Structure](#project-structure)
4. [Core Components](#core-components)
5. [Implementation Phases](#implementation-phases)
6. [Script Details](#script-details)
7. [Configuration](#configuration)
8. [Usage Examples](#usage-examples)
9. [Troubleshooting](#troubleshooting)
10. [Best Practices](#best-practices)

## Step-by-Step Todo List

### Prerequisites (Day 0)
- [ ] Verify Windows Server 2016+ or Windows 10 1809+ (for CMSL compatibility)
- [ ] Ensure PowerShell 5.1 or higher is installed (PowerShell 7+ recommended)
- [ ] Confirm administrative access on the automation server
- [ ] Verify internet connectivity to HP servers (hpia.hpcloud.hp.com)
- [ ] Allocate at least 50GB disk space for repositories
- [ ] Install 7-Zip (optional but recommended for better compression)
- [ ] Document all HP models that need support (get model names)

### Phase 1: Project Setup (Day 1)

#### 1.1 Create Directory Structure
- [ ] Create root project folder: `C:\HP_Tanium_Automation`
- [ ] Run the directory creation script:
  ```powershell
  $rootPath = "C:\HP_Tanium_Automation"
  $directories = @(
      "$rootPath\Scripts\Functions",
      "$rootPath\Config",
      "$rootPath\Logs",
      "$rootPath\Repositories\Win11",
      "$rootPath\Packages",
      "$rootPath\Temp",
      "$rootPath\Documentation"
  )
  foreach ($dir in $directories) {
      New-Item -ItemType Directory -Path $dir -Force
  }
  ```
- [ ] Verify all directories were created successfully
- [ ] Set appropriate NTFS permissions (limit write access)

#### 1.2 Create Logging Framework
- [ ] Create `Scripts\Functions\Write-Log.ps1`
- [ ] Copy the Write-Log function code from the guide
- [ ] Add Initialize-Logging function
- [ ] Add Rotate-Logs function stub
- [ ] Test logging with a simple script:
  ```powershell
  . "C:\HP_Tanium_Automation\Scripts\Functions\Write-Log.ps1"
  Initialize-Logging -LogName "Test"
  Write-Log "Test message" -Level INFO
  Write-Log "Test error" -Level ERROR
  ```

### Phase 2: Core Functions (Day 2)

#### 2.1 Configuration Management
- [ ] Create `Scripts\Functions\Config-Functions.ps1`
- [ ] Add Load-HPConfiguration function
- [ ] Add Test-HPConfiguration function
- [ ] Add Get-RepositoryPath function
- [ ] Create a test configuration file to verify functions work

#### 2.2 Common Utilities
- [ ] Create `Scripts\Functions\Common-Functions.ps1`
- [ ] Add Test-Administrator function
- [ ] Add Test-InternetConnection function
- [ ] Add Get-FileHashString function
- [ ] Add Test-DiskSpace function
- [ ] Test each utility function individually

#### 2.3 Initial Configuration
- [ ] Create `Config\hp_update_config.template.json`
- [ ] Copy template configuration from guide
- [ ] Create actual config: `Config\hp_update_config.json`
- [ ] Customize configuration for your environment:
  - [ ] Update RepositoryBase path
  - [ ] Set HPIA download path
  - [ ] Add your first test platform (get Platform ID)

### Phase 3: HP Platform Discovery (Day 3)

#### 3.1 Install CMSL Temporarily (Manual)
- [ ] Download CMSL installer manually from HP
- [ ] Install CMSL on your workstation
- [ ] Import HPCMSL module: `Import-Module HPCMSL`

#### 3.2 Gather Platform Information
- [ ] Run platform discovery for each model:
  ```powershell
  # For current machine
  Get-HPDeviceDetails
  
  # Search by model name
  Get-HPPlatformData | Where-Object { $_.Name -like "*YOUR_MODEL*" }
  ```
- [ ] Document Platform IDs for all models
- [ ] Update configuration file with all platforms
- [ ] Verify platform IDs are 4-character hex codes

### Phase 4: CMSL Installation Script (Day 4)

#### 4.1 Create Installation Script
- [ ] Create `Scripts\Install-HPCMSL.ps1`
- [ ] Copy the script code from the guide
- [ ] Review and understand each section
- [ ] Update CMSL version if newer is available

#### 4.2 Test CMSL Installation
- [ ] Run script in test mode (without -Force)
- [ ] Verify CMSL downloads correctly
- [ ] Confirm silent installation works
- [ ] Test that HPCMSL module imports
- [ ] Run with -Force to test reinstallation

### Phase 5: Repository Management (Days 5-7)

#### 5.1 Create Repository Sync Script
- [ ] Create `Scripts\Sync-HPRepositories.ps1`
- [ ] Copy the script code from the guide
- [ ] Review filter logic and understand options

#### 5.2 Test with Single Platform
- [ ] Configure one platform in config file
- [ ] Run sync in DryRun mode first:
  ```powershell
  .\Sync-HPRepositories.ps1 -DryRun -Verbose
  ```
- [ ] Review what would be created
- [ ] Run actual sync (this will take time):
  ```powershell
  .\Sync-HPRepositories.ps1 -Verbose
  ```
- [ ] Monitor download progress
- [ ] Verify repository structure created
- [ ] Check .repository folder exists
- [ ] Review downloaded SoftPaqs

#### 5.3 Add Additional Platforms
- [ ] Add second platform to config
- [ ] Run sync for new platform only:
  ```powershell
  .\Sync-HPRepositories.ps1 -PlatformID "XXXX"
  ```
- [ ] Gradually add remaining platforms
- [ ] Monitor disk space usage

### Phase 6: Package Building (Days 8-9)

#### 6.1 Download HPIA
- [ ] Check latest HPIA version on HP site
- [ ] Update version in config if needed
- [ ] Manually download HPIA to verify URL
- [ ] Delete manual download (script will re-download)

#### 6.2 Create Package Build Script
- [ ] Create `Scripts\Build-TaniumPackages.ps1`
- [ ] Copy the script code from the guide
- [ ] Review package naming convention

#### 6.3 Create Client Install Script
- [ ] Create `Scripts\Install-HPUpdates.ps1`
- [ ] Copy the client script code
- [ ] Review HPIA parameters

#### 6.4 Test Package Building
- [ ] Run package build for one platform:
  ```powershell
  .\Build-TaniumPackages.ps1 -PlatformID "XXXX" -Verbose
  ```
- [ ] Verify ZIP created in Packages folder
- [ ] Extract ZIP manually to verify contents:
  - [ ] All SoftPaqs present
  - [ ] HPIA executable included
  - [ ] Install script included
- [ ] Check ZIP file size

### Phase 7: End-to-End Testing (Days 10-11)

#### 7.1 Create Master Script
- [ ] Create `Scripts\Update-HPDriverSolution.ps1`
- [ ] Copy the orchestration script code
- [ ] Review parameter options

#### 7.2 Test Full Workflow
- [ ] Run complete workflow in DryRun:
  ```powershell
  .\Update-HPDriverSolution.ps1 -DryRun -Verbose
  ```
- [ ] Run actual workflow for one platform
- [ ] Monitor each phase completion
- [ ] Review all log files generated

#### 7.3 Test on Target Machine
- [ ] Copy package to test HP machine
- [ ] Extract package contents
- [ ] Run Install-HPUpdates.ps1 manually
- [ ] Monitor HPIA execution
- [ ] Verify drivers installed
- [ ] Check for reboot requirements
- [ ] Review client-side logs

### Phase 8: Tanium Integration (Days 12-13)

#### 8.1 Prepare for Tanium
- [ ] Document package naming convention
- [ ] Create Tanium package documentation
- [ ] Prepare detection method logic
- [ ] Plan targeting criteria

#### 8.2 Create Tanium Package
- [ ] Log into Tanium Console
- [ ] Navigate to Packages
- [ ] Create new package
- [ ] Upload ZIP file
- [ ] Configure command:
  ```
  powershell.exe -ExecutionPolicy Bypass -File .\Install-HPUpdates.ps1
  ```
- [ ] Set detection method
- [ ] Configure reboot handling

#### 8.3 Test Deployment
- [ ] Deploy to single test machine
- [ ] Monitor deployment progress
- [ ] Verify successful installation
- [ ] Check Tanium logs
- [ ] Validate driver updates applied

### Phase 9: Automation Setup (Day 14)

#### 9.1 Create Scheduled Task
- [ ] Decide on sync schedule (weekly recommended)
- [ ] Create scheduled task for automation:
  ```powershell
  $action = New-ScheduledTaskAction -Execute "PowerShell.exe" `
      -Argument "-ExecutionPolicy Bypass -File C:\HP_Tanium_Automation\Scripts\Update-HPDriverSolution.ps1"
  
  $trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Sunday -At 2:00AM
  
  Register-ScheduledTask -TaskName "HP Driver Repository Update" `
      -Action $action -Trigger $trigger -User "SYSTEM" -RunLevel Highest
  ```
- [ ] Test scheduled task runs successfully
- [ ] Verify logs generated from scheduled run

#### 9.2 Setup Monitoring
- [ ] Create log monitoring process
- [ ] Set up disk space alerts
- [ ] Configure email notifications (optional)
- [ ] Document support procedures

### Phase 10: Documentation & Handover (Day 15)

#### 10.1 Create Documentation
- [ ] Create README.md in project root
- [ ] Document configuration options
- [ ] Create troubleshooting guide
- [ ] Document how to add new models
- [ ] Create runbook for operations team

#### 10.2 Knowledge Transfer
- [ ] Train operations team
- [ ] Document support contacts
- [ ] Create change management process
- [ ] Establish update procedures

### Post-Implementation Tasks

#### Validation Checklist
- [ ] All configured platforms sync successfully
- [ ] Packages build without errors
- [ ] Client installation tested on each model
- [ ] Scheduled task runs automatically
- [ ] Logs rotate properly
- [ ] Documentation is complete

#### Optimization Tasks
- [ ] Review repository sizes
- [ ] Optimize sync schedules
- [ ] Implement incremental updates
- [ ] Add email notifications
- [ ] Set up performance monitoring

#### Maintenance Tasks (Ongoing)
- [ ] Check for CMSL updates (quarterly)
- [ ] Update HPIA version (quarterly)
- [ ] Add new HP models as needed
- [ ] Review and clean old packages
- [ ] Monitor disk space usage
- [ ] Archive old log files

### Quick Command Reference

```powershell
# Install/Update CMSL
.\Install-HPCMSL.ps1

# Sync all repositories
.\Sync-HPRepositories.ps1

# Sync specific platform
.\Sync-HPRepositories.ps1 -PlatformID "8470"

# Build all packages
.\Build-TaniumPackages.ps1

# Full automation
.\Update-HPDriverSolution.ps1

# Dry run test
.\Update-HPDriverSolution.ps1 -DryRun -Verbose

# Check logs for errors
Select-String -Path .\Logs\*.log -Pattern "\[ERROR\]"
```

### Time Estimates

- **Initial Setup**: 2-3 days
- **Testing**: 2-3 days  
- **First Repository Sync**: 2-6 hours (depends on models/drivers)
- **Package Building**: 30-60 minutes
- **Tanium Integration**: 1-2 days
- **Full Implementation**: 2-3 weeks

### Success Criteria

- ✓ Automated repository updates running on schedule
- ✓ All HP models have current driver packages
- ✓ Tanium deployments work reliably
- ✓ Logging provides clear audit trail
- ✓ Documentation enables self-service support
- ✓ Process requires minimal manual intervention

## Architecture Overview

### Design Principles

- **Script-based**: No PowerShell modules - just scripts and dot-sourced functions
- **Modular**: Each script has a single, clear purpose
- **Independent**: Scripts can run standalone or be orchestrated
- **Simple**: Easy to understand, modify, and debug
- **Flexible**: Run only what you need, when you need it

### Component Interaction

```
┌─────────────────────────────────────────────────────────────┐
│                  Update-HPDriverSolution.ps1                 │
│                      (Master Orchestrator)                   │
└─────────────┬───────────────┬───────────────┬───────────────┘
              │               │               │
              ▼               ▼               ▼
┌──────────────────┐ ┌──────────────────┐ ┌──────────────────┐
│Install-HPCMSL.ps1│ │Sync-HPRepos.ps1  │ │Build-Packages.ps1│
│                  │ │                  │ │                  │
│ • Check version  │ │ • Load config    │ │ • Scan repos     │
│ • Download CMSL  │ │ • Init repos     │ │ • Include HPIA   │
│ • Silent install │ │ • Apply filters  │ │ • Create ZIPs    │
│ • Validate       │ │ • Sync SoftPaqs  │ │ • Add installer  │
└──────────────────┘ └──────────────────┘ └──────────────────┘
         │                    │                    │
         └────────────────────┴────────────────────┘
                             │
                    ┌────────▼────────┐
                    │ Shared Functions │
                    │ • Write-Log.ps1 │
                    │ • Config-Func.ps1│
                    │ • Common-Func.ps1│
                    └─────────────────┘
```

## Project Structure

```
HP_Tanium_Automation/
├── Scripts/
│   ├── Functions/                      # Shared function libraries
│   │   ├── Write-Log.ps1              # Logging functions
│   │   ├── Config-Functions.ps1       # Configuration management
│   │   └── Common-Functions.ps1       # Utility functions
│   │
│   ├── Install-HPCMSL.ps1             # Installs HP CMSL
│   ├── Sync-HPRepositories.ps1        # Syncs driver repositories
│   ├── Build-TaniumPackages.ps1       # Creates deployment packages
│   ├── Install-HPUpdates.ps1          # Client-side installer
│   └── Update-HPDriverSolution.ps1    # Master orchestration script
│
├── Config/
│   ├── hp_update_config.json          # Main configuration file
│   └── hp_update_config.template.json # Template for new setups
│
├── Repositories/                       # HP driver repositories (created by scripts)
│   └── Win11/
│       └── Platform_YYYY/
│
├── Packages/                          # Built Tanium packages (created by scripts)
│   └── HP_ZBook_15_G6_Win11.zip
│
├── Logs/                              # Script execution logs
│   ├── CMSL_Install_20240602.log
│   ├── Repository_Sync_20240602.log
│   └── Package_Build_20240602.log
│
├── Temp/                              # Temporary files
│
└── Documentation/
    ├── README.md                      # User documentation
    └── Implementation_Guide.md        # This file
```

## Core Components

### 1. Shared Functions

#### Write-Log.ps1

Provides consistent logging across all scripts:

```powershell
# Core logging function
function Write-Log {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Message,
        
        [Parameter(Mandatory=$false)]
        [ValidateSet("DEBUG","VERBOSE","INFO","SUCCESS","WARNING","ERROR")]
        [string]$Level = "INFO"
    )
    
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logLine = "[$timestamp] [$Level] $Message"
    
    # Console output with color
    switch ($Level) {
        "DEBUG"   { if ($Global:DebugLogging) { Write-Host $logLine -ForegroundColor DarkGray } }
        "VERBOSE" { if ($Global:VerboseLogging) { Write-Host $logLine -ForegroundColor Gray } }
        "INFO"    { Write-Host $logLine -ForegroundColor White }
        "SUCCESS" { Write-Host $logLine -ForegroundColor Green }
        "WARNING" { Write-Host $logLine -ForegroundColor Yellow }
        "ERROR"   { Write-Host $logLine -ForegroundColor Red }
    }
    
    # Always write to file if path is set
    if ($Global:LogFilePath) {
        Add-Content -Path $Global:LogFilePath -Value $logLine -ErrorAction SilentlyContinue
    }
}

# Initialize logging for a script
function Initialize-Logging {
    param(
        [string]$LogName,
        [string]$LogDirectory = ".\Logs"
    )
    
    # Create log directory if needed
    if (!(Test-Path $LogDirectory)) {
        New-Item -ItemType Directory -Path $LogDirectory -Force | Out-Null
    }
    
    # Set up log file with date
    $date = Get-Date -Format "yyyyMMdd_HHmmss"
    $Global:LogFilePath = Join-Path $LogDirectory "${LogName}_${date}.log"
    
    # Initialize flags
    $Global:VerboseLogging = $PSCmdlet.MyInvocation.BoundParameters["Verbose"].IsPresent
    $Global:DebugLogging = $PSCmdlet.MyInvocation.BoundParameters["Debug"].IsPresent
    
    Write-Log "=== $LogName Started ===" -Level INFO
    Write-Log "Log file: $Global:LogFilePath" -Level VERBOSE
}

# Rotate old log files
function Rotate-Logs {
    param(
        [string]$LogDirectory = ".\Logs",
        [int]$DaysToKeep = 30,
        [int]$MaxLogFiles = 10
    )
    
    # Implementation for log rotation...
}
```

#### Config-Functions.ps1

Handles configuration loading and validation:

```powershell
# Load configuration from JSON
function Load-HPConfiguration {
    param(
        [Parameter(Mandatory=$true)]
        [string]$ConfigPath
    )
    
    try {
        if (!(Test-Path $ConfigPath)) {
            throw "Configuration file not found: $ConfigPath"
        }
        
        # Read and parse JSON (strip comments for PS 5.1 compatibility)
        $jsonContent = Get-Content $ConfigPath -Raw
        
        # Remove single-line comments (// ...)
        $jsonContent = $jsonContent -replace '//.*', ''
        
        # Remove multi-line comments (/* ... */)
        $jsonContent = $jsonContent -replace '/\*[\s\S]*?\*/', ''
        
        $config = $jsonContent | ConvertFrom-Json
        
        # Validate configuration
        if (!(Test-HPConfiguration -Config $config)) {
            throw "Configuration validation failed"
        }
        
        return $config
    }
    catch {
        Write-Log "Failed to load configuration: $_" -Level ERROR
        throw
    }
}

# Validate configuration structure
function Test-HPConfiguration {
    param($Config)
    
    $isValid = $true
    
    # Check required fields
    if (!$Config.RepositoryBase) {
        Write-Log "Missing required field: RepositoryBase" -Level ERROR
        $isValid = $false
    }
    
    if (!$Config.Platforms -or $Config.Platforms.Count -eq 0) {
        Write-Log "No platforms defined in configuration" -Level ERROR
        $isValid = $false
    }
    
    # Validate each platform
    foreach ($platform in $Config.Platforms) {
        if (!$platform.PlatformID -or $platform.PlatformID -notmatch '^[0-9A-Fa-f]{4}$') {
            Write-Log "Invalid platform ID: $($platform.PlatformID)" -Level ERROR
            $isValid = $false
        }
        
        if (!$platform.TargetOS -or $platform.TargetOS -ne 'win11') {
            Write-Log "Invalid TargetOS for platform $($platform.PlatformID). Only Windows 11 is supported." -Level ERROR
            $isValid = $false
        }
    }
    
    return $isValid
}

# Get platform-specific repository path
function Get-RepositoryPath {
    param(
        [object]$Config,
        [object]$Platform
    )
    
    $basePath = $Config.RepositoryBase
    
    if ($Config.OrganizeByOS) {
        $path = Join-Path $basePath $Platform.TargetOS
    } else {
        $path = $basePath
    }
    
    $path = Join-Path $path "Platform_$($Platform.PlatformID)"
    
    return $path
}
```

#### Common-Functions.ps1

Utility functions used across scripts:

```powershell
# Test for administrator privileges
function Test-Administrator {
    $currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($currentUser)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# Test internet connectivity
function Test-InternetConnection {
    param(
        [string]$TestUrl = "https://hpia.hpcloud.hp.com"
    )
    
    try {
        $null = Invoke-WebRequest -Uri $TestUrl -Method Head -TimeoutSec 10 -UseBasicParsing
        return $true
    }
    catch {
        return $false
    }
}

# Get file hash for verification
function Get-FileHashString {
    param(
        [string]$FilePath,
        [string]$Algorithm = "SHA256"
    )
    
    if (Test-Path $FilePath) {
        $hash = Get-FileHash -Path $FilePath -Algorithm $Algorithm
        return $hash.Hash
    }
    return $null
}

# Test available disk space
function Test-DiskSpace {
    param(
        [string]$Path,
        [int]$RequiredGB = 10
    )
    
    $drive = (Get-Item $Path -ErrorAction SilentlyContinue).PSDrive
    if ($drive) {
        $freeGB = [math]::Round($drive.Free / 1GB, 2)
        if ($freeGB -lt $RequiredGB) {
            Write-Log "Low disk space: ${freeGB}GB free, ${RequiredGB}GB required" -Level WARNING
            return $false
        }
    }
    return $true
}
```

### 2. Main Scripts

Each main script is self-contained and can be run independently.

## Implementation Phases

### Phase 1: Foundation (Days 1-3)

1. **Create Directory Structure**
   ```powershell
   # Run this to create the project structure
   $directories = @(
       "Scripts\Functions",
       "Config",
       "Logs",
       "Repositories\Win11",
       "Packages",
       "Temp",
       "Documentation"
   )
   
   foreach ($dir in $directories) {
       New-Item -ItemType Directory -Path $dir -Force
   }
   ```

2. **Implement Core Functions**
   - Start with `Write-Log.ps1` - you'll use this everywhere
   - Create `Config-Functions.ps1` for configuration management
   - Add `Common-Functions.ps1` for utilities

3. **Create Configuration Template**
   ```json
   {
       // Repository base path - where all driver repos will be stored
       "RepositoryBase": "C:\\HP_Tanium_Automation\\Repositories",
       
       // Whether to organize repositories by OS
       "OrganizeByOS": true,
       
       // Global settings
       "VerboseLogging": false,
       "DryRun": false,
       "ForceRebuildPackages": false,
       
       // HPIA settings
       "HPIA": {
           "Version": "5.3.2",
           "DownloadPath": "C:\\HP_Tanium_Automation\\Temp"
       },
       
       // Platforms to manage
       "Platforms": [
           {
               "PlatformID": "8549",
               "Model": "HP ZBook 15 G6",
               "TargetOS": "win11",
               "TargetOSVersion": "23H2",
               "Categories": ["Driver", "Firmware", "BIOS"],
               "ReleaseTypes": ["Critical", "Recommended", "Routine"],
               "Enabled": true
           },
           {
               "PlatformID": "87EF",
               "Model": "HP EliteBook 840 G7",
               "TargetOS": "win11",
               "TargetOSVersion": "23H2",
               "Categories": ["Driver", "Firmware", "BIOS"],
               "ReleaseTypes": ["Critical", "Recommended"],
               "Enabled": true
           }
       ]
   }
   ```

### Phase 2: CMSL Installation (Days 4-5)

Create `Install-HPCMSL.ps1`:

```powershell
<#
.SYNOPSIS
    Installs HP Client Management Script Library (CMSL)

.DESCRIPTION
    Downloads and installs the latest version of HP CMSL with silent installation.
    Checks if already installed and validates the installation.

.PARAMETER Force
    Force reinstallation even if already installed

.PARAMETER Version
    Specific version to install (default: 1.8.2)

.EXAMPLE
    .\Install-HPCMSL.ps1
    
.EXAMPLE
    .\Install-HPCMSL.ps1 -Force -Version "1.8.2"
#>

[CmdletBinding()]
param(
    [switch]$Force,
    [string]$Version = "1.8.2"
)

# Dot-source required functions
. "$PSScriptRoot\Functions\Write-Log.ps1"
. "$PSScriptRoot\Functions\Common-Functions.ps1"

# Initialize logging
Initialize-Logging -LogName "CMSL_Install"

try {
    # Check administrator privileges
    if (!(Test-Administrator)) {
        throw "This script requires administrator privileges"
    }
    
    # Check if CMSL is already installed
    $installedModule = Get-Module -ListAvailable -Name HPCMSL
    if ($installedModule -and !$Force) {
        Write-Log "HPCMSL is already installed (version $($installedModule.Version))" -Level SUCCESS
        exit 0
    }
    
    # Download URL
    $downloadUrl = "https://hpia.hpcloud.hp.com/downloads/cmsl/hp-cmsl-$Version.exe"
    $installer = Join-Path $env:TEMP "hp-cmsl-$Version.exe"
    
    # Download installer
    Write-Log "Downloading CMSL version $Version..." -Level INFO
    Invoke-WebRequest -Uri $downloadUrl -OutFile $installer -UseBasicParsing
    
    # Verify download
    if (!(Test-Path $installer)) {
        throw "Failed to download installer"
    }
    
    # Install silently
    Write-Log "Installing CMSL..." -Level INFO
    $process = Start-Process -FilePath $installer -ArgumentList "/VERYSILENT", "/NORESTART", "/SUPPRESSMSGBOXES" -Wait -PassThru
    
    if ($process.ExitCode -ne 0) {
        throw "Installation failed with exit code: $($process.ExitCode)"
    }
    
    # Verify installation
    Import-Module HPCMSL -ErrorAction Stop
    Write-Log "HPCMSL installed successfully" -Level SUCCESS
    
    # Cleanup
    Remove-Item $installer -Force -ErrorAction SilentlyContinue
}
catch {
    Write-Log "Failed to install CMSL: $_" -Level ERROR
    exit 1
}
```

### Phase 3: Repository Management (Days 6-10)

Create `Sync-HPRepositories.ps1`:

```powershell
<#
.SYNOPSIS
    Synchronizes HP driver repositories for configured platforms

.DESCRIPTION
    Manages offline HP repositories using CMSL. Initializes repositories,
    applies filters, and syncs SoftPaqs for each configured platform.

.PARAMETER ConfigPath
    Path to configuration file (default: .\Config\hp_update_config.json)

.PARAMETER DryRun
    Simulate actions without making changes

.PARAMETER PlatformID
    Sync only specific platform ID

.EXAMPLE
    .\Sync-HPRepositories.ps1
    
.EXAMPLE
    .\Sync-HPRepositories.ps1 -DryRun -Verbose
#>

[CmdletBinding()]
param(
    [string]$ConfigPath = ".\Config\hp_update_config.json",
    [switch]$DryRun,
    [string]$PlatformID
)

# Dot-source functions
. "$PSScriptRoot\Functions\Write-Log.ps1"
. "$PSScriptRoot\Functions\Config-Functions.ps1"
. "$PSScriptRoot\Functions\Common-Functions.ps1"

# Initialize logging
Initialize-Logging -LogName "Repository_Sync"

try {
    # Load configuration
    Write-Log "Loading configuration from $ConfigPath" -Level INFO
    $config = Load-HPConfiguration -ConfigPath $ConfigPath
    
    # Check prerequisites
    if (!(Get-Module -ListAvailable -Name HPCMSL)) {
        throw "HPCMSL is not installed. Run Install-HPCMSL.ps1 first."
    }
    
    Import-Module HPCMSL
    
    # Filter platforms if specific one requested
    $platforms = $config.Platforms
    if ($PlatformID) {
        $platforms = $platforms | Where-Object { $_.PlatformID -eq $PlatformID }
        if (!$platforms) {
            throw "Platform ID $PlatformID not found in configuration"
        }
    }
    
    # Process each platform
    foreach ($platform in $platforms) {
        Write-Log "Processing platform: $($platform.Model) ($($platform.PlatformID))" -Level INFO
        
        # Get repository path
        $repoPath = Get-RepositoryPath -Config $config -Platform $platform
        
        # Create directory if needed
        if (!(Test-Path $repoPath)) {
            if ($DryRun) {
                Write-Log "DryRun: Would create directory $repoPath" -Level INFO
                continue
            }
            New-Item -ItemType Directory -Path $repoPath -Force | Out-Null
        }
        
        # Initialize repository if needed
        Set-Location $repoPath
        
        if (!(Test-Path ".\.repository")) {
            if ($DryRun) {
                Write-Log "DryRun: Would initialize repository at $repoPath" -Level INFO
            } else {
                Write-Log "Initializing repository..." -Level VERBOSE
                Initialize-Repository
            }
        }
        
        # Apply filters
        if (!$DryRun) {
            # Add platform filter
            Add-RepositoryFilter -Platform $platform.PlatformID
            
            # Add OS filter
            Add-RepositoryFilter -Os $platform.TargetOS -OsVer $platform.TargetOSVersion
            
            # Add category filters
            if ($platform.Categories) {
                foreach ($category in $platform.Categories) {
                    Add-RepositoryFilter -Category $category
                }
            }
            
            # Enable offline mode
            Set-RepositoryConfiguration -Setting OfflineCacheMode -Value Enable
            Set-RepositoryConfiguration -Setting OnRemoteFileNotFound -Value LogAndContinue
        }
        
        # Sync repository
        if ($DryRun) {
            Write-Log "DryRun: Would sync repository for $($platform.Model)" -Level INFO
        } else {
            Write-Log "Syncing repository..." -Level INFO
            Invoke-RepositorySync
            
            # Cleanup old versions
            Write-Log "Cleaning up old SoftPaqs..." -Level VERBOSE
            Invoke-RepositoryCleanup
        }
        
        Write-Log "Completed sync for $($platform.Model)" -Level SUCCESS
    }
    
    Write-Log "Repository sync completed successfully" -Level SUCCESS
}
catch {
    Write-Log "Repository sync failed: $_" -Level ERROR
    exit 1
}
```

### Phase 4: Package Building (Days 11-15)

Create `Build-TaniumPackages.ps1`:

```powershell
<#
.SYNOPSIS
    Builds Tanium deployment packages from HP repositories

.DESCRIPTION
    Creates ZIP packages containing HP drivers, HPIA, and install script
    for each configured platform.

.PARAMETER ConfigPath
    Path to configuration file

.PARAMETER Force
    Force rebuild all packages even if unchanged

.PARAMETER PlatformID
    Build package for specific platform only

.EXAMPLE
    .\Build-TaniumPackages.ps1
    
.EXAMPLE
    .\Build-TaniumPackages.ps1 -Force -Verbose
#>

[CmdletBinding()]
param(
    [string]$ConfigPath = ".\Config\hp_update_config.json",
    [switch]$Force,
    [string]$PlatformID
)

# Dot-source functions
. "$PSScriptRoot\Functions\Write-Log.ps1"
. "$PSScriptRoot\Functions\Config-Functions.ps1"
. "$PSScriptRoot\Functions\Common-Functions.ps1"

# Initialize logging
Initialize-Logging -LogName "Package_Build"

function Build-Package {
    param(
        [object]$Platform,
        [string]$RepositoryPath,
        [string]$OutputPath,
        [string]$HPIAPath
    )
    
    # Generate package name
    $packageName = "$($Platform.Model -replace ' ', '_')_$($Platform.TargetOS)_Drivers.zip"
    $packagePath = Join-Path $OutputPath $packageName
    
    Write-Log "Building package: $packageName" -Level INFO
    
    # Create temp directory for staging
    $stagingDir = Join-Path $env:TEMP "HPPackage_$([guid]::NewGuid())"
    New-Item -ItemType Directory -Path $stagingDir -Force | Out-Null
    
    try {
        # Copy repository content
        Write-Log "Copying repository content..." -Level VERBOSE
        Copy-Item -Path "$RepositoryPath\*" -Destination $stagingDir -Recurse
        
        # Copy HPIA
        Write-Log "Including HPIA..." -Level VERBOSE
        Copy-Item -Path $HPIAPath -Destination $stagingDir
        
        # Copy install script
        Write-Log "Including install script..." -Level VERBOSE
        Copy-Item -Path "$PSScriptRoot\Install-HPUpdates.ps1" -Destination $stagingDir
        
        # Create ZIP
        Write-Log "Creating ZIP package..." -Level INFO
        
        # Check for 7-Zip
        $7zipPath = "${env:ProgramFiles}\7-Zip\7z.exe"
        if (Test-Path $7zipPath) {
            & $7zipPath a -tzip $packagePath "$stagingDir\*" | Out-Null
        } else {
            Compress-Archive -Path "$stagingDir\*" -DestinationPath $packagePath -Force
        }
        
        Write-Log "Package created: $packagePath" -Level SUCCESS
        return $packagePath
    }
    finally {
        # Cleanup staging
        Remove-Item -Path $stagingDir -Recurse -Force -ErrorAction SilentlyContinue
    }
}

try {
    # Load configuration
    $config = Load-HPConfiguration -ConfigPath $ConfigPath
    
    # Ensure output directory exists
    $packageDir = ".\Packages"
    if (!(Test-Path $packageDir)) {
        New-Item -ItemType Directory -Path $packageDir -Force | Out-Null
    }
    
    # Download/update HPIA if needed
    Write-Log "Checking HPIA..." -Level INFO
    $hpiaVersion = $config.HPIA.Version
    $hpiaPath = Join-Path $config.HPIA.DownloadPath "hp-hpia-$hpiaVersion.exe"
    
    if (!(Test-Path $hpiaPath)) {
        Write-Log "Downloading HPIA version $hpiaVersion..." -Level INFO
        $hpiaUrl = "https://hpia.hpcloud.hp.com/downloads/hpia/hp-hpia-$hpiaVersion.exe"
        Invoke-WebRequest -Uri $hpiaUrl -OutFile $hpiaPath -UseBasicParsing
    }
    
    # Filter platforms if specific one requested
    $platforms = $config.Platforms
    if ($PlatformID) {
        $platforms = $platforms | Where-Object { $_.PlatformID -eq $PlatformID }
    }
    
    # Build packages
    foreach ($platform in $platforms) {
        $repoPath = Get-RepositoryPath -Config $config -Platform $platform
        
        if (!(Test-Path $repoPath)) {
            Write-Log "Repository not found for $($platform.Model), skipping" -Level WARNING
            continue
        }
        
        # Check if rebuild needed
        # (Could implement change detection here)
        
        # Build package
        $package = Build-Package -Platform $platform `
                                -RepositoryPath $repoPath `
                                -OutputPath $packageDir `
                                -HPIAPath $hpiaPath
    }
    
    Write-Log "Package building completed" -Level SUCCESS
}
catch {
    Write-Log "Package building failed: $_" -Level ERROR
    exit 1
}
```

### Phase 5: Client Installation Script (Days 16-17)

Create `Install-HPUpdates.ps1` (runs on client machines):

```powershell
<#
.SYNOPSIS
    Installs HP drivers and firmware on client machine

.DESCRIPTION
    This script runs on the target machine via Tanium. It extracts the
    package content and uses HPIA to install applicable updates.

.EXAMPLE
    .\Install-HPUpdates.ps1
#>

[CmdletBinding()]
param()

# Simple logging for client
function Write-ClientLog {
    param($Message, $Level = "INFO")
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logLine = "[$timestamp] [$Level] $Message"
    Write-Host $logLine
    
    # Also log to file
    $logFile = "$env:TEMP\HP_Driver_Install_$(Get-Date -Format 'yyyyMMdd').log"
    Add-Content -Path $logFile -Value $logLine
}

try {
    Write-ClientLog "HP Driver Installation Started"
    
    # Detect system model
    $computerInfo = Get-WmiObject -Class Win32_ComputerSystem
    $model = $computerInfo.Model
    Write-ClientLog "Detected system: $model"
    
    # Set working directory
    $workingDir = "$env:TEMP\HPDriverInstall"
    if (Test-Path $workingDir) {
        Remove-Item -Path $workingDir -Recurse -Force
    }
    New-Item -ItemType Directory -Path $workingDir -Force | Out-Null
    
    # Extract package content (assumes we're running from extracted location)
    Write-ClientLog "Preparing driver repository..."
    Copy-Item -Path "$PSScriptRoot\*" -Destination $workingDir -Recurse
    
    # Find HPIA
    $hpia = Get-ChildItem -Path $workingDir -Filter "hp-hpia-*.exe" | Select-Object -First 1
    if (!$hpia) {
        throw "HPIA executable not found in package"
    }
    
    # Run HPIA in offline mode
    Write-ClientLog "Running HP Image Assistant..."
    $hpiaArgs = @(
        "/OfflineMode:`"$workingDir`"",
        "/Operation:Analyze",
        "/Action:Install",
        "/Silent",
        "/Category:Driver,Firmware,BIOS",
        "/AutoCleanup",
        "/LogFolder:`"$workingDir\Logs`""
    )
    
    $process = Start-Process -FilePath $hpia.FullName `
                            -ArgumentList $hpiaArgs `
                            -Wait `
                            -PassThru `
                            -NoNewWindow
    
    Write-ClientLog "HPIA completed with exit code: $($process.ExitCode)"
    
    # Check for reboot requirement
    if ($process.ExitCode -eq 3010 -or $process.ExitCode -eq 1641) {
        Write-ClientLog "Reboot required after driver installation" -Level WARNING
        # Create marker file for Tanium to detect
        New-Item -Path "$env:TEMP\HP_Drivers_RebootRequired.txt" -ItemType File -Force
    }
    
    # Cleanup
    Write-ClientLog "Cleaning up temporary files..."
    Remove-Item -Path $workingDir -Recurse -Force -ErrorAction SilentlyContinue
    
    Write-ClientLog "HP Driver Installation Completed" -Level SUCCESS
}
catch {
    Write-ClientLog "Installation failed: $_" -Level ERROR
    exit 1
}
```

### Phase 6: Master Orchestration (Days 18-19)

Create `Update-HPDriverSolution.ps1`:

```powershell
<#
.SYNOPSIS
    Master script for HP driver management automation

.DESCRIPTION
    Orchestrates the complete workflow: CMSL installation, repository sync,
    and package building.

.PARAMETER SkipCMSLInstall
    Skip CMSL installation check

.PARAMETER SyncOnly
    Only sync repositories, don't build packages

.PARAMETER BuildOnly
    Only build packages, don't sync repositories

.PARAMETER DryRun
    Simulate actions without making changes

.PARAMETER ConfigPath
    Path to configuration file

.EXAMPLE
    .\Update-HPDriverSolution.ps1
    
.EXAMPLE
    .\Update-HPDriverSolution.ps1 -SyncOnly -Verbose
#>

[CmdletBinding()]
param(
    [switch]$SkipCMSLInstall,
    [switch]$SyncOnly,
    [switch]$BuildOnly,
    [switch]$DryRun,
    [string]$ConfigPath = ".\Config\hp_update_config.json"
)

# Dot-source logging
. "$PSScriptRoot\Functions\Write-Log.ps1"

# Initialize logging
Initialize-Logging -LogName "HP_Driver_Solution"

try {
    Write-Log "=== HP Driver Solution Automation Started ===" -Level INFO
    
    # Step 1: Install/Update CMSL
    if (!$SkipCMSLInstall -and !$BuildOnly) {
        Write-Log "Checking CMSL installation..." -Level INFO
        $result = & "$PSScriptRoot\Install-HPCMSL.ps1"
        if ($LASTEXITCODE -ne 0) {
            throw "CMSL installation failed"
        }
    }
    
    # Step 2: Sync Repositories
    if (!$BuildOnly) {
        Write-Log "Syncing HP repositories..." -Level INFO
        $params = @{
            ConfigPath = $ConfigPath
        }
        if ($DryRun) { $params.DryRun = $true }
        if ($VerbosePreference -eq 'Continue') { $params.Verbose = $true }
        
        & "$PSScriptRoot\Sync-HPRepositories.ps1" @params
        if ($LASTEXITCODE -ne 0) {
            throw "Repository sync failed"
        }
    }
    
    # Step 3: Build Packages
    if (!$SyncOnly) {
        Write-Log "Building Tanium packages..." -Level INFO
        $params = @{
            ConfigPath = $ConfigPath
        }
        if ($VerbosePreference -eq 'Continue') { $params.Verbose = $true }
        
        & "$PSScriptRoot\Build-TaniumPackages.ps1" @params
        if ($LASTEXITCODE -ne 0) {
            throw "Package building failed"
        }
    }
    
    Write-Log "=== HP Driver Solution Automation Completed ===" -Level SUCCESS
    
    # Summary
    Write-Log "`nSummary:" -Level INFO
    Write-Log "- Log files: .\Logs\" -Level INFO
    Write-Log "- Repositories: .\Repositories\" -Level INFO
    Write-Log "- Packages: .\Packages\" -Level INFO
}
catch {
    Write-Log "Automation failed: $_" -Level ERROR
    exit 1
}
```

## Configuration

### Sample Configuration File

Create `Config\hp_update_config.json`:

```json
{
    // Repository Settings
    "RepositoryBase": "C:\\HP_Tanium_Automation\\Repositories",
    "OrganizeByOS": true,
    
    // Global Options
    "VerboseLogging": false,
    "DryRun": false,
    "ForceRebuildPackages": false,
    
    // HPIA Configuration
    "HPIA": {
        "Version": "5.3.2",
        "DownloadPath": "C:\\HP_Tanium_Automation\\Temp"
    },
    
    // Package Settings
    "PackageOutput": "C:\\HP_Tanium_Automation\\Packages",
    "UseCompression": true,
    "Prefer7Zip": true,
    
    // Logging
    "LogRetentionDays": 30,
    "MaxLogFiles": 10,
    
    // Supported Platforms
    "Platforms": [
        {
            // HP ZBook 15 G6
            "PlatformID": "8549",
            "Model": "HP ZBook 15 G6",
            "TargetOS": "win11",
            "TargetOSVersion": "23H2",
            "Categories": ["Driver", "Firmware", "BIOS"],
            "ReleaseTypes": ["Critical", "Recommended", "Routine"],
            "Enabled": true
        },
        {
            // HP EliteBook 840 G7
            "PlatformID": "87EF",
            "Model": "HP EliteBook 840 G7",
            "TargetOS": "win11",
            "TargetOSVersion": "23H2",
            "Categories": ["Driver", "Firmware", "BIOS"],
            "ReleaseTypes": ["Critical", "Recommended"],
            "Enabled": true
        }
    ]
}
```

### Finding Platform IDs

To find the platform ID for your HP models:

```powershell
# After installing CMSL
Import-Module HPCMSL

# Get current system platform ID
Get-HPDeviceDetails

# Search for platform IDs by model name
Get-HPPlatformData | Where-Object { $_.Name -like "*EliteBook 840*" }

# Get all supported platforms
Get-HPPlatformData | Format-Table SystemID, Name, OSSupport
```

## Usage Examples

### Basic Usage

```powershell
# Full automation - install CMSL, sync repos, build packages
.\Update-HPDriverSolution.ps1

# Dry run to see what would happen
.\Update-HPDriverSolution.ps1 -DryRun -Verbose

# Only sync repositories
.\Update-HPDriverSolution.ps1 -SyncOnly

# Only build packages (after manual repo changes)
.\Update-HPDriverSolution.ps1 -BuildOnly

# Update specific model only
.\Sync-HPRepositories.ps1 -PlatformID "8470"
.\Build-TaniumPackages.ps1 -PlatformID "8470"
```

### Scheduled Task Setup

Create a scheduled task for automation:

```powershell
$action = New-ScheduledTaskAction -Execute "PowerShell.exe" `
    -Argument "-ExecutionPolicy Bypass -File C:\HP_Tanium_Automation\Scripts\Update-HPDriverSolution.ps1"

$trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Sunday -At 2:00AM

$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable `
    -RestartOnIdle -DontStopIfGoingOnBatteries

Register-ScheduledTask -TaskName "HP Driver Repository Update" `
    -Action $action -Trigger $trigger -Settings $settings `
    -User "SYSTEM" -RunLevel Highest
```

### Tanium Package Creation

After building packages:

1. **In Tanium Console:**
   - Navigate to Packages
   - Create New Package
   - Name: "HP Drivers - [Model Name]"
   - Upload the ZIP file from `.\Packages\`
   
2. **Command to execute:**
   ```
   powershell.exe -ExecutionPolicy Bypass -File .\Install-HPUpdates.ps1
   ```

3. **Detection method:**
   - Check for reboot marker file: `$env:TEMP\HP_Drivers_RebootRequired.txt`
   - Or parse HPIA log for installed updates

## Troubleshooting

### Common Issues

1. **CMSL Installation Fails**
   - Ensure running as Administrator
   - Check internet connectivity
   - Verify .NET Framework 4.8+ is installed
   - Check Windows PowerShell 5.1+ is available

2. **Repository Sync Errors**
   - Check proxy settings: `[System.Net.WebRequest]::DefaultWebProxy`
   - Verify platform ID is correct
   - Ensure sufficient disk space (10GB+ per platform)
   - Check HP server connectivity

3. **Package Building Issues**
   - Verify repository was synced successfully
   - Check for long path issues (enable long paths in Windows)
   - Ensure HPIA download completed
   - Check ZIP creation permissions

4. **Client Installation Problems**
   - Verify package extracted correctly
   - Check HPIA logs in `%TEMP%\HPDriverInstall\Logs`
   - Ensure client has sufficient permissions
   - Check for BIOS password requirements

### Debug Mode

Enable detailed logging:

```powershell
# Set verbose preference for session
$VerbosePreference = "Continue"
$DebugPreference = "Continue"

# Run with maximum verbosity
.\Update-HPDriverSolution.ps1 -Verbose -Debug
```

### Log Analysis

Check logs in chronological order:

```powershell
# View latest logs
Get-ChildItem .\Logs -Filter "*.log" | 
    Sort-Object LastWriteTime -Descending | 
    Select-Object -First 5

# Search for errors across all logs
Select-String -Path .\Logs\*.log -Pattern "\[ERROR\]" | 
    Format-List Filename, Line
```

## Best Practices

### Security

1. **Download Verification**
   - Always verify HPIA and CMSL signatures
   - Use HTTPS for all downloads
   - Store packages in secured locations

2. **Execution Policy**
   - Sign scripts if possible
   - Use RemoteSigned at minimum
   - Document bypass requirements

3. **Access Control**
   - Limit write access to repository folders
   - Secure configuration files
   - Monitor log files for anomalies

### Maintenance

1. **Regular Updates**
   - Check for new CMSL versions quarterly
   - Update HPIA version in config when available
   - Review and update platform list

2. **Storage Management**
   - Monitor repository growth
   - Clean old packages periodically
   - Archive logs older than retention period

3. **Testing**
   - Test new platforms in isolated environment
   - Validate packages before production deployment
   - Keep rollback packages for critical systems

### Performance

1. **Optimization Tips**
   - Run syncs during off-hours
   - Use 7-Zip for faster compression
   - Consider parallel processing for multiple platforms
   - Implement incremental updates where possible

2. **Resource Planning**
   - Allocate 10-20GB per platform
   - Ensure adequate bandwidth for downloads
   - Plan for CPU usage during compression

## Advanced Topics

### Extending the Solution

1. **Adding Email Notifications**
   ```powershell
   function Send-CompletionEmail {
       param($Status, $Details)
       
       Send-MailMessage -To "admin@company.com" `
           -From "hpdrivers@company.com" `
           -Subject "HP Driver Update: $Status" `
           -Body $Details `
           -SmtpServer "smtp.company.com"
   }
   ```

2. **Tanium API Integration**
   ```powershell
   # Example: Upload package via Tanium API
   function Upload-ToTanium {
       param($PackagePath, $PackageName)
       
       # Tanium API calls here
       # This is environment-specific
   }
   ```

3. **Multi-Vendor Support**
   - Abstract vendor-specific logic
   - Create provider interfaces
   - Implement Dell, Lenovo modules

### Monitoring Integration

1. **SIEM Integration**
   - Forward logs to Splunk/ELK
   - Create alerts for failures
   - Track driver deployment metrics

2. **Dashboard Creation**
   - Track repository sizes
   - Monitor sync success rates
   - Show package deployment status

## Conclusion

This script-based solution provides a maintainable, flexible approach to automating HP driver management for Tanium deployments. The modular design allows for easy troubleshooting and enhancement while keeping complexity manageable.

Remember to:
- Start small with one or two models
- Test thoroughly before production use
- Keep documentation updated
- Monitor logs regularly
- Plan for growth and changes

For additional help or contributions, please refer to the project repository or contact your system administrator. 