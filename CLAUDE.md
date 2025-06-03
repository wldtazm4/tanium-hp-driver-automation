# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **PowerShell-based HP driver automation solution** for Tanium environments. The project automates HP Client Management Script Library (CMSL) and HP Image Assistant (HPIA) to manage driver/firmware updates across HP devices.

**Current Status**: Planning/Design phase - implementation work is needed.

## Architecture

The solution follows a **modular, configuration-driven design** with these core components:

### Core PowerShell Scripts (To Be Implemented)
- **CMSL Installation Script** - Downloads and installs HP CMSL with version checking
- **Repository Management Script** - Syncs offline SoftPaq repositories per HP platform using `Invoke-RepositorySync`
- **Package Building Script** - Creates self-contained ZIP packages for Tanium deployment
- **Endpoint Install Script** - Runs on target machines to apply updates via HPIA offline mode
- **Master Orchestrator Script** - Coordinates all components with execution modes (dry-run, verbose, force-rebuild)

### Configuration System
- **Central JSON Configuration** - Defines supported HP platforms, OS versions, SoftPaq categories, and global settings
- **Platform-Specific Settings** - Each HP model gets its own repository with filtered content
- **Execution Mode Support** - Dry-run, verbose, selective platform processing

### Repository Strategy
- **Offline Repositories** - One per HP platform/OS combination using CMSL's `Initialize-Repository`
- **Filtered Content** - Categories (Driver, Firmware, BIOS), release types (Critical, Recommended), OS versions
- **HPIA Integration** - Repositories configured for offline HPIA analysis with `OfflineCacheMode`

## Development Approach

### PowerShell Standards
- **Version Support**: PowerShell 7+ (preferred) or PowerShell 5.1 minimum
- **Function Naming**: Use `Verb-Noun` format for all functions
- **Comment-Based Help**: Include proper help documentation for all functions and scripts
- **Parameter Handling**: Follow PowerShell best practices for parameters and pipeline support
- **Module Structure**: Use .psm1/.psd1 files for reusable components
- **Error Handling**: Comprehensive try-catch with detailed logging
- **Security**: Digital signature verification for downloads, HTTPS enforcement, proper access controls

### Key HP CMSL Commands
The implementation will heavily use these HP CMSL cmdlets:
```powershell
# Repository management
Initialize-Repository
Add-RepositoryFilter -Platform <PlatformID> -Os <OS> -Category <Categories>
Set-RepositoryConfiguration -Setting OfflineCacheMode -CacheValue Enable
Invoke-RepositorySync
Invoke-RepositoryCleanup

# Platform data
Get-HPPlatformData
Get-HPDeviceDetails
```

### HPIA Integration
Endpoint execution pattern:
```powershell
.\hp-hpia-5.x.x.exe /OfflineMode:"C:\HPUpdates" /Operation:Analyze /Action:Install /Silent
```

## Configuration Structure

Use **JSON5/JSONC format** with comments for better documentation. The central configuration will define:
```jsonc
{
  // Base directory for all HP repositories
  "RepositoryBase": "D:\\HPRepos",
  // Organize repositories by OS version
  "OrganizeByOS": true,
  // Supported HP platforms configuration
  "Platforms": [
    {
      // 4-character hex platform ID (validated)
      "PlatformID": "87EF",
      "Model": "HP EliteBook 840 G7", 
      "TargetOS": "win10",
      "TargetOSVersion": "22H2",
      "Categories": ["Driver","Firmware","BIOS"],
      "ReleaseTypes": ["Critical","Recommended"]
    }
  ]
}
```

### Repository Structure Requirements
- Repository path format: `[RepositoryBase]\[OS]\[PlatformID]`
- Platform IDs must be 4-character hex strings
- Each HP platform gets isolated repository directory
- Maintain clear separation between OS versions

## Logging Framework

Implement a unified logging system with:
- **Log Levels**: DEBUG, VERBOSE, INFO, SUCCESS, WARNING, ERROR
- **Color-coded Console Output**: Green for success, red for errors, etc.
- **File Logging**: All levels to rotating log files with proper cleanup
- **Timestamp Format**: `[2025-06-02 21:05:00] [INFO] Message`
- **Operation Logging**: Log all significant operations and errors
- **Performance Monitoring**: Track repository health and update success rates

## External Dependencies

- **HP CMSL**: Auto-downloaded from `https://hpia.hpcloud.hp.com/downloads/cmsl/`
- **HP HPIA**: Auto-downloaded from `https://hpia.hpcloud.hp.com/downloads/hpia/`
- **7-Zip**: Optional for better compression (`tools/7za.exe` included)

## Implementation Priority

1. **Logging Framework** - Create reusable Write-Log function with color and file output
2. **Configuration Parser** - JSON5/JSONC loader with validation and comment support
3. **CMSL Installer** - Version checking and silent installation with signature verification
4. **Repository Manager** - Platform-specific sync with filtering and cleanup procedures
5. **Package Builder** - ZIP creation with HPIA and install scripts following Tanium guidelines
6. **Endpoint Script** - Universal installer using HPIA offline mode with proper error handling

## Testing and Validation Requirements

- **Dry-run Mode**: Support for testing without making actual changes
- **Configuration Validation**: Validate all required fields and platform IDs
- **Repository Integrity**: Check repository health after updates
- **Deployment Testing**: Test package deployment in controlled environments
- **Rollback Procedures**: Ensure all changes can be rolled back if needed

## Documentation and Change Management

- **Documentation Updates**: Keep all documentation in sync with code changes
- **Commit Standards**: Use descriptive commit messages explaining purpose of changes
- **Version Control**: Tag releases and maintain changelog for major updates
- **Reference Materials**: Never modify files in "HP CMSL and HPIA Documentation" folder

## Reference Documentation

- `/PowerShell Automation Plan for HP CMSL & HPIA in Tanium.md` - Complete implementation specification
- `/HP CMSL and HPIA Documentation/` - HP tooling references and cmdlet documentation