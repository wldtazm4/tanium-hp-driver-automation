# HP Tanium Driver Solution - Implementation Guide

## Table of Contents
1. [System Requirements](#system-requirements)
2. [Initial Setup](#initial-setup)
3. [Configuration](#configuration)
4. [Script Overview](#script-overview)
5. [Implementation Steps](#implementation-steps)
6. [Tanium Integration](#tanium-integration)
7. [Maintenance](#maintenance)

## System Requirements

### Server Requirements
- Windows Server 2016+ or Windows 10 1809+
- PowerShell 5.1 or higher (PowerShell 7+ recommended)
- Minimum 50GB free disk space
- Internet connectivity to HP servers
- Administrative access

### Software Requirements
- 7-Zip (optional but recommended)
- Tanium Client installed (for testing)
- .NET Framework 4.8 or higher

## Initial Setup

1. **Create Directory Structure**
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

2. **Copy Scripts**
   - Copy all scripts from the repository to `$rootPath\Scripts`
   - Ensure proper execution policy: `Set-ExecutionPolicy RemoteSigned`

3. **Initial Configuration**
   - Copy `hp_update_config.template.json` to `hp_update_config.json`
   - Update paths and settings in the configuration file

## Configuration

### Configuration File Structure
```json
{
    "RepositoryBase": "C:\\HP_Tanium_Automation\\Repositories",
    "OrganizeByOS": true,
    "VerboseLogging": false,
    "DryRun": false,
    "ForceRebuildPackages": false,
    "HPIA": {
        "Version": "5.3.2",
        "DownloadPath": "C:\\HP_Tanium_Automation\\Temp"
    },
    "Platforms": [
        {
            "PlatformID": "8549",
            "Model": "HP ZBook 15 G6",
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
```powershell
Import-Module HPCMSL
Get-HPPlatformData | Where-Object { $_.Name -like "*Your Model*" }
```

## Script Overview

### Core Scripts
1. **Install-HPCMSL.ps1**
   - Installs HP Client Management Script Library
   - Handles version management
   - Validates installation

2. **Sync-HPRepositories.ps1**
   - Manages driver repositories
   - Downloads and organizes SoftPaqs
   - Applies filters and categories

3. **Build-TaniumPackages.ps1**
   - Creates deployment packages
   - Includes HPIA and install script
   - Handles compression

4. **Install-HPUpdates.ps1**
   - Client-side installation script
   - Runs HPIA in offline mode
   - Handles reboot requirements

5. **Update-HPDriverSolution.ps1**
   - Master orchestration script
   - Coordinates all operations
   - Handles logging and error reporting

## Implementation Steps

### Phase 1: Environment Setup
1. Run directory creation script
2. Copy all scripts to appropriate locations
3. Set up initial configuration

### Phase 2: CMSL Installation
1. Run `Install-HPCMSL.ps1`
2. Verify installation: `Import-Module HPCMSL`
3. Test basic functionality

### Phase 3: Repository Setup
1. Configure first platform in `hp_update_config.json`
2. Run initial sync: `.\Sync-HPRepositories.ps1`
3. Verify repository structure
4. Add additional platforms as needed

### Phase 4: Package Building
1. Test package creation for one platform
2. Verify package contents
3. Test deployment on target machine

### Phase 5: Tanium Integration
1. Create Tanium package
2. Configure detection method
3. Test deployment through Tanium

## Tanium Integration

### Package Creation
1. Log into Tanium Console
2. Create new package
3. Upload ZIP file
4. Configure command:
   ```
   powershell.exe -ExecutionPolicy Bypass -File .\Install-HPUpdates.ps1
   ```

### Detection Method
- Check for reboot marker file
- Parse HPIA logs
- Verify driver versions

### Deployment Strategy
1. Test on pilot group
2. Monitor initial deployments
3. Roll out to production

## Maintenance

### Regular Tasks
1. **Weekly**
   - Run full sync
   - Build updated packages
   - Review logs

2. **Monthly**
   - Check for CMSL updates
   - Update HPIA version
   - Clean old packages

3. **Quarterly**
   - Review platform list
   - Update documentation
   - Check disk space

### Log Management
- Logs stored in `.\Logs`
- Rotate logs older than 30 days
- Monitor for errors

### Troubleshooting
See [Troubleshooting Guide](Troubleshooting_Guide.md) for common issues and solutions. 