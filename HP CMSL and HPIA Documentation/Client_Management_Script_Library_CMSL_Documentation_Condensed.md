# HP Client Management Script Library (HPCMSL) - Condensed Reference

## Common Parameters
- `ComputerName` - Target computer name
- `CimSession` - CIM session object  
- `Password` - BIOS/Admin password
- `Nonce` - Random 64-byte value for Sure Admin
- `TargetUUID` - Device UUID for Sure Admin
- `SigningKeyFile` - P12 certificate file for Sure Admin
- `Platform` - Platform ID (e.g., 83B2, 8724)
- `Os` - Operating system filter
- `OsVer` - OS version filter
- `Category` - Software category filter

## Requirements Tags
- `[HP-BIOS]` - Requires HP BIOS
- `[ELEVATED]` - Requires admin privileges
- `[SURE-ADMIN]` - Requires HP Sure Admin
- `[SURE-RECOVER]` - Requires HP Sure Recover

---

## BIOS and Device Module

### Core BIOS Functions
**Get-HPBIOSSetting** `[HP-BIOS]`
- Get BIOS setting value
- `Get-HPBIOSSetting -Name "Boot Order"`

**Set-HPBIOSSettingValue** `[HP-BIOS] [ELEVATED]`
- Set BIOS setting value
- `Set-HPBIOSSettingValue -Name "Boot Order" -Value "Hard Drive"`

**Get-HPBIOSSettingsList** `[HP-BIOS]`
- List all BIOS settings
- `Get-HPBIOSSettingsList | Select Name,CurrentValue`

**Get-HPBIOSVersion** `[HP-BIOS]`
- Get BIOS version info
- `Get-HPBIOSVersion`

**Get-HPBIOSUpdates** `[HP-BIOS]`
- Check for BIOS updates
- `Get-HPBIOSUpdates -Check`

### Password Management
**Set-HPBIOSSetupPassword** `[HP-BIOS] [ELEVATED]`
- Set BIOS setup password
- `Set-HPBIOSSetupPassword -NewPassword "newpass"`

**Clear-HPBIOSSetupPassword** `[HP-BIOS] [ELEVATED]`
- Clear BIOS setup password
- `Clear-HPBIOSSetupPassword -Password "currentpass"`

**Get-HPBIOSSetupPasswordIsSet** `[HP-BIOS]`
- Check if setup password is set
- `Get-HPBIOSSetupPasswordIsSet`

---

## Firmware Module

### Firmware Updates
**Update-HPFirmware** `[ELEVATED]`
- Update device firmware
- `Update-HPFirmware -Path firmware.bin -Force`

**Get-HPFirmwareAuditLog** `[HP-BIOS]`
- Get firmware audit events
- `Get-HPFirmwareAuditLog`

### HP Sure Admin Management
**Get-HPSureAdminState** `[SURE-ADMIN]`
- Get Sure Admin status
- `Get-HPSureAdminState`

**New-HPSureAdminEnablePayload** `[SURE-ADMIN]`
- Create enable payload
- Params: SigningKeyFile, Nonce, TargetUUID, OutputFile

**New-HPSureAdminDisablePayload** `[SURE-ADMIN]`
- Create disable payload
- Params: SigningKeyFile, Nonce, TargetUUID, OutputFile

**New-HPSureAdminBIOSSettingValuePayload** `[SURE-ADMIN]`
- Create BIOS setting payload
- Params: SigningKeyFile, Nonce, TargetUUID, Setting, Value, OutputFile

### HP Sure Recover
**Get-HPSureRecoverState** `[SURE-RECOVER]`
- Get Sure Recover status
- `Get-HPSureRecoverState`

**New-HPSureRecoverConfigurationPayload** `[SURE-RECOVER]`
- Create recovery configuration
- Params: SigningKeyFile, Nonce, TargetUUID, AgentURL, RecoveryURL, OutputFile

### Secure Platform
**Get-HPSecurePlatformState**
- Get secure platform status
- `Get-HPSecurePlatformState`

**Set-HPSecurePlatformPayload** `[ELEVATED]`
- Apply secure platform payload
- `Set-HPSecurePlatformPayload -PayloadFile payload.dat`

---

## SoftPaq Management Module

