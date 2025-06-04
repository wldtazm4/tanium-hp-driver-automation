# HP Tanium Driver Solution - Troubleshooting Guide

## Table of Contents
1. [Common Issues](#common-issues)
2. [Log Analysis](#log-analysis)
3. [Script-Specific Issues](#script-specific-issues)
4. [Tanium Deployment Issues](#tanium-deployment-issues)
5. [Performance Issues](#performance-issues)
6. [Recovery Procedures](#recovery-procedures)

## Common Issues

### CMSL Installation Issues

#### Error: "Failed to install CMSL"
**Symptoms:**
- Installation script fails
- Error code returned
- Module not found after installation

**Solutions:**
1. Check administrator privileges:
   ```powershell
   Test-Administrator
   ```

2. Verify internet connectivity:
   ```powershell
   Test-InternetConnection -TestUrl "https://hpia.hpcloud.hp.com"
   ```

3. Check .NET Framework:
   ```powershell
   Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full' | Select-Object Version
   ```

4. Clear temporary files:
   ```powershell
   Remove-Item "$env:TEMP\hp-cmsl-*" -Force
   ```

### Repository Sync Issues

#### Error: "Repository sync failed"
**Symptoms:**
- Sync script fails
- Incomplete downloads
- Missing SoftPaqs

**Solutions:**
1. Check disk space:
   ```powershell
   Get-PSDrive C | Select-Object Free
   ```

2. Verify platform ID:
   ```powershell
   Import-Module HPCMSL
   Get-HPPlatformData | Where-Object { $_.SystemID -eq "XXXX" }
   ```

3. Check proxy settings:
   ```powershell
   [System.Net.WebRequest]::DefaultWebProxy
   ```

4. Clear repository cache:
   ```powershell
   Remove-Item ".\Repositories\*\.repository" -Recurse -Force
   ```

### Package Building Issues

#### Error: "Failed to create package"
**Symptoms:**
- ZIP creation fails
- Missing files in package
- Corrupted packages

**Solutions:**
1. Check file paths:
   ```powershell
   Test-Path ".\Repositories\Win11\Platform_XXXX"
   ```

2. Verify HPIA presence:
   ```powershell
   Test-Path ".\Temp\hp-hpia-*.exe"
   ```

3. Check compression:
   ```powershell
   if (Test-Path "${env:ProgramFiles}\7-Zip\7z.exe") {
       Write-Host "7-Zip available"
   }
   ```

## Log Analysis

### Log Locations
- Main logs: `.\Logs\`
- HPIA logs: `%TEMP%\HPDriverInstall\Logs`
- Tanium logs: `%ProgramFiles%\Tanium\Tanium Client\Logs`

### Common Log Patterns

#### Error Patterns
```
[ERROR] Failed to download
[ERROR] Installation failed
[ERROR] Access denied
```

#### Warning Patterns
```
[WARNING] Low disk space
[WARNING] Skipping update
[WARNING] Reboot required
```

### Log Analysis Commands
```powershell
# Find errors in recent logs
Get-ChildItem .\Logs\*.log | 
    Sort-Object LastWriteTime -Descending | 
    Select-Object -First 5 | 
    Select-String -Pattern "\[ERROR\]"

# Check for specific platform issues
Get-ChildItem .\Logs\*.log | 
    Select-String -Pattern "Platform_XXXX" | 
    Where-Object { $_.Line -match "\[ERROR\]" }
```

## Script-Specific Issues

### Install-HPCMSL.ps1

#### Common Errors
1. **"Module not found"**
   - Solution: Run with -Force parameter
   - Check PowerShell version

2. **"Download failed"**
   - Solution: Check internet connectivity
   - Verify proxy settings

### Sync-HPRepositories.ps1

#### Common Errors
1. **"Platform not found"**
   - Solution: Verify platform ID
   - Check configuration file

2. **"Insufficient space"**
   - Solution: Free up disk space
   - Adjust repository location

### Build-TaniumPackages.ps1

#### Common Errors
1. **"Missing repository"**
   - Solution: Run sync first
   - Check repository path

2. **"Compression failed"**
   - Solution: Check 7-Zip installation
   - Verify file permissions

## Tanium Deployment Issues

### Package Deployment

#### Common Issues
1. **Package not detected**
   - Check Tanium client status
   - Verify package content

2. **Installation fails**
   - Check client logs
   - Verify execution policy

### Detection Method

#### Common Issues
1. **False positives**
   - Review detection logic
   - Check file paths

2. **False negatives**
   - Verify marker file creation
   - Check permissions

## Performance Issues

### Slow Sync
**Solutions:**
1. Check network speed
2. Verify HP server response
3. Consider incremental updates

### Large Packages
**Solutions:**
1. Review included components
2. Optimize compression
3. Split into smaller packages

## Recovery Procedures

### Repository Recovery
1. Stop all running scripts
2. Backup current repositories
3. Clear corrupted data
4. Run fresh sync

### Package Recovery
1. Identify last good package
2. Rebuild from repository
3. Verify package integrity

### Tanium Recovery
1. Clear Tanium cache
2. Rebuild package
3. Update deployment

## Best Practices

### Prevention
1. Regular backups
2. Monitor disk space
3. Check logs daily
4. Test updates in staging

### Maintenance
1. Clean old packages
2. Rotate logs
3. Update documentation
4. Review configurations

### Support
For additional support:
1. Check HP support site
2. Review Tanium documentation
3. Contact system administrator 