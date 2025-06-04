# HP Tanium Driver Solution

A script-based solution for automating HP driver and firmware management using Tanium. This solution leverages HP's Client Management Script Library (CMSL) and HP Image Assistant (HPIA) to maintain driver repositories and create Tanium deployment packages.

## Overview

This solution provides a comprehensive framework for:
- Automated driver repository management
- Offline driver package creation
- Tanium deployment integration
- Scheduled updates and maintenance

## Prerequisites

- Windows Server 2016+ or Windows 10 1809+
- PowerShell 5.1 or higher (PowerShell 7+ recommended)
- Administrative access
- Internet connectivity to HP servers
- Minimum 50GB disk space for repositories
- 7-Zip (optional but recommended)

## Quick Start

1. Clone this repository:
   ```powershell
   git clone [repository-url]
   cd HP_Tanium_Driver_Solution
   ```

2. Create the required directory structure:
   ```powershell
   .\Scripts\Setup-Environment.ps1
   ```

3. Configure your environment:
   - Copy `Config\hp_update_config.template.json` to `Config\hp_update_config.json`
   - Update the configuration with your HP models and settings

4. Run the full automation:
   ```powershell
   .\Scripts\Update-HPDriverSolution.ps1
   ```

## Project Structure

```
HP_Tanium_Automation/
├── Scripts/
│   ├── Functions/           # Shared function libraries
│   ├── Install-HPCMSL.ps1   # CMSL installation
│   ├── Sync-HPRepositories.ps1
│   ├── Build-TaniumPackages.ps1
│   ├── Install-HPUpdates.ps1
│   └── Update-HPDriverSolution.ps1
├── Config/
│   └── hp_update_config.json
├── Repositories/
├── Packages/
├── Logs/
└── Documentation/
```

## Key Features

- **Automated Repository Management**: Maintains offline driver repositories for HP systems
- **Tanium Integration**: Creates deployment-ready packages for Tanium
- **Scheduled Updates**: Supports automated weekly updates
- **Comprehensive Logging**: Detailed logging for troubleshooting
- **Flexible Configuration**: Easy to add new HP models and customize settings

## Usage

### Basic Commands

```powershell
# Full automation
.\Scripts\Update-HPDriverSolution.ps1

# Dry run (simulation)
.\Scripts\Update-HPDriverSolution.ps1 -DryRun -Verbose

# Sync repositories only
.\Scripts\Update-HPDriverSolution.ps1 -SyncOnly

# Build packages only
.\Scripts\Update-HPDriverSolution.ps1 -BuildOnly
```

### Adding New HP Models

1. Find the platform ID for your HP model:
   ```powershell
   Import-Module HPCMSL
   Get-HPPlatformData | Where-Object { $_.Name -like "*Your Model*" }
   ```

2. Add the model to `Config\hp_update_config.json`:
   ```json
   {
       "PlatformID": "XXXX",
       "Model": "HP Your Model",
       "TargetOS": "win11",
       "TargetOSVersion": "23H2",
       "Categories": ["Driver", "Firmware", "BIOS"],
       "ReleaseTypes": ["Critical", "Recommended"],
       "Enabled": true
   }
   ```

## Documentation

For detailed implementation information, please refer to:
- [Implementation Guide](Documentation/Implementation_Guide.md)
- [Troubleshooting Guide](Documentation/Troubleshooting_Guide.md)

## Support

For support, please:
1. Check the [Troubleshooting Guide](Documentation/Troubleshooting_Guide.md)
2. Review the [Implementation Guide](Documentation/Implementation_Guide.md)
3. Contact your system administrator

## Acknowledgments

- HP Client Management Script Library (CMSL)
- HP Image Assistant (HPIA)
- Tanium Platform 