**Get-SoftpaqList**
- List available SoftPaqs
- `Get-SoftpaqList -Platform 83B2 -Os Win10`
- Params: Platform, Os, OsVer, Category, Characteristic, ReleaseType

**Get-Softpaq**
- Download SoftPaq
- `Get-Softpaq -Number SP123456 -SaveAs "C:\temp"`
- Params: Number, Action, SaveAs, Overwrite, Info

**Get-SoftpaqMetadata**
- Get SoftPaq metadata
- `Get-SoftpaqMetadata -Number SP123456`

**Clear-SoftpaqCache**
- Clear local SoftPaq cache
- `Clear-SoftpaqCache`

---

## SoftPaq Repository Module

**Initialize-Repository** `[ELEVATED]`
- Initialize SoftPaq repository
- `Initialize-Repository -Platform 83B2 -RepositoryPath "C:\repo"`

**Invoke-RepositorySync** `[ELEVATED]`
- Synchronize repository
- `Invoke-RepositorySync -Platform 83B2`

**Get-RepositoryConfiguration**
- Get repository settings
- `Get-RepositoryConfiguration`

**Set-RepositoryConfiguration** `[ELEVATED]`
- Configure repository
- `Set-RepositoryConfiguration -Setting "MaxThreads" -Value 5`

**Add-RepositoryFilter** `[ELEVATED]`
- Add content filter
- `Add-RepositoryFilter -Platform 83B2 -Category "Driver"`

---

## Device Information Module

**Get-HPDeviceDetails**
- Get device information
- `Get-HPDeviceDetails`

**Get-HPDeviceModel**
- Get device model
- `Get-HPDeviceModel`

**Get-HPDevicePartNumber**
- Get device part number
- `Get-HPDevicePartNumber`

**Get-HPBIOSUuid**
- Get device UUID
- `Get-HPBIOSUuid`

---

## Display Management Module

**Get-HPDisplay**
- Get display information
- `Get-HPDisplay`

**Set-HPDisplay**
- Configure display settings
- `Set-HPDisplay -DisplayIndex 1 -Brightness 75`

---

## Security Module

**Get-HPPlatformCertificateData**
- Get platform certificates
- `Get-HPPlatformCertificateData`

**Invoke-HPPlatformIntegrityCheck**
- Verify platform integrity
- `Invoke-HPPlatformIntegrityCheck`

**Invoke-HPCertificateChainValidation**
- Validate certificate chain
- `Invoke-HPCertificateChainValidation`

---

## Dock Management Module

**Get-HPDock**
- Get dock information
- `Get-HPDock`

**Install-HPDockWMIProvider** `[ELEVATED]`
- Install dock WMI provider
- `Install-HPDockWMIProvider`

---

## Notification Module

**Invoke-HPNotification**
- Display toast notification
- `Invoke-HPNotification -Title "Update" -Message "BIOS updated"`

**Invoke-HPNotificationFromXML**
- Display notification from XML
- `Invoke-HPNotificationFromXML -File notification.xml`

---

## Common Usage Patterns

### BIOS Management
```powershell
# Check current settings
Get-HPBIOSSettingsList | Where {$_.Name -like "*Boot*"}

# Change setting
Set-HPBIOSSettingValue -Name "Boot Order" -Value "Hard Drive" -Password "pass"

# Check for updates
Get-HPBIOSUpdates -Check -Download -Flash -BitLocker suspend
```

### SoftPaq Management
```powershell
# List drivers for platform
Get-SoftpaqList -Platform 83B2 -Category Driver -Os Win10

# Download and install
Get-Softpaq -Number SP123456 -Action Install
```

### Repository Management
```powershell
# Initialize repository
Initialize-Repository -Platform 83B2,8724 -RepositoryPath "C:\HPRepo"

# Sync content
Invoke-RepositorySync -Platform 83B2 -Category Driver,Firmware
```

### Sure Admin Payloads
```powershell
# Create BIOS setting payload
New-HPSureAdminBIOSSettingValuePayload -SigningKeyFile cert.p12 -Setting "Secure Boot" -Value "Enable" -OutputFile payload.dat

# Apply payload
Set-HPSecurePlatformPayload -PayloadFile payload.dat
```