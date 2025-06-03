# HP Client Management Script Library Documentation (HPCMSL)
## Table of Contents

### [Client Management Script Library Info](#client-management-script-library)

#### [BIOS and Device Module](#bios-and-device)

- [Add-Hpbioswindowsupdatescripts](#add-hpbioswindowsupdatescripts)
- [Clear-Hpbiospoweronpassword](#clear-hpbiospoweronpassword)
- [Clear-Hpbiossetuppassword](#clear-hpbiossetuppassword)
- [Get-Hpbiosauthor](#get-hpbiosauthor)
- [Get-Hpbiospoweronpasswordisset](#get-hpbiospoweronpasswordisset)
- [Get-Hpbiossetting](#get-hpbiossetting)
- [Get-Hpbiossettingvalue](#get-hpbiossettingvalue)
- [Get-Hpbiossettingslist](#get-hpbiossettingslist)
- [Get-Hpbiossetuppasswordisset](#get-hpbiossetuppasswordisset)
- [Get-Hpbiosuuid](#get-hpbiosuuid)
- [Get-Hpbiosupdates](#get-hpbiosupdates)
- [Get-Hpbiosversion](#get-hpbiosversion)
- [Get-Hpbioswindowsupdate](#get-hpbioswindowsupdate)
- [Set-Hpbiospoweronpassword](#set-hpbiospoweronpassword)
- [Set-Hpbiossettingdefaults](#set-hpbiossettingdefaults)
- [Set-Hpbiossettingvalue](#set-hpbiossettingvalue)
- [Set-Hpbiossettingvaluesfromfile](#set-hpbiossettingvaluesfromfile)
- [Set-Hpbiossetuppassword](#set-hpbiossetuppassword)
- [Understand HP BIOS Settings](#understanding-hp-bios-settings)

#### [Firmware Module](#firmware)

- [Firmware update](#firmware-update)
- [Add-Hpsureadmindevicepermissions](#add-hpsureadmindevicepermissions)
- [Add-Hpsureadminendorsementkeytokms](#add-hpsureadminendorsementkeytokms)
- [Add-Hpsureadminsigningkeytokms](#add-hpsureadminsigningkeytokms)
- [Clear-Hpfirmwarebootlogo](#clear-hpfirmwarebootlogo)
- [Clear-Hpsureadminkmsaccesstoken](#clear-hpsureadminkmsaccesstoken)
- [Convert-Hpsureadmincerttoqrcode](#convert-hpsureadmincerttoqrcode)
- [Edit-Hpsureadmindevicepermissions](#edit-hpsureadmindevicepermissions)
- [Get-Hpfirmwareauditlog](#get-hpfirmwareauditlog)
- [Get-Hpfirmwarebootlogoisactive](#get-hpfirmwarebootlogoisactive)
- [Get-Hpsecureplatformstate](#get-hpsecureplatformstate)
- [Get-Hpsureadmindevicepermissions](#get-hpsureadmindevicepermissions)
- [Get-Hpsureadminkmscapabilities](#get-hpsureadminkmscapabilities)
- [Get-Hpsureadminkeyid](#get-hpsureadminkeyid)
- [Get-Hpsureadminstate](#get-hpsureadminstate)
- [Get-Hpsurerecoverfailoverconfiguration](#get-hpsurerecoverfailoverconfiguration)
- [Get-Hpsurerecoverreimagingdevicedetails](#get-hpsurerecoverreimagingdevicedetails)
- [Get-Hpsurerecoverstate](#get-hpsurerecoverstate)
- [Get-Hpsureviewstate](#get-hpsureviewstate)
- [Invoke-Hpsurerecovertriggerupdate](#invoke-hpsurerecovertriggerupdate)
- [New-Hpsecureplatformdeprovisioningpayload](#new-hpsecureplatformdeprovisioningpayload)
- [New-Hpsecureplatformendorsementkeyprovisioningpayload](#new-hpsecureplatformendorsementkeyprovisioningpayload)
- [New-Hpsecureplatformsigningkeyprovisioningpayload](#new-hpsecureplatformsigningkeyprovisioningpayload)
- [New-Hpsureadminbiossettingvaluepayload](#new-hpsureadminbiossettingvaluepayload)
- [New-Hpsureadminbiossettingslistpayload](#new-hpsureadminbiossettingslistpayload)
- [New-Hpsureadmindisablepayload](#new-hpsureadmindisablepayload)
- [New-Hpsureadminenablepayload](#new-hpsureadminenablepayload)
- [New-Hpsureadminfirmwareupdatepayload](#new-hpsureadminfirmwareupdatepayload)
- [New-Hpsureadminlocalaccesskeyprovisioningpayload](#new-hpsureadminlocalaccesskeyprovisioningpayload)
- [New-Hpsureadminsettingdefaultspayload](#new-hpsureadminsettingdefaultspayload)
- [New-Hpsurerecoverconfigurationpayload](#new-hpsurerecoverconfigurationpayload)
- [New-Hpsurerecoverdeprovisionpayload](#new-hpsurerecoverdeprovisionpayload)
- [New-Hpsurerecoverfailoverconfigurationpayload](#new-hpsurerecoverfailoverconfigurationpayload)
- [New-Hpsurerecoverimageconfigurationpayload](#new-hpsurerecoverimageconfigurationpayload)
- [New-Hpsurerecoverschedulepayload](#new-hpsurerecoverschedulepayload)
- [New-Hpsurerecovertriggerrecoverypayload](#new-hpsurerecovertriggerrecoverypayload)
- [Remove-Hpsureadmindevicepermissions](#remove-hpsureadmindevicepermissions)
- [Remove-Hpsureadminendorsementkeyfromkms](#remove-hpsureadminendorsementkeyfromkms)
- [Remove-Hpsureadminsigningkeyfromkms](#remove-hpsureadminsigningkeyfromkms)
- [Search-Hpsureadmindevicepermissions](#search-hpsureadmindevicepermissions)
- [Send-Hpsureadminlocalaccesskeytokms](#send-hpsureadminlocalaccesskeytokms)
- [Set-Hpfirmwarebootlogo](#set-hpfirmwarebootlogo)
- [Set-Hpsecureplatformpayload](#set-hpsecureplatformpayload)
- [Set-Hpsureadmindevicepermissions](#set-hpsureadmindevicepermissions)
- [Set-Hpsureviewstate](#set-hpsureviewstate)
- [Test-Hpsureviewissupported](#test-hpsureviewissupported)
- [Update-Hpfirmware](#update-hpfirmware)
- [Write-Hpfirmwarepasswordfile](#write-hpfirmwarepasswordfile)
- [Update-Hpdisplayfirmware](#update-hpdisplayfirmware)
- [Update-Hpdockfirmware](#update-hpdockfirmware)

#### [SoftPaq Management Module](#softpaq-management)

- [SoftPaq Management](#softpaq-management)
- [Clear-Softpaqcache](#clear-softpaqcache)
- [Get-Hpimageassistantupdateinfo](#get-hpimageassistantupdateinfo)
- [Get-Softpaq](#get-softpaq)
- [Get-Softpaqlist](#get-softpaqlist)
- [Get-Softpaqmetadata](#get-softpaqmetadata)
- [Get-Softpaqmetadatafile](#get-softpaqmetadatafile)
- [Out-Softpaqfield](#out-softpaqfield)

#### [SoftPaq Repository Module](#softpaq-repository)

- [Initializing the repository](#initializing-the-repository)
- [Add-Repositoryfilter](#add-repositoryfilter)
- [Add-Repositorysyncfailurerecipient](#add-repositorysyncfailurerecipient)
- [Clear-Repositorynotificationconfiguration](#clear-repositorynotificationconfiguration)
- [Get-Repositoryconfiguration](#get-repositoryconfiguration)
- [Get-Repositoryinfo](#get-repositoryinfo)
- [Get-Repositorynotificationconfiguration](#get-repositorynotificationconfiguration)
- [Initialize-Repository](#initialize-repository)
- [Invoke-Repositorycleanup](#invoke-repositorycleanup)
- [Invoke-Repositorysync](#invoke-repositorysync)
- [New-Repositoryreport](#new-repositoryreport)
- [Remove-Repositoryfilter](#remove-repositoryfilter)
- [Remove-Repositorysyncfailurerecipient](#remove-repositorysyncfailurerecipient)
- [Set-Repositoryconfiguration](#set-repositoryconfiguration)
- [Set-Repositorynotificationconfiguration](#set-repositorynotificationconfiguration)
- [Show-Repositorynotificationconfiguration](#show-repositorynotificationconfiguration)
- [Test-Repositorynotificationconfiguration](#test-repositorynotificationconfiguration)

#### [Notifications Module](#notifications)

- [Invoking toast Notification](#invoking-toast-notification)
- [Invoke-Hpnotificationfromxml](#invoke-hpnotificationfromxml)
- [Invoke-Hpnotification](#invoke-hpnotification)

#### [Displays Module](#displays)

- [Working with Displays](#working-with-displays)
- [Get-Hpdisplay](#get-hpdisplay)
- [Set-Hpdisplay](#set-hpdisplay)

#### [Security Module](#security)

- [Invoking Security functions](#invoking-security-functions)
- [Get-Hpplatformcertificatedata](#get-hpplatformcertificatedata)
- [Get-Hpplatformdata](#get-hpplatformdata)
- [Invoke-HPCertificateChainValidation](#invoke-hpcertificatechainvalidation)
- [Invoke-HPPlatformIntegrityCheck](#invoke-hpplatformintegritycheck)
- [Invoke-HPTPMCredentialValidation](#invoke-hptpmcredentialvalidation)

#### [Docks Module](#docks)

- [Working with Docks](#working-with-docks)
- [Get-Hpdock](#get-hpdock)
- [Install-Hpdockwmiprovider](#install-hpdockwmiprovider)

#### [FAQ Info](#faq)

#### [Other Commands](#other)

- [Get-Hpdeviceassettag](#get-hpdeviceassettag)
- [Get-Hpdevicebootinformation](#get-hpdevicebootinformation)
- [Get-Hpdevicedetails](#get-hpdevicedetails)
- [Get-Hpdevicemanufacturer](#get-hpdevicemanufacturer)
- [Get-Hpdevicemodel](#get-hpdevicemodel)
- [Get-Hpdevicepartnumber](#get-hpdevicepartnumber)
- [Get-Hpdeviceproductid](#get-hpdeviceproductid)
- [Get-Hpdeviceserialnumber](#get-hpdeviceserialnumber)
- [Get-Hpdeviceuuid](#get-hpdeviceuuid)
- [Get-Hpdeviceuptime](#get-hpdeviceuptime)
- [Get-Hpuefivariable](#get-hpuefivariable)
- [Remove-Hpuefivariable](#remove-hpuefivariable)
- [Set-Hpuefivariable](#set-hpuefivariable)
- [Install-Hpimageassistant](#install-hpimageassistant)
- [New-Hpbuilddriverpack](#new-hpbuilddriverpack)
- [New-Hpdriverpack](#new-hpdriverpack)
- [New-Hpuwpdriverpack](#new-hpuwpdriverpack)
- [Get-Hpanalyticsconsentconfiguration](#get-hpanalyticsconsentconfiguration)
- [Set-Hpanalyticsconsentallowedpurposes](#set-hpanalyticsconsentallowedpurposes)
- [Set-Hpanalyticsconsentdeviceownership](#set-hpanalyticsconsentdeviceownership)
- [Set-Hpanalyticsconsenttenantid](#set-hpanalyticsconsenttenantid)
- [Test-Hpsmartexperiencesissupported](#test-hpsmartexperiencesissupported)

---

*Generated from HP CMSL Documentation at developers.hp.com*


## Client Management Script Library

### BIOS and Device functionality

The Client Management Script Library (CMSL) currently incorporates a number of modules, as listed below. Some of these modules may have interdependencies. When attempting to install PowerShell modules manually, always do so by deploying the entire library.

Client Management Script Library is supported on 64-bit PowerShell 5.1 and higher. CMSL supports Windows 10 version 1809 and higher, and Windows 11.

[Supported Platform List](https://ftp.ext.hp.com/pub/caps-softpaq/cmit/imagepal/ref/platformList.html)

Library Installer is available in the download section of the [Client Management Solutions website](https://www.hp.com/us-en/solutions/client-management-solutions/download.html).

The following modules are currently available:

### BIOS and Device functionality

[BIOS and Device module](https://developers.hp.com/hp-client-management/doc/bios-and-device), allows querying client properties, and manipulating the HP BIOS settings.

### SoftPaq functionality

The [SoftPaq Management module](https://developers.hp.com/hp-client-management/doc/softpaq-management) provides functionality for identifying SoftPaq for target systems, and downloading SoftPaq from the internet.

### SoftPaq Repository functionality

The [SoftPaq Repository module](https://developers.hp.com/hp-client-management/doc/SoftPaq-Repository) extends the SoftPaq Management module to provide a SoftPaq repository for a set of platforms that can be kept in sync with a single action.

### Firmware functionality

The [Firmware module](https://developers.hp.com/hp-client-management/doc/firmware) provides access to low level firmware functionality. Functionality may differ between platforms or generations of platforms. Please consult the individual function's documentation for prerequisite information.

### Retail functionality

The [Retail module](https://developers.hp.com/hp-client-management/doc/retail) provides functionality to interface with HP Retail Systems such as HP Engage Go.

### Consent functionality

The [Consent module](https://developers.hp.com/hp-client-management/doc/consent) provides functionality for managing Consent for the HP Analytics.

The module has functions for an IT admin to centrally manage HP Telemetry privacy settings, from remotely managed systems in an enterprise environment, on behalf of users.

Detailed Documentation for enabling and disabling consent registry keys is available [here](https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf).

### Smart Experiences functionality

The [Smart Experiences module](https://developers.hp.com/hp-client-management/doc/smart-experiences) provides functionality for configuring Smart Experiences features.

### Notifications functionality

The [Notifications module](https://developers.hp.com/hp-client-management/doc/notifications) provides functionality for invoking toast notifications.

### Displays functionality

The [Displays module](https://developers.hp.com/hp-client-management/doc/displays) provides functionality for configuring connected displays.

### Security functionality

The [Security module](https://developers.hp.com/hp-client-management/doc/security) provides functionality for querying platform data, invoking TPM credential validation, etc.

### Docks functionality

The [Docks module](https://developers.hp.com/hp-client-management/doc/docks) provides functionality for querying dock information and updating dock firmware.

### See also

For additional information, please see the [FAQ](https://developers.hp.com/hp-client-management/doc/faq).

---


## BIOS and Device

### Querying system attributes

This module provides basic querying of device attributes and manipulation of HP BIOS settings and managing the HP BIOS. For more information about HP BIOS Settings, please consult the [Understanding HP BIOS Settings](https://developers.hp.com/hp-client-management/doc/understanding-hp-bios-settings) page.

The following functionality is currently available:



| Function | Description |
| --- | --- |
| [Get-HPBIOSVersion](https://developers.hp.com/hp-client-management/doc/get-hpbiosversion) | Retrieves the current BIOS version on the current device unless specified for another platform. |
| [Get-HPBIOSAuthor](https://developers.hp.com/hp-client-management/doc/get-hpbiosauthor) | Retrieves the current BIOS author (manufacturer) on the current device unless specified for another platform |
| [Get-HPDeviceManufacturer](https://developers.hp.com/hp-client-management/doc/get-hpdevicemanufacturer) | Retrieves the current device manufacturer on the current device unless specified for another platform |
| [Get-HPDeviceModel](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceModel) | Retrieves the official marketing name of the current device unless specified for another platform |
| [Get-HPDevicePartNumber](https://developers.hp.com/hp-client-management/doc/Get-HPDevicePartNumber) | Retrieves the Part Number (or SKU) on the current device unless specified for another platform |
| [Get-HPDeviceSerialNumber](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceSerialNumber) | Retrieves the serial number on the current device unless specified for another platform |
| [Get-HPDeviceAssetTag](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceAssetTag) | Retrieves the device asset tag of the current device unless specified for another platform |
| [Get-HPDeviceProductID](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceProductID) | Retrieves the product ID of the current device unless specified for another platform |
| [Get-HPBIOSUUID](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSUUID) | Retrieves the BIOS UUID on the current device unless specified for another platform |
| [Get-HPDeviceUUID](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceUUID) | Retrieves the device UUID via standard OS providers on the current device unless specified for another platform |
| [Get-HPDeviceUptime](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceUptime) | Retrieves the system boot time and uptime of the current device unless specified for another platform |

### Checking BIOS versions

| Function | Description |
| --- | --- |
| [Get-HPBIOSUpdates](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSUpdates) | Retrieves available BIOS updates (or downgrades) |
| [Get-HPBIOSWindowsUpdate](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSWindowsUpdate) | Retrieves available BIOS updates using Windows Update packages |
| [Add-HPBIOSWindowsUpdateScripts](https://developers.hp.com/hp-client-management/doc/Add-HPBIOSWindowsUpdateScripts) | Applies BIOS updates using a Windows Update package |

### Working with HP BIOS Settings directly

| Function | Description |
| --- | --- |
| [Get-HPBIOSSetting](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSSetting) | Retrieves an HP BIOS Setting object by name on the current device unless specified for another platform |
| [Get-HPBIOSSettingValue](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSSettingValue) | Retrieves the value of an HP BIOS Setting on the current device unless specified for another platform |
| [Get-HPBIOSSettingsList](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSSettingsList) | Retrieves all BIOS settings on the current device unless specified for another platform |
| [Set-HPBIOSSettingValue](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSSettingValue) | Sets the value of a BIOS setting on the current device unless specified for another platform |
| [Set-HPBIOSSettingValuesFromFile](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSSettingValuesFromFile) | Sets one or more BIOS settings from a file on the current device unless specified for another platform |
| [Set-HPBIOSSettingDefaults](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSSettingDefaults) | Resets the BIOS settings to shipping defaults on the current device unless specified for another platform |

### Working with HP BIOS passwords

| Function | Description |
| --- | --- |
| [Get-HPBIOSSetupPasswordIsSet](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSSetupPasswordIsSet) | Checks if the BIOS Setup password is set on the current device unless specified for another platform |
| [Set-HPBIOSSetupPassword](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSSetupPassword) | Sets the BIOS Setup password on the current device unless specified for another platform |
| [Clear-HPBIOSSetupPassword](https://developers.hp.com/hp-client-management/doc/Clear-HPBIOSSetupPassword) | Clears the BIOS Setup password on the current device unless specified for another platform |
| [Get-HPBIOSPowerOnPasswordIsSet](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSPowerOnPasswordIsSet) | Checks if the HP BIOS Power-On password is set on the current device unless specified for another platform |
| [Set-HPBIOSPowerOnPassword](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSPowerOnPassword) | Sets the BIOS Power-On password on the current device unless specified for another platform |
| [Clear-HPBIOSPowerOnPassword](https://developers.hp.com/hp-client-management/doc/Clear-HPBIOSPowerOnPassword) | Clears the BIOS Power-On password on the current device unless specified for another platform |

### Utility

| Function | Description |
| --- | --- |
| [Get-HPDeviceBootInformation](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceBootInformation) | Retrieves the current boot mode and uptime on the current device |
| [Get-HPDeviceDetails](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceDetails) | Retrieves the platform name, system ID, or operating system support using either the platform name or its system ID |
| [Get-HPCMSLEnvironment](https://developers.hp.com/hp-client-management/doc/Get-HPCMSLEnvironment) | Retrieves the HP-CMSL environment configuration |

### Working with UEFI variables

| Function | Description |
| --- | --- |
| [Set-HPUEFIVariable](https://developers.hp.com/hp-client-management/doc/Set-HPUEFIVariable) | Sets the value of a UEFI variable. If the variable does not exist, it is created. |
| [Get-HPUEFIVariable](https://developers.hp.com/hp-client-management/doc/Get-HPUEFIVariable) | Retrieves the value of a UEFI variable |
| [Remove-HPUEFIVariable](https://developers.hp.com/hp-client-management/doc/Remove-HPUEFIVariable) | Removes a UEFI variable from a user-supplied namespace |

---

### Add-Hpbioswindowsupdatescripts

Applies BIOS updates using a Windows Update package

### Syntax

Add-HPBIOSWindowsUpdateScripts \[-WindowsUpdateFile\] <String> \[<CommonParameters>\]

### Description

This command extracts the Windows Update file and prepares the system to receive a BIOS update. This command is invoked by the Get-HPBIOSWindowsUpdate command.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _WindowsUpdateFile_ | `<String>` | Specifies the absolute path to the compressed CAB file downloaded with the Get-HPBIOSWindowsUpdate command.<br />The file name must follow the standard: platform family (3 digit) + underscore + BIOS version (6 digits) + .cab, for instance: R70\_011200.cab |

### Notes

Requires Windows group policy support

### Examples

```
PS C:\> Add-HPBIOSWindowsUpdateScripts -WindowsUpdateFile C:\R70_011200.cab

```

---

### Clear-Hpbiospoweronpassword

Clears the BIOS Power-On password on the current device unless specified for another platform

### Syntax

Clear-HPBIOSPowerOnPassword \[\[-Password\] <String>\] \[\[-ComputerName\] <Object>\] \[<CommonParameters>\]

Clear-HPBIOSPowerOnPassword \[\[-Password\] <String>\] \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command clears any active power-on password on the current device unless specified for another platform.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Password_ | `<String>` | Specifies the existing setup (not power-on) password. Use the Get-HPBIOSSetupPasswordIsSet command to determine if a password is currently set. See important note regarding the BIOS Setup Password prerequisite below. |
| _ComputerName_ | `<Object>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

*   Requires HP BIOS.
*   Use single quotes around the password to prevent PowerShell from interpreting special characters in the string.
*   For many platform families, an active BIOS password is required to change the Power-On password. If BIOS Setup password is not set, set the BIOS Setup password before using this command.

### Examples

```
PS C:\> Clear-HPBIOSPowerOnPassword -Password 's3cr3tpassword'

```

### See also

*   [Set-HPBIOSPowerOnPassword](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSPowerOnPassword)
*   [Get-HPBIOSPowerOnPasswordIsSet](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSPowerOnPasswordIsSet)
*   [Get-HPBIOSSetupPasswordIsSet](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSSetupPasswordIsSet)

---

### Clear-Hpbiossetuppassword

Clears the BIOS Setup password on the current device unless specified for another platform

### Syntax

Clear-HPBIOSSetupPassword \[-Password\] <String> \[\[-ComputerName\] <Object>\] \[<CommonParameters>\]

Clear-HPBIOSSetupPassword \[-Password\] <String> \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command clears the BIOS setup password on the current device unless specified for another platform. To set the password, use the Set-HPBIOSSetupPassword command.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Password_ | `<String>` | Specifies the existing setup password. Use the Get-HPBIOSSetupPasswordIsSet command to determine if a password is currently set. |
| _ComputerName_ | `<Object>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

*   Requires HP BIOS.
*   Use single quotes around the password to prevent PowerShell from interpreting special characters in the string.
*   Multiple attempts to change the password with an incorrect existing password may trigger BIOS lockout mode. BIOS lockout mode can be cleared by rebooting the system.

### Examples

```
PS C:\> Clear-HPBIOSSetupPassword  -Password 'currentpassword'

```

### See also

*   [Set-HPBIOSSetupPassword](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSSetupPassword)
*   [Get-HPBIOSSetupPasswordIsSet](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSSetupPasswordIsSet)

---

### Get-Hpbiosauthor

Retrieves the current BIOS author (manufacturer) on the current device unless specified for another platform

### Syntax

Get-HPBIOSAuthor \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPBIOSAuthor \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the BIOS manufacturer via the Win32\_BIOS WMI class. In some cases, the BIOS manufacturer may be different from the device manufacturer.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPBIOSAuthor

```

---

### Get-Hpbiospoweronpasswordisset

Checks if the BIOS Power-On password is set on the current device unless specified for another platform

### Syntax

Get-HPBIOSPowerOnPasswordIsSet \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPBIOSPowerOnPasswordIsSet \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command returns $true if a BIOS power-on password is currently active, or $false otherwise.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

Changes in the state of the BIOS Power-On Password may not be visible until the system is rebooted and the POST prompt regarding the BIOS Power-On password is accepted.

### Examples

```
PS C:\> Get-HPBIOSPowerOnPasswordIsSet

```

### See also

*   [Set-HPBIOSPowerOnPassword](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSPowerOnPassword)
*   [Clear-HPBIOSPowerOnPassword](https://developers.hp.com/hp-client-management/doc/Clear-HPBIOSPowerOnPassword)

---

### Get-Hpbiossetting

Retrieves an HP BIOS Setting object by name on the current device unless specified for another platform

### Syntax

Get-HPBIOSSetting \[-Name\] <Object> \[\[-Format\] <Object>\] \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPBIOSSetting \[-Name\] <Object> \[\[-Format\] <Object>\] \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves an HP BIOS Setting object by name on the current device unless specified for another platform.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Name_ | `<Object>` | Specifies the name of the BIOS setting to retrieve. This parameter is mandatory and has no default value. |
| _Format_ | `<Object>` | Specifies the format of the result. The value must be one of the following values:<br />\- BCU: format as HP BIOS Config Utility input format<br />\- CSV: format as a comma-separated values list<br />\- XML: format as XML<br />\- JSON: format as JSON<br />If not specified, the default PowerShell formatting is used. |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

HP BIOS is required.

### Examples

```
PS C:\> Get-HPBIOSSetting -Name "Serial Number" -Format BCU

```

---

### Get-Hpbiossettingvalue

Retrieves the value of a BIOS setting on the current device unless specified for another platform

### Syntax

Get-HPBIOSSettingValue \[-Name\] <String> \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPBIOSSettingValue \[-Name\] <String> \[\[-CimSession\] <CimSession>\] \[<CommonParameters>\]

### Description

This command retrieves the value of a BIOS setting on the current device unless specified for another platform. In comparison to the Get-HPBIOSSetting command that retrieves all fields for the BIOS setting, this command retrieves only the setting's value.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Name_ | `<String>` | Specifies the name of the BIOS setting to retrieve |
| _ComputerName_ | `<String>` | Specifies a target computer to execute this command. If not specified, this command is executed on the local computer. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

HP BIOS is required.

### Examples

```
PS C:\> Get-HPBIOSSettingValue -Name 'Asset Tracking Number'

```

---

### Get-Hpbiossettingslist

Retrieves all BIOS settings on the current device unless specified for another platform

### Syntax

Get-HPBIOSSettingsList \[\[-Format\] <String>\] \[\[-NoReadonly\]\] \[\[-ComputerName\] <String>\] \[\[-CimSession\] <CimSession>\] \[<CommonParameters>\]

Get-HPBIOSSettingsList \[\[-Format\] <String>\] \[\[-NoReadonly\]\] \[\[-ComputerName\] <String>\] \[\[-CimSession\] <CimSession>\] \[<CommonParameters>\]

### Description

This command retrieves all BIOS settings on the current device unless specified for another platform as native objects or in a specified format.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Format_ | `<String>` | Specifies the format of the result. The value must be one of the following values:<br />\- BCU: format as HP BIOS Config Utility input format<br />\- CSV: format as a comma-separated values list<br />\- XML: format as XML<br />\- JSON: format as JSON<br />\- brief: (default) format as a list of names<br />If not specified, the default PowerShell formatting is used. |
| _NoReadonly_ |  | If specified, this command will not include read-only settings in the result. |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

*   Although this command supports HP BIOS Config Utility (BCU), note that redirecting the command's output to a file will not be usable by BCU, because PowerShell will insert a unicode BOM in the file. To obtain a compatible file, either remove the BOM manually or use bios-cli.ps1.
*   BIOS settings of type 'password' are not outputted when using XML, JSON, BCU, or CSV formats.
*   By convention, when representing multiple values in an enumeration as a single string, the value with an asterisk in front is the currently active value. For example, given the string "One,\*Two,Three" representing three possible enumeration choices, the current active value is "Two".
*   Requires HP BIOS.

### Examples

```
PS C:\> Get-HPBIOSSettingsList -Format BCU

```

---

### Get-Hpbiossetuppasswordisset

Checks if the BIOS Setup password is set on the current device unless specified for another platform

### Syntax

Get-HPBIOSSetupPasswordIsSet \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPBIOSSetupPasswordIsSet \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command returns $true if a BIOS password is currently active, or $false otherwise.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

Requires HP BIOS.

### Examples

```
PS C:\> Get-HPBIOSSetupPasswordIsSet

```

### See also

*   [Set-HPBIOSSetupPassword](https://developers.hp.com/hp-client-management/doc/Set-HPBIOSSetupPassword)
*   [Get-HPBIOSSetupPasswordIsSet](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSSetupPasswordIsSet)

---

### Get-Hpbiosuuid

Retrieves the BIOS UUID on the current device unless specified for another platform

### Syntax

Get-HPBIOSUUID \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPBIOSUUID \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the system UUID from the BIOS. The result should normally match the result from the Get-HPDeviceUUID command.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPBIOSUUID

```

---

### Get-Hpbiosupdates

Retrieves available BIOS updates (or downgrades)

### Syntax

Get-HPBIOSUpdates \[\[-Platform\] <String>\] \[\[-Format\] <String>\] \[\[-Latest\]\] \[\[-Target\] <String>\] \[\[-All\]\] \[<CommonParameters>\]

Get-HPBIOSUpdates \[\[-Platform\] <String>\] \[\[-Target\] <String>\] \[-Download\] \[\[-Version\] <String>\] \[\[-SaveAs\] <String>\] \[\[-Quiet\]\] \[\[-Overwrite\]\] \[<CommonParameters>\]

Get-HPBIOSUpdates \[\[-Platform\] <String>\] \[\[-Check\]\] \[<CommonParameters>\]

Get-HPBIOSUpdates \[\[-Platform\] <String>\] \[\[-Target\] <String>\] \[-Flash\] \[\[-Password\] <String>\] \[\[-Version\] <String>\] \[\[-SaveAs\] <String>\] \[\[-Quiet\]\] \[\[-Overwrite\]\] \[\[-Yes\]\] \[\[-BitLocker\] <String>\] \[\[-Force\]\] \[\[-Url\] <String>\] \[\[-Offline\]\] \[\[-NoWait\]\] \[<CommonParameters>\]

### Description

This command uses an internet service to retrieve the list of BIOS updates available for a platform, and optionally checks it against the current system.

The result is a series of records, with the following definition:

*   Ver: the BIOS update version
*   Date: the BIOS release date
*   Bin: the BIOS update binary file

Online Mode uses Seamless Firmware Update Service that can update the BIOS in the background while the operating system is running (no authentication needed). 2022 and newer HP computers with Intel processors support Seamless Firmware Update Service. Offline Mode then finishes updating the BIOS after reboot and requires authentication (password or payload).

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Platform_ | `<String>` | Specifies the Platform ID to check. This parameter can be obtained via the Get-HPDeviceProductID command. The Platform ID cannot be specified for a flash operation. If not specified, the current Platform ID is used. |
| _Format_ | `<String>` | Specifies the format of the result. The value must be one of the following values:<br />\- list: format as a list<br />\- CSV: format as a comma-separated values list<br />\- XML: format as XML<br />\- JSON: format as JSON<br />If not specified, the default PowerShell formatting is used. |
| _Latest_ |  | If specified, this command returns or downloads the latest available BIOS version between remote and local. If the -Platform parameter is specified, the BIOS on the current device will not be read and the latest BIOS version available remotely will be returned. |
| _Check_ |  | If specified, this command returns true if the latest version corresponds to the installed version or installed version is higher and returns false otherwise. Please note that this parameter is only valid for use when comparing against current platform. |
| _Target_ | `<String>` | Specifies the target computer to execute this command. If not specified, the command is executed on the local computer. |
| _All_ |  | If specified, this command includes all known BIOS update information. This may include additional data such as dependencies, rollback support, and criticality. |
| _Download_ |  | If specified, this command will download the BIOS file to the current directory or a path specified by the -SaveAs parameter. |
| _Flash_ |  | If specified, the BIOS update will be flashed onto the current system. |
| _Password_ | `<String>` | Specifies the BIOS password, if any. This parameter is only necessary when the -Flash parameter is specified. Use single quotes around the password to prevent PowerShell from interpreting special characters in the string. |
| _Version_ | `<String>` | Specifies the BIOS version to download and/or flash. If not specified, the latest version will be used. This parameter must be specified with the -Download parameter and/or -Flash parameter. |
| _SaveAs_ | `<String>` | Specifies the file name for the downloaded BIOS file. If not specified, the remote file name will be used. |
| _Quiet_ |  | If specified, this command will not display a progress bar during the BIOS file download. |
| _Overwrite_ |  | If specified, this command will force overwrite any existing file with the same name during BIOS file download. This command is only necessary when the -Download parameter is used. |
| _Yes_ |  | If specified, this command will show an 'Are you sure you want to flash' prompt. This parameter prevents users from accidentally flashing the BIOS. |
| _BitLocker_ | `<String>` | Specifies the behavior to the BitLocker check prompt (if any). The value must be one of the following values:<br />\- stop: (default option) stops execution if BitLocker is detected but not suspended, and prompts<br />\- ignore: skips the BitLocker check<br />\- suspend: suspend sBitLocker if active and continues with execution |
| _Force_ |  | If specified, this command forces the BIOS update even if the target BIOS is already installed. |
| _Url_ | `<String>` | Specifies an alternate Url source for the platform's BIOS update catalog (xml). This URL must be HTTPS. |
| _Offline_ |  | If specified, this command uses the offline mode to flash the BIOS instead of the default online mode. In offline mode, the actual flash will occur after reboot at pre-OS environment. Please note that offline mode is selected by default when downgrading the BIOS version and requires authentication so either a Password or a PayloadFile should be specified. |
| _NoWait_ |  | If specified, the script does not wait for the online flash background task to finish. If the user reboots the PC during the online flash, the BIOS update will complete only after reboot. |

### Notes

*   Flash is only supported on Windows 10 1709 (Fall Creators Updated) and later.
*   UEFI boot mode is required for flashing; legacy mode is not supported.
*   The flash operation requires 64-bit PowerShell (not supported under 32-bit PowerShell).

**WinPE notes**

*   Use '-BitLocker ignore' when using this command in WinPE because BitLocker checks are not applicable in Windows PE.
*   Requires that the WinPE image is built with the WinPE-SecureBootCmdlets.cab component.

### Examples

```
PS C:\> Get-HPBIOSUpdates

```

```
PS C:\> Get-HPBIOSUpdates -Platform "87ED"

```

```
PS C:\> Get-HPBIOSUpdates -Download -Version "01.26.00"

```

```
PS C:\> Get-HPBIOSUpdates -Flash -Version "01.26.00"

```

---

### Get-Hpbiosversion

Retrieves the current BIOS version on the current device unless specified for another platform

### Syntax

Get-HPBIOSVersion \[\[-IncludeFamily\]\] \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPBIOSVersion \[\[-IncludeFamily\]\] \[\[-ComputerName\] <String>\] \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the current BIOS version. If the BIOS family is available and the -includeFamily parameter is specified, the BIOS family is also included in the result.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _IncludeFamily_ |  | If specified, the BIOS family is included in the result. |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPBIOSVersion

```

---

### Get-Hpbioswindowsupdate

Retrieves the available BIOS updates using Windows Update packages

### Syntax

Get-HPBIOSWindowsUpdate \[\[-Severity\] <String>\] \[\[-Family\] <String>\] \[\[-Url\] <String>\] \[\[-Quiet\]\] \[\[-SaveAs\] <String>\] \[\[-Download\]\] \[\[-Flash\]\] \[\[-Yes\]\] \[\[-Force\]\] \[<CommonParameters>\]

Get-HPBIOSWindowsUpdate \[-Version\] <String> \[\[-Family\] <String>\] \[\[-Url\] <String>\] \[\[-Quiet\]\] \[\[-SaveAs\] <String>\] \[\[-Download\]\] \[\[-Flash\]\] \[\[-Yes\]\] \[\[-Force\]\] \[<CommonParameters>\]

Get-HPBIOSWindowsUpdate \[\[-Family\] <String>\] \[\[-Url\] <String>\] \[-List\] \[<CommonParameters>\]

### Description

This command retrieves the available BIOS updates using Windows Update package by using an internet service to retrieve the list of BIOS capsule updates available for a platform family, and optionally install the update in the current system. The versions available through this command may differ from the Get-HPBIOSUpdate command since this command relies on the Microsoft capsules availability. The availability of the updates can be delayed due to the Windows Update in-flight processes.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Severity_ | `<String>` | If specified, this command returns the available BIOS for the specified severity: 'Latest' or 'LatestCritical'. |
| _Version_ | `<String>` | Specifies the BIOS version to download. If not specified, the latest version available will be downloaded. |
| _Family_ | `<String>` | Specifies the platform family to retrieve. If not specified, this command retrieves and applies the current platform family. |
| _Url_ | `<String>` | Specifies an alternate Url source for the platform's BIOS update catalog (xml). This URL must be HTTPS. |
| _Quiet_ |  | If specified, this command will not display a progress bar during the BIOS file download. |
| _SaveAs_ | `<String>` | Specifies the file name for the downloaded BIOS file. If not specified, the remote file name will be used.<br />In order to use the downloaded file with the Add-HPBIOSWindowsUpdateScripts command, the file name must follow the standard: platform family (3 digit) + underscore + BIOS version (6 digits) + .cab, for instance: R70\_011200.cab |
| _Download_ |  | If specified, this command downloads the BIOS file to the current directory or a path specified by the -SaveAs parameter. |
| _Flash_ |  | If specified, this command checks and applies the BIOS update to the current system. |
| _Yes_ |  | If specified, this command will show an 'Are you sure you want to flash' prompt. This parameter prevents users from accidentally flashing the BIOS. |
| _Force_ |  | If specified, this command forces the BIOS to update even if the target BIOS is already installed. |
| _List_ |  | If specified, this command will display a list with all the BIOS versions available for the specified platform. |

### Notes

*   Requires Windows group policy support

### Examples

```
PS C:\> Get-HPBIOSWindowsUpdate

```

```
PS C:\> Get-HPBIOSWindowsUpdate -List -Family R70

```

```
PS C:\> Get-HPBIOSWindowsUpdate -Flash -Severity Latest

```

```
PS C:\> Get-HPBIOSWindowsUpdate -Flash -Severity LatestCritical

```

```
PS C:\> Get-HPBIOSWindowsUpdate -Flash -Severity LatestCritical -Family R70

```

---

### Set-Hpbiospoweronpassword

Sets the BIOS Power-On password on the current device unless specified for another platform

### Syntax

Set-HPBIOSPowerOnPassword \[-NewPassword\] <String> \[\[-Password\] <String>\] \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Set-HPBIOSPowerOnPassword \[-NewPassword\] <String> \[\[-Password\] <String>\] \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command sets the BIOS Power-On password on the current device unless specified for another platform. The password must comply with password complexity requirements active on the system.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _NewPassword_ | `<String>` | Specifies a new password for the BIOS Power-On password. To clear the password, use the Clear-HPBIOSPowerOnPassword command instead. |
| _Password_ | `<String>` | Specifies the existing BIOS Setup password (not Power-On password), if any. If there is no BIOS Setup password set, this parameter may be omitted. Use the Get-HPBIOSSetupPasswordIsSet command to determine if a setup password is currently set. |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

*   Requires HP BIOS.
*   Use single quotes around the password to prevent PowerShell from interpreting special characters in the string.
*   On many platform families, changing the Power-On password requires that a BIOS password is active.
*   Changes in the state of the BIOS Power-On Password may not be visible until the system is rebooted and the POST prompt regarding the BIOS Power-On password is accepted.

### Examples

```
PS C:\> Set-HPBIOSPowerOnPassword -NewPassword 'newpassword' -Password 'setuppassword'

```

### See also

*   [Clear-HPBIOSPowerOnPassword](https://developers.hp.com/hp-client-management/doc/Clear-HPBIOSPowerOnPassword)
*   [Get-HPBIOSPowerOnPasswordIsSet](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSPowerOnPasswordIsSet)

---

### Set-Hpbiossettingdefaults

Resets the BIOS settings to shipping defaults on the current device unless specified for another platform

### Syntax

Set-HPBIOSSettingDefaults \[\[-Password\] <String>\] \[\[-ComputerName\] <Object>\] \[<CommonParameters>\]

Set-HPBIOSSettingDefaults \[\[-Password\] <String>\] \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command resets the BIOS settings to shipping defaults on the current device unless specified for another platform. Please note that the default values are platform-specific.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Password_ | `<String>` | Specifies the current BIOS setup password, if any. |
| _ComputerName_ | `<Object>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

*   HP BIOS is required.
*   Use single quotes around the password to prevent PowerShell from interpreting special characters in the string.

### Examples

```
PS C:\> Set-HPBIOSSettingDefaults -Password 's3cr3t'

```

---

### Set-Hpbiossettingvalue

Sets the value of a BIOS setting on the current device unless specified for another platform

### Syntax

Set-HPBIOSSettingValue \[\[-Password\] <String>\] \[-Name\] <String> \[-Value\] <String> \[\[-SkipPrecheck\]\] \[\[-ComputerName\] <Object>\] \[<CommonParameters>\]

Set-HPBIOSSettingValue \[\[-Password\] <String>\] \[-Name\] <String> \[-Value\] <String> \[\[-SkipPrecheck\]\] \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command sets the value of a BIOS setting on the current device unless specified for another platform. Note that some BIOS settings may have various constraints restricting the input that can be provided.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Password_ | `<String>` | Specifies the setup password, if any |
| _Name_ | `<String>` | Specifies the name of a BIOS setting to set. Note that the setting name is usually case sensitive. |
| _Value_ | `<String>` | Specifies the new value for the BIOS setting specified in the -Name parameter |
| _SkipPrecheck_ |  | If specified, this command skips reading the setting value from the BIOS before applying the new value. This parameter is used for optimization purposes when the setting is guaranteed to exist on the system, or when preparing an HP Sure Admin platform for a remote platform which may contain settings not present on the local platform. |
| _ComputerName_ | `<Object>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

*   Requires HP BIOS.
*   Use single quotes around the password to prevent PowerShell from interpreting special characters in the string.
*   By convention, when representing multiple values in an enumeration as a single string, the value with an asterisk in front is the currently active value. For example, given the string "One,\*Two,Three" representing three possible enumeration choices, the current active value is "Two".

### Examples

```
PS C:\> Set-HPBIOSSettingValue -Name "Asset Tracking Number" -Value "Hello World" -password 's3cr3t'

```

---

### Set-Hpbiossettingvaluesfromfile

Sets one or more BIOS settings from a file on the current device unless specified for another platform

### Syntax

Set-HPBIOSSettingValuesFromFile \[-File\] <FileInfo> \[\[-Format\] <String>\] \[\[-Password\] <String>\] \[\[-NoSummary\]\] \[\[-ComputerName\] <String>\] \[\[-ErrorHandling\] <Object>\] \[<CommonParameters>\]

Set-HPBIOSSettingValuesFromFile \[-File\] <FileInfo> \[\[-Format\] <String>\] \[\[-Password\] <String>\] \[\[-NoSummary\]\] \[\[-ErrorHandling\] <Object>\] \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command sets multiple BIOS settings from a file on the current device unless specified for another platform. The file format may be specified via the -Format parameter; however, this command will try to infer the format from the file extension.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _File_ | `<FileInfo>` | Specifies the file to process. This parameter can take in both a relative path and an absolute path. Note that BIOS passwords are not encrypted in this file. Protect the file contents until applied to the target system. |
| _Format_ | `<String>` | Specifies the format of the input file in the File parameter. The value must be one of the following values:<br />\- BCU<br />\- CSV<br />\- XML<br />\- JSON<br />If not specified, this command will attempt to deduce the format from the file extension and parse accordingly. |
| _Password_ | `<String>` | Specifies the current BIOS setup password, if any. |
| _NoSummary_ |  | If specified, this command suppresses the one line summary at the end of the import. |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _ErrorHandling_ | `<Object>` | Specifies the type of error handling this command will use. The value must be one of the following values:<br />0 - operate normally<br />1 - raise exceptions as warnings<br />2 - no warnings or exceptions, fail silently |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

*   Requires HP BIOS.
*   Use single quotes around the password to prevent PowerShell from interpreting special characters in the string.

### Examples

```
PS C:\> Set-HPBIOSSettingValuesFromFile -File .\file.bcu -NoSummary

```

---

### Set-Hpbiossetuppassword

Sets the BIOS Setup password on the current device unless specified for another platform

### Syntax

Set-HPBIOSSetupPassword \[-NewPassword\] <String> \[\[-Password\] <String>\] \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Set-HPBIOSSetupPassword \[-NewPassword\] <String> \[\[-Password\] <String>\] \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command sets the BIOS Setup password to a new password. The password must comply with the current active security policy.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _NewPassword_ | `<String>` | Specifies the new password. To clear the password, use the Clear-HPBIOSSetupPassword command instead. |
| _Password_ | `<String>` | Specifies the existing setup password, if any. If there is a password set, this parameter is required. If there is no password set, providing a value to this parameter has no effect on the outcome. Use the Get-HPBIOSSetupPasswordIsSet command to determine if a password is currently set. |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Notes

*   Requires HP BIOS.
*   Use single quotes around the password to prevent PowerShell from interpreting special characters in the string.
*   Multiple attempts to change the password with an incorrect existing password may trigger BIOS lockout mode, which can be cleared by rebooting the system.

### Examples

```
PS C:\> Set-HPBIOSSetupPassword -NewPassword 'newpassword' -Password 'oldpassword'

```

### See also

*   [Clear-HPBIOSSetupPassword](https://developers.hp.com/hp-client-management/doc/Clear-HPBIOSSetupPassword)
*   [Get-HPBIOSSetupPasswordIsSet](https://developers.hp.com/hp-client-management/doc/Get-HPBIOSSetupPasswordIsSet)

---

### Understanding HP BIOS Settings

One of the most compelling features of HP platforms is the power to manipulate and change hardware configuration options in an open and adaptable manner. WMI provides a foundation for scriptable administration of operating system options that is well proven in the enterprise management community. HP client manageability leverages that foundation to provide the IT administrator with an unprecedented degree of control in managing configurations across the enterprise. As with sensor information, the mechanisms provided for collecting and manipulating hardware configuration options are designed with forward compatibility and future capabilities in mind.

The following table illustrates the inherent capability and flexibility of HP client manageability in dealing with various types of hardware configuration options.

| Management Class  |  Description |
| --- | --- |
| HP\_BIOSSetting  |  Defines the basic set of properties common to all forms of BIOS settings. All hardware configuration options supported by the platform can be surfaced by enumerating this class. |
| HP\_BIOSString  |  Extension of HP\_BIOSSetting to support string-based hardware configuration options. This would include such capabilities as: ownership tag, asset tracking number, and UUID. |
| HP\_BIOSInteger  |  Extension of HP\_BIOSSetting to support numeric hardware configuration options. |
| HP\_BIOSEnumeration  |  Most hardware configuration options fall into an enumeration category. Enumerations are collections of possible values for a setting (usually expressed as human-readable text). Example enumerations would be: “On, Off” or “Enable, Disable”. |
| HP\_BIOSOrderedList  |  This class extends the HP\_BIOSSetting to support such hardware features as boot order. |
| HP\_BIOSPassword  |  While password values are never exposed through the HP client manageability model, this class exists to help determine the existence of various password options on the client platform. This class would be queried to determine if a setup password was currently set on the platform, for example. |
| HP\_BIOSSettingInterface  |  This class provides access to the WMI methods exposed by HP client manageability. This includes methods to set individual settings and reset all settings to a default state. |


### MOF Definition

The following is the MOF definition for the discussed classes.

```
#pragma namespace("\\\\.\\root\\HP\\InstrumentedBIOS");
[abstract]
class HP_BIOSSetting
{
 [read] string Name;
 [read] string Value;
 [read] string Path;
 [read] uint32 IsReadOnly;
 [read] uint32 DisplayInUI;
 [read] uint32 RequiresPhysicalPresence;
 [read] uint32 Sequence;
 [read] string Prerequisites[];
};

class HP_BIOSString : HP_BIOSSetting
{
 [read] uint32 MinLength;
 [read] uint32 MaxLength;
};

class HP_BIOSInteger : HP_BIOSSetting
{
 [read] uint32 LowerBound;
 [read] uint32 UpperBound;
 [read] uint32 IntValue;
};

class HP_BIOSEnumeration : HP_BIOSSetting
{
 [read] string CurrentValue;
 [read] uint32 Size;
 [read] string PossibleValues[];
};

class HP_BIOSOrderedList : HP_BIOSSetting
{
 [read] uint32 Size;
 [read, ArrayType("orderlist")] string Elements[];
};

class HP_BIOSPassword : HP_BIOSSetting
{
 [read] uint32 MinLength;
 [read] uint32 MaxLength;
 [read] string SupportedEncoding[];
 [read] uint32 IsSet;
};

[abstract, singleton]
class HP_BIOSSettingInterface
{
 [implemented] void SetBIOSSetting(
 [out, ValueMap {"0","1","2","3","4","5","6"}, 
 Values {"Success","Not Supported","Unspecified Error",
 "Timeout","Failed","Invalid Parameter","Access Denied"}]
 uint32 Return,
 [in] string Name,
 [in] string Value,
 [in, optional] string Password);
 [implemented] void SetSystemDefaults(
 [out: ToSubclass ToInstance,
 [out, ValueMap {"0","1","2","3","4","5","6"},
 Values {"Success","Not Supported","Unspecified Error",
 "Timeout","Failed","Invalid Parameter","Access Denied"}]
 uint32 Return,
 [in, optional] string Password);
}; 
```

### Property details

| Class property  |  Description |
| --- | --- |
| Name  |  This property contains the human readable name for the BIOS setting. This text should be similar to what is exposed through the F10 Computer Setup application.<br />Setting names are unique in nature, as this value is used to identify the entity to change or update in calls through calls to the SetBIOSSetting() method. |
| Value  |  This property contains a string representation of the intended BIOS setting. List entities are separated by commas. Enumeration selections are designated by the presence of an asterisk character (ex: “\*Enable, Disable” denotes a setting is enabled in an enumeration setting. |
| Path  |  This property provides a string representation of the setting hierarchy that encapsulates this instance data. Each level of the hierarchy is separated by a backslash.<br />This hierarchy will usually follow the appearance and grouping of items within F10 Computer Setup. |
| IsReadOnly  |  Value indicating if this setting is supported by the interface method HP\_BIOSSettingInterface.SetBIOSSetting(). A value of 1 indicates that this particular setting instance cannot be changed, otherwise the property is 0. |
| DisplayInUI  |  Flag indicating this component should be visible within a BIOS configuration user interface application. This property field is used by some utilities to filter elements that are not applicable to a given platform. |
| RequiresPhysicalPresence  |  A value of 1 indicates that attempts to modify this setting will require interactive acknowledgement during the next system startup. Otherwise the property is 0. This property is provided for future compatibility. |
| Sequence  |  This property provides an ordering sequence for the instances being enumerated through WMI. It is used in conjunction with the “Path” property to help generate UI representations of the BIOS setting data. The values are for all instances are arranged in ascending order and gaps in the sequence are acceptable. In the event that multiple setting instances share the same Sequence value, or the value is NULL, the Path and Name information is used to determine order. |
| Prerequisites  |  This property array allows the system BIOS to define prerequisite conditions that affect the use of the current instance. This property is provided for future compatibility. |
| MinLength  |  This property identifies the minimum string length allowed when modifying this BIOS setting. |
| MaxLength  |  This property defines the maximum string length in characters. |
| LowerBound  |  This property defines the lower limit when modifying this setting. |
| UpperBound  |  This property defines the upper limit when modifying this setting. |
| IntValue  |  This property contains an integer representation of the string stored in the Value base class property. |
| CurrentValue  |  This property contains the string representation of the current active state for this BIOS setting. |
| PossibleValues  |  This property contains a string array representing the possible setting states. |
| Elements  |  This property contains a string array representing the ordered list of elements. The first entry (Element\[0\]) represents the first item in the ordered list. |
| Size  |  The value contained in this property denotes the number of elements contained within a corresponding array property. This field is used in conjunction with either the Elements or PossibleValues array properties. |
| SupportedEncoding  |  This property contains an array of strings representing the encoding tags the BIOS supports for denoting a password parameter string. Encoding tags are used to denote the format of a password string that is being passed into the BIOS and follow the syntax tag/\_TYPE\_PLACEHOLDER, where tag is defined by the array element entries. |
| IsSet  |  This property indicates whether a particular password setting instance is currently set (1) or blank (0).<br />Use this property to determine that state of a password setting, since the “Value” property for a password instance will always be blank. |

---


## Firmware

### Firmware update

This module provides functionality for interfacing with HP BIOS firmware, HP Secure Platform Management, HP Sure Recover, HP Sure View, and HP Sure Admin.

Some functionalities may not be available on all platforms or on all generations of a platform.



| Function | Description |
| --- | --- |
| [Update-HPFirmware](https://developers.hp.com/hp-client-management/doc/Update-HPFirmware) | Updates the system firmware from a capsule or BIOS binary file |

### Legacy BIOS password

| Function | Description |
| --- | --- |
| [Write-HPFirmwarePasswordFile](https://developers.hp.com/hp-client-management/doc/Write-HPFirmwarePasswordFile) | Creates a password file compatible with HP BIOS Configuration Utility (BCU) |

### Firmware logs

| Function | Description |
| --- | --- |
| [Get-HPFirmwareAuditLog](https://developers.hp.com/hp-client-management/doc/Get-HPFirmwareAuditLog) | Retrieves firmware log entries |

### Boot logo

| Function | Description |
| --- | --- |
| [Get-HPFirmwareBootLogoIsActive](https://developers.hp.com/hp-client-management/doc/Get-HPFirmwareBootLogoIsActive) | Checks if a custom logo is currently active |
| [Clear-HPFirmwareBootLogo](https://developers.hp.com/hp-client-management/doc/Clear-HPFirmwareBootLogo) | Removes any active custom boot logo |
| [Set-HPFirmwareBootLogo](https://developers.hp.com/hp-client-management/doc/Set-HPFirmwareBootLogo) | Sets the logo on reboot |

### HP Secure Platform Management

| Function | Description |
| --- | --- |
| [Get-HPSecurePlatformState](https://developers.hp.com/hp-client-management/doc/Get-HPSecurePlatformState) | Retrieves the HP Secure Platform Management state |
| [New-HPSecurePlatformEndorsementKeyProvisioningPayload](https://developers.hp.com/hp-client-management/doc/New-HPSecurePlatformEndorsementKeyProvisioningPayload) | Creates an HP Secure Platform Management payload to provision a Key Endorsement key |
| [New-HPSecurePlatformSigningKeyProvisioningPayload](https://developers.hp.com/hp-client-management/doc/New-HPSecurePlatformSigningKeyProvisioningPayload) | Creates an HP Secure Platform Management payload to provision a Signing Key key |
| [New-HPSecurePlatformDeprovisioningPayload](https://developers.hp.com/hp-client-management/doc/New-HPSecurePlatformDeprovisioningPayload) | Creates a deprovisioning payload |
| [Set-HPSecurePlatformPayload](https://developers.hp.com/hp-client-management/doc/Set-HPSecurePlatformPayload) | Applies a payload to HP Secure Platform Management |

### HP Sure Recover

| Function | Description |
| --- | --- |
| [Get-HPSureRecoverState](https://developers.hp.com/hp-client-management/doc/Get-HPSureRecoverState) | Retrieves the current state of the HP Sure Recover feature |
| [Get-HPSureRecoverReimagingDeviceDetails](https://developers.hp.com/hp-client-management/doc/Get-HPSureRecoverReimagingDeviceDetails) | Retrieves information about the HP Sure Recover embedded reimaging device |
| [New-HPSureRecoverConfigurationPayload](https://developers.hp.com/hp-client-management/doc/New-HPSureRecoverConfigurationPayload) | Creates a payload to configure HP Sure Recover |
| [New-HPSureRecoverImageConfigurationPayload](https://developers.hp.com/hp-client-management/doc/New-HPSureRecoverImageConfigurationPayload) | Creates a payload to configure the HP Sure Recover OS or Recovery image |
| [New-HPSureRecoverSchedulePayload](https://developers.hp.com/hp-client-management/doc/New-HPSureRecoverSchedulePayload) | Creates a payload to configure the HP Sure Recover schedule |
| [New-HPSureRecoverTriggerRecoveryPayload](https://developers.hp.com/hp-client-management/doc/New-HPSureRecoverTriggerRecoveryPayload) | Creates a payload to trigger HP Sure Recover events |
| [New-HPSureRecoverDeprovisionPayload](https://developers.hp.com/hp-client-management/doc/New-HPSureRecoverDeprovisionPayload) | Creates a payload to deprovision HP Sure Recover |
| [Invoke-HPSureRecoverTriggerUpdate](https://developers.hp.com/hp-client-management/doc/Invoke-HPSureRecoverTriggerUpdate) | Triggers the embedded reimaging device for update |
| [New-HPSureRecoverFailoverConfigurationPayload](https://developers.hp.com/hp-client-management/doc/New-HPSureRecoverFailoverConfigurationPayload) | Creates a payload to configure HP Sure Recover OS or Recovery image failover |
| [Get-HPSureRecoverFailoverConfiguration](https://developers.hp.com/hp-client-management/doc/Get-HPSureRecoverFailoverConfiguration) | Retrieves the current HP Sure Recover failover configuration |

### HP Sure View

| Function | Description |
| --- | --- |
| [Get-HPSureViewState](https://developers.hp.com/hp-client-management/doc/Get-HPSureViewState) | Retrieves the state of the HP Sure View electronic privacy filter if available |
| [Test-HPSureViewIsSupported](https://developers.hp.com/hp-client-management/doc/Test-HPSureViewIsSupported) | Checks if HP Sure View is supported |
| [Set-HPSureViewState](https://developers.hp.com/hp-client-management/doc/Set-HPSureViewState) | Sets HP Sure View State |

### HP Sure Admin

| Function | Description |
| --- | --- |
| [Get-HPSureAdminState](https://developers.hp.com/hp-client-management/doc/Get-HPSureAdminState) | Retrieves the current state of the HP Sure Admin feature |
| [New-HPSureAdminEnablePayload](https://developers.hp.com/hp-client-management/doc/New-HPSureAdminEnablePayload) | Creates a payload for enabling the HP Sure Admin feature |
| [New-HPSureAdminDisablePayload](https://developers.hp.com/hp-client-management/doc/New-HPSureAdminDisablePayload) | Creates a payload for disabling the HP Sure Admin feature |
| [Send-HPSureAdminLocalAccessKeyToKMS](https://developers.hp.com/hp-client-management/doc/Send-HPSureAdminLocalAccessKeyToKMS) | Sends a local access key in PFX format to HP Sure Admin Key Management Service (KMS) |
| [Clear-HPSureAdminKMSAccessToken](https://developers.hp.com/hp-client-management/doc/Clear-HPSureAdminKMSAccessToken) | Clears the HP Sure Admin Key Management Service (KMS) access token |
| [Convert-HPSureAdminCertToQRCode](https://developers.hp.com/hp-client-management/doc/Convert-HPSureAdminCertToQRCode) | Creates a QR-Code for transferring the private key from a certificate file to the HP Sure Admin phone app |
| [New-HPSureAdminBIOSSettingValuePayload](https://developers.hp.com/hp-client-management/doc/New-HPSureAdminBIOSSettingValuePayload) | Creates a payload for authorizing a single BIOS setting change |
| [New-HPSureAdminBIOSSettingsListPayload](https://developers.hp.com/hp-client-management/doc/New-HPSureAdminBIOSSettingsListPayload) | Creates a payload for authorizing multiple BIOS setting changes |
| [New-HPSureAdminFirmwareUpdatePayload](https://developers.hp.com/hp-client-management/doc/New-HPSureAdminFirmwareUpdatePayload) | Creates a payload for authorizing a firmware update |
| [New-HPSureAdminLocalAccessKeyProvisioningPayload](https://developers.hp.com/hp-client-management/doc/New-HPSureAdminLocalAccessKeyProvisioningPayload) | Creates a payload for provisioning a local access key |
| [New-HPSureAdminSettingDefaultsPayload](https://developers.hp.com/hp-client-management/doc/New-HPSureAdminSettingDefaultsPayload) | Creates a payload for resetting BIOS settings to default values |
| [Get-HPSureAdminKMSCapabilities](https://developers.hp.com/hp-client-management/doc/Get-HPSureAdminKMSCapabilities) | Retrieves the HP Sure Admin Key Management Service (KMS) server capabilities |
| [Get-HPSureAdminKeyId](https://developers.hp.com/hp-client-management/doc/Get-HPSureAdminKeyId) | Extracts the key id from a certificate |
| [Add-HPSureAdminSigningKeyToKMS](https://developers.hp.com/hp-client-management/doc/Add-HPSureAdminSigningKeyToKMS) | Adds a signing key in PFX format to HP Sure Admin Key Management Service (KMS) |
| [Remove-HPSureAdminSigningKeyFromKMS](https://developers.hp.com/hp-client-management/doc/Remove-HPSureAdminSigningKeyFromKMS) | Removes a signing key from HP Sure Admin Key Management Service (KMS) |
| [Add-HPSureAdminEndorsementKeyToKMS](https://developers.hp.com/hp-client-management/doc/Add-HPSureAdminEndorsementKeyToKMS) | Adds an endorsement key in PFX format to HP Sure Admin Key Management Service (KMS) |
| [Remove-HPSureAdminEndorsementKeyFromKMS](https://developers.hp.com/hp-client-management/doc/Remove-HPSureAdminEndorsementKeyFromKMS) | Removes an endorsement key from HP Sure Admin Key Management Service (KMS) |
| [Add-HPSureAdminDevicePermissions](https://developers.hp.com/hp-client-management/doc/Add-HPSureAdminDevicePermissions) | Adds one device permissions to HP Sure Admin Key Management Service (KMS) |
| [Get-HPSureAdminDevicePermissions](https://developers.hp.com/hp-client-management/doc/Get-HPSureAdminDevicePermissions) | Retrieves the device permissions from the HP Sure Admin Key Management Service (KMS) |
| [Edit-HPSureAdminDevicePermissions](https://developers.hp.com/hp-client-management/doc/Edit-HPSureAdminDevicePermissions) | Edits existing device permissions to HP Sure Admin Key Management Service (KMS) |
| [Remove-HPSureAdminDevicePermissions](https://developers.hp.com/hp-client-management/doc/Remove-HPSureAdminDevicePermissions) | Removes a device permission from the HP Sure Admin Key Management Service (KMS) |
| [Search-HPSureAdminDevicePermissions](https://developers.hp.com/hp-client-management/doc/Search-HPSureAdminDevicePermissions) | Searches device permissions on HP Sure Admin Key Management Service (KMS) |
| [Set-HPSureAdminDevicePermissions](https://developers.hp.com/hp-client-management/doc/Set-HPSureAdminDevicePermissions) | Sets one or multiple device permissions on the HP Sure Admin Key Management Service (KMS) |

---

### Add-Hpsureadmindevicepermissions

Adds one device permissions to HP Sure Admin Key Management Service (KMS)

### Syntax

Add-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[-UserEmail\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Add-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[-AADGroup\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Add-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[-AADGroup\] <String> \[-UserEmail\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Add-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[-UserEmail\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Add-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[-AADGroup\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Add-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[-AADGroup\] <String> \[-UserEmail\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

Device permissions allow IT administrators to manage local access of specific devices without having to provision a unique LAK key for each one. This command sends an HTTP request for mapping a device serial number to a user email, or to an AAD group. The connection with the KMS server requires the user to authenticate with a valid Microsoft account. Existing mappings are modified by the last configuration uploaded.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the permissions (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _SerialNumber_ | `<String>` | Specifies the serial number that identifies the device. |
| _AADGroup_ | `<String>` | Specifies the group name in Azure Active Directory that will have access to the key |
| _UserEmail_ | `<String>` | Specifies the user email in Azure Active Directory that will have access to the key |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   Supported on Windows Power Shell v7.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Add-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName" -UserEmail "myuser@myappname.onmicrosoft.com"

```

```
PS C:\> Add-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSUri "https://MyKMSURI.azurewebsites.net/" -AADGroup "MyAADGroupName"

```

---

### Add-Hpsureadminendorsementkeytokms

Adds an endorsement key in PFX format to HP Sure Admin Key Management Service (KMS)

### Syntax

Add-HPSureAdminEndorsementKeyToKMS \[-EndorsementKeyFile\] <FileInfo> \[\[-EndorsementKeyPassword\] <String>\] \[-KMSAppName\] <String> \[-AADGroup\] <String> \[-KeyName\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Add-HPSureAdminEndorsementKeyToKMS \[-EndorsementKeyFile\] <FileInfo> \[\[-EndorsementKeyPassword\] <String>\] \[-KMSUri\] <String> \[-AADGroup\] <String> \[-KeyName\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command extracts a private key from the provided certificate file, generates a JSON for the central-managed enrollment process, and sends it to the HP Sure Admin Key Management Service (KMS). The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _EndorsementKeyFile_ | `<FileInfo>` | Specifies the path to the endorsement key as a PFX file. If the PFX file is protected by a password (recommended), the -EndorsementKeyPassword parameter should also be provided. |
| _EndorsementKeyPassword_ | `<String>` | Specifies the endorsement key file password, if required. |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the key (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _AADGroup_ | `<String>` | Specifies the group name in Azure Active Directory that will have access to the key |
| _KeyName_ | `<String>` |  |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Add-HPSureAdminEndorsementKeyToKMS -EndorsementKeyFile "$path\endorsement_key.pfx" -KMSUri "https://MyKMSURI.azurewebsites.net/" -AADGroup "MyAADGroupName"

```

```
PS C:\> Add-HPSureAdminEndorsementKeyToKMS -EndorsementKeyFile "$path\endorsement_key.pfx" -EndorsementKeyPassword "pass" -KMSAppName "MyAppName" -AADGroup "MyAADGroupName"

```

---

### Add-Hpsureadminsigningkeytokms

Adds a signing key in PFX format to HP Sure Admin Key Management Service (KMS)

### Syntax

Add-HPSureAdminSigningKeyToKMS \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[-KMSAppName\] <String> \[-AADGroup\] <String> \[-KeyName\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Add-HPSureAdminSigningKeyToKMS \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[-KMSUri\] <String> \[-AADGroup\] <String> \[-KeyName\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command extracts a private key from the provided certificate file, generates a JSON for the central-managed enrollment process, and sends it to the HP Sure Admin Key Management Service (KMS). The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the signing key as a PFX file. If the PFX file is protected by a password (recommended), the -SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the signing key file password, if required. |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the key (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _AADGroup_ | `<String>` | Specifies the group name in Azure Active Directory that will have access to the key |
| _KeyName_ | `<String>` |  |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Add-HPSureAdminSigningKeyToKMS -SigningKeyFile "$path\signing_key.pfx" -KMSUri "https://MyKMSURI.azurewebsites.net/" -AADGroup "MyAADGroupName"

```

```
PS C:\> Add-HPSureAdminSigningKeyToKMS -SigningKeyFile "$path\signing_key.pfx" -SigningKeyPassword "pass" -KMSAppName "MyAppName" -AADGroup "MyAADGroupName"

```

---

### Clear-Hpfirmwarebootlogo

Removes any active custom boot logo

### Syntax

Clear-HPFirmwareBootLogo \[\[-Password\] <String>\] \[<CommonParameters>\]

### Description

This command removes any custom boot logo and reverts the boot logo back to the HP logo.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Password_ | `<String>` | Specifies the BIOS setup password, if any. Use single quotes around the password to prevent PowerShell from interpreting special characters in the string. |

### Notes

*   Requires HP BIOS
*   This command requires elevated privileges.
*   Due to a BIOS limitation, this command will not succeed when HP Sure Admin is enabled.

### Examples

```
PS C:\> Clear-HPFirmwareBootLogo -file myfile.jpg

```

### See also

*   [Set-HPFirmwareBootLogo](https://developers.hp.com/hp-client-management/doc/Set-HPFirmwareBootLogo)
*   [Get-HPFirmwareBootLogoIsActive](https://developers.hp.com/hp-client-management/doc/Get-HPFirmwareBootLogoIsActive)

---

### Clear-Hpsureadminkmsaccesstoken

Clears the HP Sure Admin Key Management Service (KMS) access token

### Syntax

Clear-HPSureAdminKMSAccessToken \[<CommonParameters>\]

### Description

This command clears the access token that is used for sending keys to HP Sure Admin Key Management Service (KMS). The token is stored locally in msalcache.dat file when -CacheAccessToken parameter is specified in KMS commands such as the Send-HPSureAdminLocalAccessKeyToKMS command.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Clear-HPSureAdminKMSAccessToken

```

---

### Convert-Hpsureadmincerttoqrcode

Creates a QR-Code for transferring the private key from a certificate file to the HP Sure Admin phone app

### Syntax

Convert-HPSureAdminCertToQRCode \[-LocalAccessKeyFile\] <FileInfo> \[\[-LocalAccessKeyPassword\] <String>\] \[\[-Model\] <String>\] \[\[-SerialNumber\] <String>\] \[\[-OutputFile\] <FileInfo>\] \[\[-Format\] <String>\] \[\[-ViewAs\] <String>\] \[\[-Passphrase\] <String>\] \[<CommonParameters>\]

### Description

This command extracts a private key from the provided certificate file and presents it in a form of QR-Code, which can be scanned with the HP Sure Admin phone app. Once scanned the app can be used for authorizing commands and BIOS setting changes.

Security note: It is recommended to delete the QR-Code file once it is scanned with the app. Keeping the QR-Code stored locally in your computer is not a recommended production pattern since it contains sensitive information that can be used to authorize commands.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _LocalAccessKeyFile_ | `<FileInfo>` | Specifies the path to the local access key as a PFX file. If the PFX file is protected by a password (recommended), the LocalAccessKeyPassword parameter should also be provided. |
| _LocalAccessKeyPassword_ | `<String>` | Specifies the local access key file password, if required. |
| _Model_ | `<String>` | Specifies the computer model to be stored with the key in the phone app |
| _SerialNumber_ | `<String>` | Specifies the serial number to be stored with the key in the phone app |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _Format_ | `<String>` | Specifies the format of your preference to save the QR-Code image file: Jpeg, Bmp, Png, Svg. |
| _ViewAs_ | `<String>` | Specifies the view option. The possible values are:<br />\- Default: creates a local file in your system and opens QR-Code image in default image viewer.<br />\- Text: the QR-Code is displayed by using text characters in your console.<br />\- None: the QR-Code is not presented to the user. This option is ideally used with the OutputFile parameter. |
| _Passphrase_ | `<String>` | Specifies the password to protect QR-Code content |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP BIOS with HP Sure Admin support is required for applying the payloads generated by this command.

### Examples

```
PS C:\> Convert-HPSureAdminCertToQRCode -LocalAccessKeyFile "$path\signing_key.pfx"

```

```
PS C:\> Convert-HPSureAdminCertToQRCode -Model "PC-Model" -SerialNumber "SN-1234" -LocalAccessKeyFile "$path\signing_key.pfx" -LocalAccessKeyPassword "s3cr3t"

```

```
PS C:\> Convert-HPSureAdminCertToQRCode -Model "PC-Model" -SerialNumber "SN-1234" -LocalAccessKeyFile "$path\signing_key.pfx" -Passphrase "s3cr3t" -ViewAs Text

```

```
PS C:\> Convert-HPSureAdminCertToQRCode -LocalAccessKeyFile "$path\signing_key.pfx" -Passphrase "s3cr3t" -Format "Svg"

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### Edit-Hpsureadmindevicepermissions

Edits existing device permissions to HP Sure Admin Key Management Service (KMS)

### Syntax

Edit-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[-UserEmail\] <String> \[-eTag\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Edit-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[-AADGroup\] <String> \[-eTag\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Edit-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[-AADGroup\] <String> \[-UserEmail\] <String> \[-eTag\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Edit-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[-UserEmail\] <String> \[-eTag\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Edit-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[-AADGroup\] <String> \[-eTag\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Edit-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[-AADGroup\] <String> \[-UserEmail\] <String> \[-eTag\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

Device permissions allow IT administrators to manage local access of specific devices without having to provision a unique LAK key for each one. This command sends an HTTP request for mapping a device serial number to a user email, or to an AAD group. The connection with the KMS server requires the user to authenticate with a valid Microsoft account. Existing mappings are modified by the last configuration uploaded.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the permissions (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _SerialNumber_ | `<String>` | Specifies the serial number that identifies the device. |
| _AADGroup_ | `<String>` | Specifies the group name in Azure Active Directory that will have access to the key |
| _UserEmail_ | `<String>` | Specifies the user email in Azure Active Directory that will have access to the key |
| _eTag_ | `<String>` | Specifies the eTag informed by the Get-HPSureAdminDevicePermissions command (see examples) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   Supported on Windows Power Shell v7.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Edit-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName" -UserEmail "myuser@myappname.onmicrosoft.com" -eTag 'W/"datetime''2021-10-22T15%3A17%3A48.9645833Z''"'

```

```
PS C:\> $entry = Get-HPSureAdminDevicePermissions -KMSAppName 'MyAppName' -SerialNumber 'XYZ123'
PS C:\> Edit-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSUri "https://MyKMSURI.azurewebsites.net/" -AADGroup "MyAADGroupName" -eTag $entry.eTag

```

---

### Get-Hpfirmwareauditlog

Retrieves firmware log entries

### Syntax

Get-HPFirmwareAuditLog \[-Numeric\] \[<CommonParameters>\]

### Description

This command retrieves an array of firmware log entries. These logs are HP specific and are generated by various HP firmware subsystems.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Numeric_ |  | If specified, the output displays the log entries as raw values, which is often useful for debugging or communicating with HP. Otherwise, the script will attempt to interpret the logs and display friendly text. |

### Notes

*   Requires HP BIOS with firmware log support
*   This command requires elevated privileges.

### Examples

```
PS C:\> $logs = Get-HPFirmwareAuditLog -numeric

```

---

### Get-Hpfirmwarebootlogoisactive

Checks if a custom logo is currently active

### Syntax

Get-HPFirmwareBootLogoIsActive \[<CommonParameters>\]

### Description

This command returns $true if a custom logo was previously configured via the Set-HPFirmwareBootLogo command. Returns $false otherwise.

### Parameters

No parameters defined.

### Notes

*   Requires HP BIOS
*   This command requires elevated privileges.

### Examples

```
PS C:\> $isactive = Get-HPFirmwareBootLogoIsActive

```

### See also

*   [Clear-HPFirmwareBootLogo](https://developers.hp.com/hp-client-management/doc/Clear-HPFirmwareBootLogo)
*   [Set-HPFirmwareBootLogo](https://developers.hp.com/hp-client-management/doc/Set-HPFirmwareBootLogo)

---

### Get-Hpsecureplatformstate

Retrieves the HP Secure Platform Management state

### Syntax

Get-HPSecurePlatformState \[<CommonParameters>\]

### Description

This command retrieves the state of the HP Secure Platform Management.

### Parameters

No parameters defined.

### Notes

*   Requires HP BIOS with Secure Platform Management support.
*   This command requires elevated privileges.

### Examples

```
PS C:\> Get-HPSecurePlatformState

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### Get-Hpsureadmindevicepermissions

Retrieves the device permissions from the HP Sure Admin Key Management Service (KMS)

### Syntax

Get-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Get-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

Device permissions allow IT administrators to manage local access of specific devices without having to provision a unique LAK key for each one. This command retrieves from KMS the permissions set for the specified device serial number. The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the permissions (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _SerialNumber_ | `<String>` | Specifies the serial number that identifies the device |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   Supported on Windows Power Shell v7.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Get-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName"

```

```
PS C:\> Get-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName" -CacheAccessToken

```

---

### Get-Hpsureadminkmscapabilities

Retrieves the HP Sure Admin Key Management Service (KMS) server capabilities

### Syntax

Get-HPSureAdminKMSCapabilities \[-KMSUri\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Get-HPSureAdminKMSCapabilities \[-KMSAppName\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command displays HP Sure Admin Key Management Service (KMS) capabilities. The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _KMSUri_ | `<String>` | Specifies the complete URI (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server to be used |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Get-HPSureAdminKMSCapabilities -KMSUri "https://MyKMSURI.azurewebsites.net/"

```

```
PS C:\> Get-HPSureAdminKMSCapabilities -KMSAppName "MyAppName"

```

---

### Get-Hpsureadminkeyid

Extracts the key id from a certificate

### Syntax

Get-HPSureAdminKeyId \[-Certificate\] <X509Certificate2> \[<CommonParameters>\]

Get-HPSureAdminKeyId \[-CertificateFile\] <FileInfo> \[\[-CertificateFilePassword\] <String>\] \[<CommonParameters>\]

### Description

This command retrieves the key id from a certificate. The key id used by HP Sure Admin Key Management Service (KMS) for remote signing.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Certificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the X509Certificate2 certificate |
| _CertificateFile_ | `<FileInfo>` | Specifies the certificate in PFX file |
| _CertificateFilePassword_ | `<String>` | Specifies the password for the PFX file |

### Examples

```
PS C:\> Get-HPSureAdminKeyId -Certificate X509Certificate2

```

```
PS C:\> Get-HPSureAdminKeyId -CertificateFile mypfxcert.pfx

```

---

### Get-Hpsureadminstate

Retrieves the current state of the HP Sure Admin feature

### Syntax

Get-HPSureAdminState \[<CommonParameters>\]

### Description

This command retrieves the current state of the HP Sure Admin feature

### Parameters

No parameters defined.

### Notes

*   Requires HP P21 enabled.
*   Requires HP BIOS with HP Sure Admin support.
*   This command requires elevated privileges.

### Examples

```
PS C:\> Get-HPSureAdminState

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### Get-Hpsurerecoverfailoverconfiguration

Retrieves the current HP Sure Recover failover configuration

### Syntax

Get-HPSureRecoverFailoverConfiguration \[\[-Image\] <String>\] \[<CommonParameters>\]

### Description

This command retrieves the current configuration of the HP Sure Recover failover feature.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Image_ | `<String>` | Specifies whether this command will create a configuration payload for a Recovery Agent image or a Recovery OS image. However, only the value 'os' is supported for now. |

### Notes

*   Requires HP BIOS with HP Sure Recover and Failover support.
*   This command requires elevated privileges.

### Examples

```
PS C:\> Get-HPSureRecoverFailoverConfiguration -Image os

```

---

### Get-Hpsurerecoverreimagingdevicedetails

Retrieves information about the HP Sure Recover embedded reimaging device

### Syntax

Get-HPSureRecoverReimagingDeviceDetails \[<CommonParameters>\]

### Description

This command retrieves information about the embedded reimaging device for HP Sure Recover.

### Parameters

No parameters defined.

### Notes

*   Requires HP BIOS with HP Sure Recover support
*   Requires Embedded Reimaging device hardware option
*   This command requires elevated privileges.

### Examples

```
PS C:\> Get-HPSureRecoverReimagingDeviceDetails

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)
*   [Blog post: Provisioning and Configuring HP Sure Recover with HP Client Management Script Library](/hp-client-management/blog/provisioning-and-configuring-hp-sure-recover-hp-client-management-script-library)

---

### Get-Hpsurerecoverstate

Retrieves the current state of the HP Sure Recover feature

### Syntax

Get-HPSureRecoverState \[-All\] \[<CommonParameters>\]

### Description

This command retrieves the current state of the HP Sure Recover feature.

Refer to the New-HPSureRecoverConfigurationPayload command for more information on how to configure HP Sure Recover.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _All_ |  | If specified, the output includes the OS Recovery Image and the OS Recovery Agent configuration. |

### Notes

*   Requires HP BIOS with HP Sure Recover support.
*   This command requires elevated privileges.

### Examples

```
PS C:\> Get-HPSureRecoverState

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)
*   [Blog post: Provisioning and Configuring HP Sure Recover with HP Client Management Script Library](/hp-client-management/blog/provisioning-and-configuring-hp-sure-recover-hp-client-management-script-library)

---

### Get-Hpsureviewstate

Retrieves the state of the HP Sure View electronic privacy filter if available

### Syntax

Get-HPSureViewState \[<CommonParameters>\]

### Description

This command retrieves the state of HP Sure View electronic privacy filter if available on the system.

### Parameters

No parameters defined.

### Notes

Information about HP Sure View forced state is available via the public WMI property 'Force Enable HP Sure View"'

### Examples

```
PS C:\> Get-HPSureViewState

```

### See also

*   [Set-HPSureViewState](https://developers.hp.com/hp-client-management/doc/Set-HPSureViewState)
*   [Test-HPSureViewIsSupported](https://developers.hp.com/hp-client-management/doc/Test-HPSureViewIsSupported)

---

### Invoke-Hpsurerecovertriggerupdate

Invokes the WMI command to trigger the BIOS to perform a service event on the next boot

### Syntax

Invoke-HPSureRecoverTriggerUpdate \[<CommonParameters>\]

### Description

This command invokes the WMI command to trigger the BIOS to perform a service event on the next boot. If the hardware option is not present, this command will throw a NotSupportedException exception.

The BIOS will then compare SR\_AED to HP\_EAD and agent will compare SR\_Image to HP\_Image and update as necessary. The CloudRecovery.exe is the tool that performs the actual update.

### Parameters

No parameters defined.

### Notes

*   Requires HP BIOS with HP Sure Recover support
*   Requires Embedded Reimaging device hardware option

### Examples

```
PS C:\> Invoke-HPSureRecoverTriggerUpdate

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)
*   [Blog post: Provisioning and Configuring HP Sure Recover with HP Client Management Script Library](/hp-client-management/blog/provisioning-and-configuring-hp-sure-recover-hp-client-management-script-library)

---

### New-Hpsecureplatformdeprovisioningpayload

Creates a deprovisioning payload

### Syntax

New-HPSecurePlatformDeprovisioningPayload \[-EndorsementKeyFile\] <String> \[\[-EndorsementKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSecurePlatformDeprovisioningPayload \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteEndorsementKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSecurePlatformDeprovisioningPayload \[\[-Nonce\] <UInt32>\] \[-EndorsementKeyCertificate\] <X509Certificate2> \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

### Description

This command creates a payload to deprovision the HP Secure Platform Management. The caller must have access to the Endorsement Key private key in order to create this payload.

There are three endorsement options to choose from: - Endorsement Key File (and Password) using -EndorsementKeyFile and -EndorsementKeyPassword parameters - Endorsement Key Certificate using -EndorsementKeyCertificate parameter - Remote Endorsement using -RemoteEndorsementKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the -OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _EndorsementKeyFile_ | `<String>` | Specifies the _Key Endorsement_ key certificate as a PFX (PKCS #12) file |
| _EndorsementKeyPassword_ | `<String>` | The password for the endorsement key certificate file. If no password was used when the PFX was created (which is not recommended), this parameter may be omitted. |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _EndorsementKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the endorsement key certificate as an X509Certificate object |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteEndorsementKeyID_ | `<String>` | Specifies the Endorsement Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Requires HP BIOS with Secure Platform Management support.

### Examples

```
PS C:\> New-HPSecurePlatformDeprovisioningPayload -EndorsementKeyFile kek.pfx | Set-HPSecurePlatformPayload

```

```
PS C:\> New-HPSecurePlatformDeprovisioningPayload -EndorsementKeyFile kek.pfx -OutputFile deprovisioning_payload.dat

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsecureplatformendorsementkeyprovisioningpayload

Creates an HP Secure Platform Management payload to provision a _Key Endorsement_ key

### Syntax

New-HPSecurePlatformEndorsementKeyProvisioningPayload \[-EndorsementKeyFile\] <FileInfo> \[\[-EndorsementKeyPassword\] <String>\] \[\[-BIOSPassword\] <String>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSecurePlatformEndorsementKeyProvisioningPayload \[-EndorsementKeyCertificate\] <X509Certificate2> \[\[-BIOSPassword\] <String>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSecurePlatformEndorsementKeyProvisioningPayload \[\[-BIOSPassword\] <String>\] \[-RemoteEndorsementKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command creates an HP Secure Platform Management payload to provision a _Key Endorsement_ key. The purpose of the endorsement key is to protect the signing key against unauthorized changes. Only holders of the key endorsement private key may change the signing key.

There are three endorsement options to choose from: - Endorsement Key File (and Password) using -EndorsementKeyFile and -EndorsementKeyPassword parameters - Endorsement Key Certificate using -EndorsementKeyCertificate parameter - Remote Endorsement using -RemoteEndorsementKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _EndorsementKeyFile_ | `<FileInfo>` | Specifies the _Key Endorsement_ key certificate as a PFX (PKCS #12) file |
| _EndorsementKeyPassword_ | `<String>` | Specifies the password for the _Endorsement Key_ PFX file. If no password was used when the PFX was created (not recommended), this parameter may be omitted. |
| _EndorsementKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the endorsement key certificate as an X509Certificate object |
| _BIOSPassword_ | `<String>` | Specifies the BIOS setup password, if any. Note that the password will be in the clear in the generated payload. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteEndorsementKeyID_ | `<String>` | Specifies the Endorsement Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the Key Management Services (KMS) server URL (I.e.: https://.azurewebsites.net/).. This URL must be HTTPS. |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

The Key Endorsement private key must never leave a secure server. The payload must be created on a secure server, then may be transferred to a client.

*   Requires HP BIOS with Secure Platform Management support.

### Examples

```
PS C:\> $payload = New-HPSecurePlatformEndorsementKeyProvisioningPayload -EndorsementKeyFile "$path\endorsement_key.pfx"
PS C:\> ...
PS C:\> $payload | Set-HPSecurePlatformPayload

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsecureplatformsigningkeyprovisioningpayload

Creates an HP Secure Platform Management payload to provision a _Signing Key_ key

### Syntax

New-HPSecurePlatformSigningKeyProvisioningPayload \[-EndorsementKeyFile\] <FileInfo> \[\[-EndorsementKeyPassword\] <String>\] \[\[-SigningKeyFile\] <FileInfo>\] \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSecurePlatformSigningKeyProvisioningPayload \[-EndorsementKeyFile\] <FileInfo> \[\[-EndorsementKeyPassword\] <String>\] \[\[-SigningKeyCertificate\] <X509Certificate2>\] \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSecurePlatformSigningKeyProvisioningPayload \[\[-SigningKeyFile\] <FileInfo>\] \[\[-SigningKeyPassword\] <String>\] \[-EndorsementKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSecurePlatformSigningKeyProvisioningPayload \[-EndorsementKeyCertificate\] <X509Certificate2> \[\[-SigningKeyCertificate\] <X509Certificate2>\] \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSecurePlatformSigningKeyProvisioningPayload \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteEndorsementKeyID\] <String> \[\[-RemoteSigningKeyID\] <String>\] \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command creates an HP Secure Platform Management payload to provision a _Signing Key_ key. The purpose of the signing key is to sign commands for the Secure Platform Management. The Signing key is protected by the endorsement key. As a result, the endorsement key private key must be available when provisioning or changing the signing key. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

There are three endorsement options to choose from: - Endorsement Key File (and Password) using -EndorsementKeyFile and -EndorsementKeyPassword parameters - Endorsement Key Certificate using -EndorsementKeyCertificate parameter - Remote Endorsement using -RemoteEndorsementKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the -OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Please note that creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _EndorsementKeyFile_ | `<FileInfo>` | Specifies the _Key Endorsement_ key certificate as a PFX (PKCS #12) file |
| _EndorsementKeyPassword_ | `<String>` | Specifies the password for the _Endorsement Key_ PFX file. If no password was used when the PFX was created (which is not recommended), this parameter may be omitted. |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended), the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _EndorsementKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the endorsement key certificate as an X509Certificate object |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteEndorsementKeyID_ | `<String>` | Specifies the Endorsement Key ID to be used |
| _RemoteSigningKeyID_ | `<String>` | Specifies the Signing Key ID to be provisioned |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Requires HP BIOS with Secure Platform Management support.

### Examples

```
PS C:\> $payload = New-HPSecurePlatformSigningKeyProvisioningPayload -EndorsementKeyFile "$path\endorsement_key.pfx"  `
PS C:\> -SigningKeyFile "$path\signing_key.pfx"
PS C:\> ...
PS C:\> $payload | Set-HPSecurePlatformPayload

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsureadminbiossettingvaluepayload

Creates a payload for authorizing a single BIOS setting change

### Syntax

New-HPSureAdminBIOSSettingValuePayload \[-Name\] <String> \[-Value\] <String> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSureAdminBIOSSettingValuePayload \[-Name\] <String> \[-Value\] <String> \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminBIOSSettingValuePayload \[-Name\] <String> \[-Value\] <String> \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

### Description

This command uses the provided key to sign and authorize a single BIOS setting change. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Name_ | `<String>` | Specifies the name of a setting. Note that the setting name is usually case sensitive. |
| _Value_ | `<String>` | Specifies the new value of a setting |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended),<br />the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _TargetUUID_ | `<Guid>` | Specifies the computer UUID on which to perform this operation. If not specified, the payload generated will used on any computer. |
| _SingleUse_ |  | If specified, the payload cannot be replayed. This happens because the nonce must be higher than ActionsCounter and this counter is updated and incremented every time a command generated with SingleUse flag is accepted by the BIOS.<br />If not specified, the payload can be replayed as many times as desired until a payload generated with a nonce higher than<br />SettingsCounter is received. This happens because SettingsCounter is not incremented by the BIOS when accepting commands. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Managmenet Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP BIOS with HP Sure Admin support is required for applying the payloads generated by this command.

### Examples

```
PS C:\> $payload = New-HPSureAdminBIOSSettingValuePayload -Name "Setting Name" -Value "New Setting Value" -SigningKeyFile "$path\signing_key.pfx"
PS C:\> $payload | Set-HPSecurePlatformPayload

```

```
PS C:\> New-HPSureAdminBIOSSettingValuePayload -Name "Setting Name" -Value "New Setting Value" -SigningKeyFile "$path\signing_key.pfx" -SigningKeyPassword "s3cr3t" -OutputFile PayloadFile.dat
PS C:\> Set-HPSecurePlatformPayload -PayloadFile PayloadFile.dat

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsureadminbiossettingslistpayload

Creates a payload for authorizing multiple BIOS setting changes

### Syntax

New-HPSureAdminBIOSSettingsListPayload \[-InputFile\] <FileInfo> \[-InputFormat\] <String> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[\[-OutputFormat\] <String>\] \[<CommonParameters>\]

New-HPSureAdminBIOSSettingsListPayload \[-InputFile\] <FileInfo> \[-InputFormat\] <String> \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-OutputFile\] <FileInfo>\] \[\[-OutputFormat\] <String>\] \[<CommonParameters>\]

New-HPSureAdminBIOSSettingsListPayload \[-InputFile\] <FileInfo> \[-InputFormat\] <String> \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-OutputFile\] <FileInfo>\] \[\[-OutputFormat\] <String>\] \[<CommonParameters>\]

### Description

This command uses the provided key to sign and authorize multiple BIOS setting changes. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the -OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _InputFile_ | `<FileInfo>` | Specifies the file (relative or absolute) path to process containing one or more BIOS settings |
| _InputFormat_ | `<String>` | Specifies the input file format (XML, JSON, CSV, or BCU) |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended), the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _TargetUUID_ | `<Guid>` | Specifies the computer UUID on which to perform this operation. If not specified, the payload generated will work on any computer. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |
| _OutputFormat_ | `<String>` | Specifies the output file format (default or BCU) |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP BIOS with HP Sure Admin support is required for applying the payloads generated by this command.

### Examples

```
PS C:\> $payload = New-HPSureAdminBIOSSettingsListPayload -SigningKeyFile "$path\signing_key.pfx" -InputFile "settings.BCU" -Format BCU
PS C:\> $payload | Set-HPSecurePlatformPayload

```

```
PS C:\> New-HPSureAdminBIOSSettingsListPayload -SigningKeyFile "$path\signing_key.pfx" -SigningKeyPassword "s3cr3t" -InputFile "settings.BCU" -Format BCU -OutputFile PayloadFile.dat
PS C:\> Set-HPSecurePlatformPayload -PayloadFile PayloadFile.dat

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsureadmindisablepayload

Creates a payload for disabling the HP Sure Admin feature

### Syntax

New-HPSureAdminDisablePayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminDisablePayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminDisablePayload \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command uses the provided key to sign and authorize the operation of disabling HP Sure Admin. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key, as a PFX file. If the PFX file is protected by a password (recommended),<br />the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate, as an X509Certificate object. |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _TargetUUID_ | `<Guid>` | Specifies the computer UUID on which to perform this operation. If not specified the payload generated will work on any computer. |
| _SingleUse_ |  | If specified, the payload cannot be replayed. This happens because the nonce must be higher than ActionsCounter and this counter is updated and incremented every time a command generated with SingleUse flag is accepted by the BIOS.<br />If not specified, the payload can be replayed as many times as desired until a payload generated with a nonce higher than<br />SettingsCounter is received. This happens because SettingsCounter is not incremented by the BIOS when accepting commands. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP BIOS with HP Sure Admin support is required for applying the payloads generated by this command.

### Examples

```
PS C:\> $payload = New-HPSureAdminDisablePayload -SigningKeyFile "$path\signing_key.pfx"
PS C:\> $payload | Set-HPSecurePlatformPayload

```

```
PS C:\> New-HPSureAdminDisablePayload -SigningKeyFile "$path\signing_key.pfx" -SigningKeyPassword "s3cr3t" -OutputFile PayloadFile.dat
PS C:\> Set-HPSecurePlatformPayload -PayloadFile PayloadFile.dat

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsureadminenablepayload

Creates a payload for enabling the HP Sure Admin feature

### Syntax

New-HPSureAdminEnablePayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminEnablePayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminEnablePayload \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command uses the provided key to sign and authorize the operation of enabling HP Sure Admin. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key, as a PFX file. If the PFX file is protected by a password (recommended),<br />the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate, as an X509Certificate object. |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _TargetUUID_ | `<Guid>` | Specifies the computer UUID on which to perform this operation. If not specified the payload generated will work on any computer. |
| _SingleUse_ |  | If specified, the payload cannot be replayed. This happens because the nonce must be higher than ActionsCounter and this counter is updated and incremented every time a command generated with SingleUse flag is accepted by the BIOS.<br />If not specified, the payload can be replayed as many times as desired until a payload generated with a nonce higher than<br />SettingsCounter is received. This happens because SettingsCounter is not incremented by the BIOS when accepting commands. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP BIOS with HP Sure Admin support is required for applying the payloads generated by this command.

### Examples

```
PS C:\> $payload = New-HPSureAdminEnablePayload -SigningKeyFile "$path\signing_key.pfx"
PS C:\> $payload | Set-HPSecurePlatformPayload

```

```
PS C:\> New-HPSureAdminEnablePayload -SigningKeyFile "$path\signing_key.pfx" -SigningKeyPassword "s3cr3t" -OutputFile PayloadFile.dat
PS C:\> Set-HPSecurePlatformPayload -PayloadFile PayloadFile.dat

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsureadminfirmwareupdatepayload

Creates a payload for authorizing a firmware update

### Syntax

New-HPSureAdminFirmwareUpdatePayload \[-File\] <FileInfo> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[\[-Quiet\]\] \[\[-Bitlocker\] <String>\] \[\[-Force\]\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSureAdminFirmwareUpdatePayload \[-File\] <FileInfo> \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[\[-Quiet\]\] \[\[-Bitlocker\] <String>\] \[\[-Force\]\] \[<CommonParameters>\]

New-HPSureAdminFirmwareUpdatePayload \[-File\] <FileInfo> \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[\[-OutputFile\] <FileInfo>\] \[\[-Quiet\]\] \[\[-Bitlocker\] <String>\] \[\[-Force\]\] \[<CommonParameters>\]

### Description

This command uses the provided key to sign and authorize a firmware update only to the specified file. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Update-HPFirmware command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Update-HPFirmware command.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _File_ | `<FileInfo>` | Specifies the firmware update binary (.BIN) file |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended),<br />the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _TargetUUID_ | `<Guid>` | Specifies the computer UUID on which to perform this operation. If not specified the payload generated will work on any computer. |
| _SingleUse_ |  | If specified, the payload cannot be replayed. This happens because the nonce must be higher than ActionsCounter and this counter is updated and incremented every time a command generated with SingleUse flag is accepted by the BIOS.<br />If not specified, the payload can be replayed as many times as desired until a payload generated with a nonce higher than<br />SettingsCounter is received. This happens because SettingsCounter is not incremented by the BIOS when accepting commands. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _Quiet_ |  | If specified, this command will suppress non-essential messages during execution. |
| _Bitlocker_ | `<String>` | Specifies the behavior to the BitLocker check prompt (if any). The value must be one of the following values:<br />\- stop: (default option) stops execution if BitLocker is detected but not suspended, and prompts<br />\- ignore: skips the BitLocker check<br />\- suspend: suspends BitLocker if active and continues with execution |
| _Force_ |  | If specified, this command will force the BIOS update even if the target BIOS is already installed. |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP BIOS with HP Sure Admin support is required for applying the payloads generated by this command.

### Examples

```
PS C:\> New-HPSureAdminFirmwareUpdatePayload -File bios.bin -SigningKeyFile "$path\signing_key.pfx" -SigningKeyPassword "s3cr3t" -OutputFile PayloadFile.dat
PS C:\> Update-HPFirmware -File bios.bin -PayloadFile PayloadFile.dat

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsureadminlocalaccesskeyprovisioningpayload

Creates a payload for provisioning a local access key

### Syntax

New-HPSureAdminLocalAccessKeyProvisioningPayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[-LocalAccessKeyFile\] <FileInfo> \[\[-LocalAccessKeyPassword\] <String>\] \[\[-Id\] <Int32>\] \[\[-KeyEnrollmentData\] <String>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminLocalAccessKeyProvisioningPayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[-LocalAccessKeyFile\] <FileInfo> \[\[-LocalAccessKeyPassword\] <String>\] \[\[-Id\] <Int32>\] \[\[-KeyEnrollmentData\] <String>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminLocalAccessKeyProvisioningPayload \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-SingleUse\]\] \[-LocalAccessKeyFile\] <FileInfo> \[\[-LocalAccessKeyPassword\] <String>\] \[\[-Id\] <Int32>\] \[\[-KeyEnrollmentData\] <String>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command uses the provided key to sign and authorize updating HP Sure Admin local access keys. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

Setting a local access key allows system administrators to authorize commands locally with the HP Sure Admin phone app. Reference the Convert-HPSureAdminCertToQRCode command to learn more about how to transfer a local access key to the HP Sure Admin phone app.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended),<br />the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _TargetUUID_ | `<Guid>` | Specifies the computer UUID on which to perform this operation. If not specified, the payload generated will work on any computer. |
| _SingleUse_ |  | If specified, the payload cannot be replayed. This happens because the nonce must be higher than ActionsCounter and this counter is updated and incremented every time a command generated with SingleUse flag is accepted by the BIOS.<br />If not specified, the payload can be replayed as many times as desired until a payload generated with a nonce higher than<br />SettingsCounter is received. This happens because SettingsCounter is not incremented by the BIOS when accepting commands. |
| _LocalAccessKeyFile_ | `<FileInfo>` | Specifies the path to the local access key as a PFX file. If the PFX file is protected by a password (recommended),<br />the LocalAccessKeyPassword parameter should also be provided. |
| _LocalAccessKeyPassword_ | `<String>` | Specifies the local access key file password, if required |
| _Id_ | Int32\_TYPE\_PLACEHOLDER | Specifies the Int Id from 1,2, or 3 that gets appended to the setting name |
| _KeyEnrollmentData_ | `<String>` | Specifies the KeyEnrollmentData to use to get Sure Admin Local Access key from certificate |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP BIOS with HP Sure Admin support is required for applying the payloads generated by this command.

### Examples

```
PS C:\> $payload = New-HPSureAdminLocalAccessKeyProvisioningPayload -SigningKeyFile "$path\signing_key.pfx" -LocalAccessKeyFile "$path\local_access_key.pfx"
PS C:\> $payload | Set-HPSecurePlatformPayload

```

```
PS C:\> New-HPSureAdminLocalAccessKeyProvisioningPayload -SigningKeyFile "$path\signing_key.pfx" -SigningKeyPassword "s3cr3t" -LocalAccessKeyFile "$path\local_access_key.pfx" -LocalAccessKeyPassword "lak_s3cr3t" -OutputFile PayloadFile.dat
PS C:\> Set-HPSecurePlatformPayload -PayloadFile PayloadFile.dat

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsureadminsettingdefaultspayload

Creates a payload for resetting BIOS settings to default values

### Syntax

New-HPSureAdminSettingDefaultsPayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminSettingDefaultsPayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureAdminSettingDefaultsPayload \[\[-Nonce\] <UInt32>\] \[\[-TargetUUID\] <Guid>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command uses the provided key to sign and authorize resetting BIOS settings to default values. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key, as a PFX file. If the PFX file is protected by a password (recommended),<br />the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _TargetUUID_ | `<Guid>` | Specifies the computer UUID on which to perform this operation. If not specified the payload generated will work on any computer. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP BIOS with HP Sure Admin support is required for applying the payloads generated by this command.

### Examples

```
PS C:\> $payload = New-HPSureAdminSettingDefaultsPayload -SigningKeyFile "$path\signing_key.pfx"
PS C:\> $payload | Set-HPSecurePlatformPayload

```

```
PS C:\> New-HPSureAdminSettingDefaultsPayload -SigningKeyFile "$path\signing_key.pfx" -SigningKeyPassword "s3cr3t" -OutputFile PayloadFile.dat
PS C:\> Set-HPSecurePlatformPayload -PayloadFile PayloadFile.dat

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsurerecoverconfigurationpayload

Creates a payload to configure HP Sure Recover

### Syntax

New-HPSureRecoverConfigurationPayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[-BIOSFlags\] {None | NetworkBasedRecovery | WiFi | PartitionRecovery | SecureStorage | SecureEraseUnit | RollbackPrevention} \[-AgentFlags\] {None | DRDVD | CorporateReadyWithoutOffice | CorporateReadyWithOffice | InstallManageabilitySuite | InstallSecuritySuite | RollbackPrevention | EnableOSUpgrade} \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverConfigurationPayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[-BIOSFlags\] {None | NetworkBasedRecovery | WiFi | PartitionRecovery | SecureStorage | SecureEraseUnit | RollbackPrevention} \[-AgentFlags\] {None | DRDVD | CorporateReadyWithoutOffice | CorporateReadyWithOffice | InstallManageabilitySuite | InstallSecuritySuite | RollbackPrevention | EnableOSUpgrade} \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverConfigurationPayload \[\[-Nonce\] <UInt32>\] \[-BIOSFlags\] {None | NetworkBasedRecovery | WiFi | PartitionRecovery | SecureStorage | SecureEraseUnit | RollbackPrevention} \[-AgentFlags\] {None | DRDVD | CorporateReadyWithoutOffice | CorporateReadyWithOffice | InstallManageabilitySuite | InstallSecuritySuite | RollbackPrevention | EnableOSUpgrade} \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command create a payload to configure HP Sure Recover. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended), the SigningKeyPassword parameter should also be provided. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _BIOSFlags_ | surerecover\_os\_`<flags>` | Specifies the imaging flags to set. Please note that this parameter was previously named OSImageFlags.<br />None = 0<br />NetworkBasedRecovery = 1 => Enable network based recovery<br />WiFi = 2 => Enable WiFi<br />PartitionRecovery = 4 => Enable partition based recovery<br />SecureStorage = 8 => Enable recovery from secure storage device<br />SecureEraseUnit = 16 => Secure Erase Unit before recovery<br />RollbackPrevention = 64 => Enforce rollback prevention |
| _AgentFlags_ | surerecover\_re\_flags\_no\_`<reserved>` | Specifies the agent flags to set:<br />None = 0 => OEM OS release with in-box drivers<br />DRDVD = 1 => OEM OS release with optimized drivers<br />CorporateReadyWithoutOffice = 2 => Corporate ready without office<br />CorporateReadyWithOffice = 4 => Corporate ready with office<br />InstallManageabilitySuite = 16 => Install current components of the Manageability Suite included on the DRDVD<br />InstallSecuritySuite = 32 => Install current components of the Security Suite included on the DRDVD<br />RollbackPrevention = 64 => Enforce rollback prevention<br />EnableOSUpgrade = 256 => Enable OS upgrade with appropriate DPK<br />Please note that the Image Type AgentFlags DRDVD, CorporateReadyWithOffice, and CorporateReadyWithoutOffice are mutually exclusive. If you choose to set an Image type flag, you can only set one of the three flags. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipelineing output to the specified file, instead of writing it to the pipeline. |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Requires HP BIOS with HP Sure Recover support

### Examples

```
PS C:\> New-HPSureRecoverConfigurationPayload -SigningKeyFile sk.pfx -BIOSFlags WiFi -AgentFlags DRDVD

```

```
PS C:\> New-HPSureRecoverConfigurationPayload -SigningKeyFile sk.pfx -BIOSFlags WiFi,SecureStorage -AgentFlags DRDVD,RollbackPrevention

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)
*   [Blog post: Provisioning and Configuring HP Sure Recover with HP Client Management Script Library](/hp-client-management/blog/provisioning-and-configuring-hp-sure-recover-hp-client-management-script-library)

---

### New-Hpsurerecoverdeprovisionpayload

Creates a payload to deprovision HP Sure Recover

### Syntax

New-HPSureRecoverDeprovisionPayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-RemoveOnly\] {AgentProvisioning | OSImageProvisioning | ConfigurationData | TriggerRecoveryData | ScheduleRecoveryData}\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverDeprovisionPayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-RemoveOnly\] {AgentProvisioning | OSImageProvisioning | ConfigurationData | TriggerRecoveryData | ScheduleRecoveryData}\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverDeprovisionPayload \[\[-Nonce\] <UInt32>\] \[\[-RemoveOnly\] {AgentProvisioning | OSImageProvisioning | ConfigurationData | TriggerRecoveryData | ScheduleRecoveryData}\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command creates a payload to deprovision the HP Sure Recover feature. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended), the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object. |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _RemoveOnly_ | DeprovisioningTarget\[\]\_TYPE\_PLACEHOLDER | This parameter allows deprovisioning only specific parts of the Sure Recover subsystem. If not specified, the entire SureRecover is deprovisoned. Possible values are one or more of the following:<br />\- AgentProvisioning - remove the Agent provisioning<br />\- OSImageProvisioning - remove the OS Image provisioning<br />\- ConfigurationData - remove HP SureRecover configuration data<br />\- TriggerRecoveryData - remove the HP Sure Recover trigger definition<br />\- ScheduleRecoveryData - remove the HP Sure Recover schedule definition |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipelineing output to the specified file, instead of writing it to the pipeline. |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Requires HP BIOS with HP Sure Recover support

### Examples

```
PS C:\> New-HPSureRecoverDeprovisionPayload -SigningKeyFile sk.pfx

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)
*   [Blog post: Provisioning and Configuring HP Sure Recover with HP Client Management Script Library](/hp-client-management/blog/provisioning-and-configuring-hp-sure-recover-hp-client-management-script-library)

---

### New-Hpsurerecoverfailoverconfigurationpayload

Creates a payload to configure HP Sure Recover OS or Recovery image failover

### Syntax

New-HPSureRecoverFailoverConfigurationPayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Image\] <String>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[-Url\] <Uri> \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverFailoverConfigurationPayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Image\] <String>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[-Url\] <Uri> \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverFailoverConfigurationPayload \[\[-Image\] <String>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[-Url\] <Uri> \[\[-Nonce\] <UInt32>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command creates a payload to configure HP Sure Recover OS or Recovery image failover. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key, as a PFX file. If the PFX file is protected by a password (recommended),<br />the SigningKeyPassword parameter should also be provided. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _Image_ | `<String>` | Specifies whether this command will create a configuration payload for a Recovery Agent image or a Recovery OS image. For now, only 'os' is supported. |
| _Version_ | UInt16\_TYPE\_PLACEHOLDER | Specifies the operation version. Each new configuration payload must increment the last operation payload version, as available in the Get-HPSureRecoverFailoverConfiguration. If this parameter is not provided, this command will read from current system and increment it automatically. |
| _Username_ | `<String>` | Specifies the username for accessing the url specified in the Url parameter, if any. |
| _Password_ | `<String>` | Specifies the password for accessing the url specified in the Url parameter, if any. |
| _Url_ | `<Uri>` | Specifies the URL from where to download the image. An empty URL can be specified to deprovision Failover. |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipelineing output to the specified file, instead of writing it to the pipeline. |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Requires HP BIOS with HP Sure Recover support

### Examples

```
PS C:\> New-HPSureRecoverFailoverConfigurationPayload -SigningKeyFile sk.pfx -Version 1 -Url ''

```

```
PS C:\> New-HPSureRecoverFailoverConfigurationPayload -SigningKeyFile sk.pfx -Image os -Version 1 -Nonce 2 -Url 'http://url.com/' -Username 'user' -Password 123

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### New-Hpsurerecoverimageconfigurationpayload

Creates a payload to configure the HP Sure Recover OS or Recovery image

### Syntax

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[-PublicKeyFile\] <FileInfo> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-PublicKeyFile\] <FileInfo> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-PublicKey\] <Byte\[\]> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-ImageCertificateFile\] <FileInfo> \[\[-ImageCertificatePassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-ImageCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-SigningKeyCertificate\] <X509Certificate2> \[-PublicKeyFile\] <FileInfo> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-SigningKeyCertificate\] <X509Certificate2> \[-PublicKey\] <Byte\[\]> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[-PublicKey\] <Byte\[\]> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-SigningKeyCertificate\] <X509Certificate2> \[-ImageCertificateFile\] <FileInfo> \[\[-ImageCertificatePassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[-ImageCertificateFile\] <FileInfo> \[\[-ImageCertificatePassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-SigningKeyCertificate\] <X509Certificate2> \[-ImageCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverImageConfigurationPayload \[-Image\] <String> \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[-ImageCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[\[-Version\] <UInt16>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-Url\] <Uri>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

### Description

This command creates a payload to configure a custom HP Sure Recover OS or Recovery image. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Image_ | `<String>` | Specifies whether this command will create a configuration payload for a Recovery Agent image or a Recovery OS image. The value must be either 'agent' or 'os'. |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended), the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object |
| _ImageCertificateFile_ | `<FileInfo>` | Specifies the path to the image signing certificate as a PFX file. If the PFX file is protected by a password (recommended), the ImageCertificatePassword parameter should also be provided. Depending on the Image switch, this will be either the signing key file for the Agent or the OS image.<br />ImageCertificateFile and PublicKeyFile are mutually exclusive. |
| _ImageCertificatePassword_ | `<String>` | Specifies the image signing key file password, if required |
| _ImageCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the image signing key certificate as an X509Certificate object. Depending on the Image parameter, this value will be either the signing key certificate for the Agent or the OS image. |
| _PublicKeyFile_ | `<FileInfo>` | Specifies the image signing key as the path to a base64-encoded RSA key (a PEM file).<br />ImageCertificateFile and PublicKeyFile are mutually exclusive. |
| _PublicKey_ | Byte\[\]\_TYPE\_PLACEHOLDER | Specifies the image signing key as an array of bytes, including modulus and exponent.<br />This option is currently reserved for internal use. |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _Version_ | UInt16\_TYPE\_PLACEHOLDER | Specifies the operation version. Each new configuration payload must increment the last operation payload version, as available in the public WMI setting 'OS Recovery Image Provisioning Version'. If this parameter is not provided, this command will read the public wmi setting and increment it automatically. |
| _Username_ | `<String>` | Specifies the username for accessing the url specified in the Url parameter, if any. |
| _Password_ | `<String>` | Specifies the password for accessing the url specified in the Url parameter, if any. |
| _Url_ | `<Uri>` | Specifies the url from where to download the image. If not specified, the default HP.COM location will be used. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipeline |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Requires HP BIOS with HP Sure Recover support

### Examples

```
PS C:\> $payload = New-HPSureRecoverImageConfigurationPayload -SigningKeyFile "$path\signing_key.pfx" -Image OS -ImageKeyFile  `
PS C:\> "$path\os.pfx" -username my_http_user -password `s3cr3t`  -url "http://my.company.com"
PS C:\> ...
PS C:\> $payload | Set-HPSecurePlatformPayload

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)
*   [Blog post: Provisioning and Configuring HP Sure Recover with HP Client Management Script Library](/hp-client-management/blog/provisioning-and-configuring-hp-sure-recover-hp-client-management-script-library)

---

### New-Hpsurerecoverschedulepayload

Creates a payload to configure the HP Sure Recover schedule

### Syntax

New-HPSureRecoverSchedulePayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[-DayOfWeek\] {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | EveryWeek} \[-Hour\] <UInt32> \[-Minute\] <UInt32> \[-WindowSize\] <UInt32> \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverSchedulePayload \[-SigningKeyFile\] <FileInfo> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[-Disable\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverSchedulePayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[-Disable\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverSchedulePayload \[-SigningKeyCertificate\] <X509Certificate2> \[\[-Nonce\] <UInt32>\] \[-DayOfWeek\] {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | EveryWeek} \[-Hour\] <UInt32> \[-Minute\] <UInt32> \[-WindowSize\] <UInt32> \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverSchedulePayload \[\[-Nonce\] <UInt32>\] \[-Disable\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSureRecoverSchedulePayload \[\[-Nonce\] <UInt32>\] \[-DayOfWeek\] {Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | EveryWeek} \[-Hour\] <UInt32> \[-Minute\] <UInt32> \[-WindowSize\] <UInt32> \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command creates a payload to configure a HP Sure Recover schedule. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<FileInfo>` | Specifies the path to the Secure Platform Management signing key, as a PFX file. If the PFX file is protected by a password (recommended),<br />the SigningKeyPassword parameter should also be provided. |
| _SigningKeyCertificate_ | X509Certificate2\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate, as an X509Certificate object. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _DayOfWeek_ | surerecover\_day\_of\_`<week>` | Specifies the day of the week for the schedule |
| _Hour_ | UInt32\_TYPE\_PLACEHOLDER | Specifies the hour value for the schedule |
| _Minute_ | UInt32\_TYPE\_PLACEHOLDER | Specifies the minute of the schedule |
| _WindowSize_ | UInt32\_TYPE\_PLACEHOLDER | Specifies the windows size for the schedule activation in minutes, in case the exact configured schedule is<br />missed. By default, the window is zero. The value may not be larger than 240 minutes (4 hours). |
| _Disable_ |  | If specified, this command creates a payload to disable HP Sure Recover schedule. |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipelineing output to the specified file, instead of writing it to the pipeline. |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Requires HP BIOS with HP Sure Recover support

### Examples

```
PS C:\> New-HPSureRecoverSchedulePayload -SigningKeyFile sk.pfx -DayOfWeek Sunday -Hour 2

```

```
PS C:\> New-HPSureRecoverSchedulePayload -SigningKeyFile sk.pfx -Disable

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)
*   [Blog post: Provisioning and Configuring HP Sure Recover with HP Client Management Script Library](/hp-client-management/blog/provisioning-and-configuring-hp-sure-recover-hp-client-management-script-library)

---

### New-Hpsurerecovertriggerrecoverypayload

Creates a payload to trigger HP Sure Recover events

### Syntax

New-HPSureRecoverTriggerRecoveryPayload \[-SigningKeyFile\] <String> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[\[-Set\]\] \[\[-ForceAfterReboot\] <Byte>\] \[\[-PromptPolicy\] {None | PromptBeforeRecovery | PromptOnError | PromptAfterRecover}\] \[\[-ErasePolicy\] {None | EraseSecureStorage | EraseSystemDrives}\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverTriggerRecoveryPayload \[-SigningKeyFile\] <String> \[\[-SigningKeyPassword\] <String>\] \[\[-Nonce\] <UInt32>\] \[-Cancel\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverTriggerRecoveryPayload \[-SigningKeyCertificate\] <Byte\[\]> \[\[-Nonce\] <UInt32>\] \[-Cancel\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverTriggerRecoveryPayload \[-SigningKeyCertificate\] <Byte\[\]> \[\[-Nonce\] <UInt32>\] \[\[-Set\]\] \[\[-ForceAfterReboot\] <Byte>\] \[\[-PromptPolicy\] {None | PromptBeforeRecovery | PromptOnError | PromptAfterRecover}\] \[\[-ErasePolicy\] {None | EraseSecureStorage | EraseSystemDrives}\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

New-HPSureRecoverTriggerRecoveryPayload \[\[-Nonce\] <UInt32>\] \[-Cancel\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

New-HPSureRecoverTriggerRecoveryPayload \[\[-Nonce\] <UInt32>\] \[\[-Set\]\] \[\[-ForceAfterReboot\] <Byte>\] \[\[-PromptPolicy\] {None | PromptBeforeRecovery | PromptOnError | PromptAfterRecover}\] \[\[-ErasePolicy\] {None | EraseSecureStorage | EraseSystemDrives}\] \[\[-OutputFile\] <FileInfo>\] \[-RemoteSigningServiceKeyID\] <String> \[-RemoteSigningServiceURL\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command creates a payload to trigger HP Sure Recover. There are three signing options to choose from: - Signing Key File (and Password) using -SigningKeyFile and -SigningKeyPassword parameters - Signing Key Certificate using -SigningKeyCertificate parameter - Remote Signing using -RemoteSigningServiceKeyID and -RemoteSigningServiceURL parameters

Please note that using a Key File with Password in PFX format is recommended over using an X509 Certificate object because a private key in a certificate is not password protected.

This command writes the created payload to the pipeline or to the file specified in the OutputFile parameter. This payload can then be passed to the Set-HPSecurePlatformPayload command.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyFile_ | `<String>` | Specifies the path to the Secure Platform Management signing key as a PFX file. If the PFX file is protected by a password (recommended), the SigningKeyPassword parameter should also be provided. |
| _SigningKeyPassword_ | `<String>` | Specifies the Secure Platform Management signing key file password, if required. |
| _SigningKeyCertificate_ | Byte\[\]\_TYPE\_PLACEHOLDER | Specifies the Secure Platform Management signing key certificate as an X509Certificate object |
| _Nonce_ | UInt32\_TYPE\_PLACEHOLDER | Specifies a Nonce. If nonce is specified, the Secure Platform Management subsystem will only accept commands with a nonce greater or equal to the last nonce sent. This approach helps to prevent replay attacks. If not specified, the nonce is inferred from the current local time. The current local time as the nonce works in most cases. However, this approach has a resolution of seconds, so when performing parallel operations or a high volume of operations, it is possible for the same counter to<br />be interpreted for more than one command. In these cases, the caller should use its own nonce derivation and provide it through this parameter. |
| _Set_ |  | If specified, this command sets the trigger information. This parameter is used by default and optional. |
| _Cancel_ |  | If specified, this command clears any existing trigger definition. |
| _ForceAfterReboot_ | `<Byte>` | Specifies how many reboots to count before applying the trigger. If not specified, the value defaults to 1 (next reboot). |
| _PromptPolicy_ | surerecover\_prompt\_`<policy>` | Specifies the prompting policy. If not specified, it will default to prompt before recovery, and on error. |
| _ErasePolicy_ | surerecover\_erase\_`<policy>` | Specifies the erase policy for the imaging process |
| _OutputFile_ | `<FileInfo>` | Specifies the file to write output to instead of writing the output to the pipelineing output to the specified file, instead of writing it to the pipeline. |
| _RemoteSigningServiceKeyID_ | `<String>` | Specifies the Signing Key ID to be used |
| _RemoteSigningServiceURL_ | `<String>` | Specifies the (Key Management Service) KMS server URL (I.e.: https://.azurewebsites.net/) |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Requires HP BIOS with HP Sure Recover support

### Examples

```
PS C:\> New-HPSureRecoverTriggerRecoveryPayload -SigningKeyFile sk.pfx

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)
*   [Blog post: Provisioning and Configuring HP Sure Recover with HP Client Management Script Library](/hp-client-management/blog/provisioning-and-configuring-hp-sure-recover-hp-client-management-script-library)

---

### Remove-Hpsureadmindevicepermissions

Removes a device permission from the HP Sure Admin Key Management Service (KMS)

### Syntax

Remove-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Remove-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command removes a device permission from the HP Sure Admin Key Management Service (KMS). Device permissions allow IT administrators to manage local access of specific devices without having to provision a unique LAK key for each device. This command removes the permissions set for the device specified via its serial number from KMS. The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the permissions (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _SerialNumber_ | `<String>` | Specifies the serial number that identifies the device |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   Supported on Windows Power Shell v7.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Remove-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName"

```

```
PS C:\> Remove-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName" -CacheAccessToken

```

---

### Remove-Hpsureadminendorsementkeyfromkms

Removes an endorsement key from HP Sure Admin Key Management Service (KMS)

### Syntax

Remove-HPSureAdminEndorsementKeyFromKMS \[-EndorsementKeyId\] <String> \[-KMSAppName\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Remove-HPSureAdminEndorsementKeyFromKMS \[-EndorsementKeyId\] <String> \[-KMSUri\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command sends a HTTP request to remove the endorsement key from the HP Sure Admin Key Management Service (KMS). The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _EndorsementKeyId_ | `<String>` | Specifies the key id encoded in base64 that is used in the server to locate the key.<br />Use the Get-HPSureAdminKeyId command to extract the key id from a pfx certificate. |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the key (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Remove-HPSureAdminEndorsementKeyFromKMS -EndorsementKeyId "<IdInBase64>" -KMSUri "https://MyKMSURI.azurewebsites.net/"

```

---

### Remove-Hpsureadminsigningkeyfromkms

Removes a signing key from HP Sure Admin Key Management Service (KMS)

### Syntax

Remove-HPSureAdminSigningKeyFromKMS \[-SigningKeyId\] <String> \[-KMSAppName\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Remove-HPSureAdminSigningKeyFromKMS \[-SigningKeyId\] <String> \[-KMSUri\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

This command sends a HTTP request to remove the signing key from the HP Sure Admin Key Management Service (KMS). The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SigningKeyId_ | `<String>` | Specifies the key id encoded in base64 that is used in the server to locate the key.<br />Use the Get-HPSureAdminKeyId command to extract the key id from a pfx certificate. |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the key (i.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Remove-HPSureAdminSigningKeyFromKMS -SigningKeyId "<IdInBase64>" -KMSUri "https://MyKMSURI.azurewebsites.net/"

```

---

### Search-Hpsureadmindevicepermissions

Searches device permissions on HP Sure Admin Key Management Service (KMS)

### Syntax

Search-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-SerialNumber\] <String> \[-CacheAccessToken\] \[<CommonParameters>\]

Search-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[\[-SerialNumber\] <String>\] \[-UserEmail\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Search-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[\[-SerialNumber\] <String>\] \[-AADGroup\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Search-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[\[-SerialNumber\] <String>\] \[-AADGroup\] <String> \[-UserEmail\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Search-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-SerialNumber\] <String> \[-CacheAccessToken\] \[<CommonParameters>\]

Search-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[\[-SerialNumber\] <String>\] \[-UserEmail\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Search-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[\[-SerialNumber\] <String>\] \[-AADGroup\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Search-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[\[-SerialNumber\] <String>\] \[-AADGroup\] <String> \[-UserEmail\] <String> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

Device permissions allow IT administrators to manage local access of specific devices without having to provision a unique LAK key for each one. This command retrieves from KMS the permissions set for the specified device serial number. The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the permissions (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _SerialNumber_ | `<String>` | Specifies the serial number that identifies the device |
| _AADGroup_ | `<String>` | Specifies the group name in Azure Active Directory that will have access to the key |
| _UserEmail_ | `<String>` | Specifies the user email in Azure Active Directory that will have access to the key |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   Supported on Windows Power Shell v7.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Search-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName"

```

```
PS C:\> Search-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName" -CacheAccessToken

```

---

### Send-Hpsureadminlocalaccesskeytokms

Sends a local access key in PFX format to HP Sure Admin Key Management Service (KMS)

### Syntax

Send-HPSureAdminLocalAccessKeyToKMS \[-LocalAccessKeyFile\] <FileInfo> \[\[-LocalAccessKeyPassword\] <String>\] \[-KMSAppName\] <String> \[-AADGroup\] <String> \[\[-CacheAccessToken\]\] \[\[-KeyName\] <String>\] \[<CommonParameters>\]

Send-HPSureAdminLocalAccessKeyToKMS \[-LocalAccessKeyFile\] <FileInfo> \[\[-LocalAccessKeyPassword\] <String>\] \[-KMSUri\] <String> \[-AADGroup\] <String> \[\[-CacheAccessToken\]\] \[\[-KeyName\] <String>\] \[<CommonParameters>\]

### Description

This command extracts a private key from the provided certificate file, generates a JSON for the central-managed enrollment process, and sends it to the HP Sure Admin Key Management Service (KMS). The connection with the KMS server requires the user to authenticate with a valid Microsoft account.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _LocalAccessKeyFile_ | `<FileInfo>` | Specifies the path to the local access key, as a PFX file. If the PFX file is protected by a password (recommended),<br />the LocalAccessKeyPassword parameter should also be provided. |
| _LocalAccessKeyPassword_ | `<String>` | Specifies the local access key file password, if required. |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the key (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _AADGroup_ | `<String>` | Specifies the group name in Azure Active Directory that will have access to the key |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |
| _KeyName_ | `<String>` | Specifies the key name to identify the certificate. If not specified, it will use the certificate subject. |

### Notes

*   Supported on Windows Power Shell v5.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Send-HPSureAdminLocalAccessKeyToKMS -LocalAccessKeyFile "$path\signing_key.pfx" -KMSUri "https://MyKMSURI.azurewebsites.net/" -AADGroup "MyAADGroupName"

```

```
PS C:\> Send-HPSureAdminLocalAccessKeyToKMS -LocalAccessKeyFile "$path\signing_key.pfx" -LocalAccessKeyPassword "pass" -KMSAppName "MyAppName" -AADGroup "MyAADGroupName"

```

---

### Set-Hpfirmwarebootlogo

Sets the logo on reboot

### Syntax

Set-HPFirmwareBootLogo \[-File\] <String> \[\[-Password\] <String>\] \[<CommonParameters>\]

### Description

This command sets the boot logo that is seen after computer POST and before the OS takes over. The default logo is the HP logo, but companies may wish to customize it with their own enterprise or workgroup logo.

Please note that the file format has specific restrictions. See the -File parameter for more information.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _File_ | `<String>` | Specifies the file to use as the logo. The file must follow the below restrictions:<br />1\. Must be JPEG<br />2\. Resolution may not be higher than 1024x768<br />3\. File size may not be larger than 32751 bytes. |
| _Password_ | `<String>` | Specifies the BIOS setup password, if any |

### Notes

*   Not currently supported in Windows PE.
*   Requires HP BIOS
*   This command requires elevated privileges.
*   Due to a BIOS limitation, this command will not succeed if HP Sure Admin is enabled.

### Examples

```
PS C:\> Set-HPFirmwareBootLogo -file myfile.jpg

```

### See also

*   [Clear-HPFirmwareBootLogo](https://developers.hp.com/hp-client-management/doc/Clear-HPFirmwareBootLogo)
*   [Get-HPFirmwareBootLogoIsActive](https://developers.hp.com/hp-client-management/doc/Get-HPFirmwareBootLogoIsActive)

---

### Set-Hpsecureplatformpayload

Applies a payload to HP Secure Platform Management

### Syntax

Set-HPSecurePlatformPayload \[-Payload\] <String> \[<CommonParameters>\]

Set-HPSecurePlatformPayload \[-PayloadFile\] <FileInfo> \[<CommonParameters>\]

### Description

This command applies a properly encoded payload created by one of the New-HPSecurePlatform\*, New-HPSureRun\*, New-HPSureAdmin\*, or New-HPSureRecover\* commands to the BIOS.

Payloads created by means other than the commands mentioned above are not supported.

Security note: Payloads should only be created on secure servers. Once created, the payload may be transferred to a client and applied via the Set-HPSecurePlatformPayload command. Creating the payload and passing it to the Set-HPSecurePlatformPayload command via the pipeline is not a recommended production pattern.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Payload_ | `<String>` | Specifies the payload to apply. This parameter can also be specified via the pipeline. |
| _PayloadFile_ | `<FileInfo>` | Specifies the payload file to apply. This file must contain a properly encoded payload. |

### Notes

*   Requires HP BIOS with Secure Platform Management support.
*   This command requires elevated privileges.

### Examples

```
PS C:\> Set-HPSecurePlatformPayload -Payload $payload

```

```
PS C:\> Set-HPSecurePlatformPayload -PayloadFile .\payload.dat

```

```
PS C:\> $payload | Set-HPSecurePlatformPayload

```

### See also

*   [Blog post: HP Secure Platform Management with the HP Client Management Script Library](/hp-client-management/blog/hp-secure-platform-management-hp-client-management-script-library)

---

### Set-Hpsureadmindevicepermissions

Sets one or multiple device permissions on the HP Sure Admin Key Management Service (KMS)

### Syntax

Set-HPSureAdminDevicePermissions \[-KMSUri\] <String> \[-JsonFile\] <FileInfo> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

Set-HPSureAdminDevicePermissions \[-KMSAppName\] <String> \[-JsonFile\] <FileInfo> \[\[-CacheAccessToken\]\] \[<CommonParameters>\]

### Description

Device permissions allow IT administrators to manage local access of specific devices without having to provision a unique LAK key for each one. This command sends an HTTP request for mapping a device serial number to a user email, or to an AAD group. The connection with the KMS server requires the user to authenticate with a valid Microsoft account. Existing mappings are modified by the last configuration uploaded.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _KMSUri_ | `<String>` | Specifies the complete URI for uploading the permissions (I.e.: https://.azurewebsites.net/). This URL must be HTTPS. |
| _KMSAppName_ | `<String>` | Specifies the application name on Azure KMS server that will be used to compose the URI for uploading the key |
| _JsonFile_ | `<FileInfo>` | Specifies the path to the Json file containing multiple device permissions. JSON file must be structured as follows:<br />\[{"deviceId":"XYZ321","userEmailAddress":"user@kms.onmicrosoft.com","adGroupName":""},<br />{"deviceId":"XYZ123","userEmailAddress":"user@kms.onmicrosoft.com"},<br />{"deviceId":"ZYX321","adGroupName":"admins"},<br />{"deviceId":"ABC000","userEmailAddress":"user@kms.onmicrosoft.com","adGroupName":"admins"}\] |
| _CacheAccessToken_ |  | If specified, the access token is cached in msalcache.dat file and user credentials will not be asked again until the credentials expire.<br />This parameter should be specified for caching the access token when performing multiple operations on the KMS server.<br />If access token is not cached, the user must re-enter credentials on each call of this command. |

### Notes

*   Supported on Windows Power Shell v5.
*   Supported on Windows Power Shell v7.
*   An HP Sure Admin KMS server is required for using this feature.

### Examples

```
PS C:\> Set-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSAppName "MyAppName" -UserEmail "myuser@myappname.onmicrosoft.com"

```

```
PS C:\> Set-HPSureAdminDevicePermissions -SerialNumber "XYZ123" -KMSUri "https://MyKMSURI.azurewebsites.net/" -AADGroup "MyAADGroupName"

```

```
PS C:\> Set-HPSureAdminDevicePermissions -JsonFile MyJsonFile.json -KMSAppName "MyAppName" -CacheAccessToken

```

---

### Set-Hpsureviewstate

Sets HP Sure View state

### Syntax

Set-HPSureViewState \[-On\] \[\[-Level\] <Int32>\] \[<CommonParameters>\]

Set-HPSureViewState \[-Off\] \[<CommonParameters>\]

### Description

This command turns HP Sure View on and off and controls settings associated with HP Sure View.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _On_ |  | If specified, this command turns HP Sure View on. |
| _Off_ |  | If specified, this command turns HP Sure View off. |
| _Level_ | Int32\_TYPE\_PLACEHOLDER | Specifies the privacy level, as an integer between 0 and 100, if turning HP Sure View on. A privacy level of 100 will provide the most privacy, but it would also reduce the screen brightness the most.<br />If this parameter is not specified, turning HP Sure View on will default the privacy level to the maximum privacy level. |

### Notes

To force HP Sure View on or off, you can set the public WMI setting 'Force Enable HP Sure View' to Enable or Disable, as needed.

### Examples

```
PS C:\> Set-HPSureViewState -on -level 80

```

```
PS C:\> Set-HPSureViewState -off

```

### See also

*   [Test-HPSureViewIsSupported](https://developers.hp.com/hp-client-management/doc/Test-HPSureViewIsSupported)
*   [Get-HPSureViewState](https://developers.hp.com/hp-client-management/doc/Get-HPSureViewState)

---

### Test-Hpsureviewissupported

Checks if HP Sure View is supported

### Syntax

Test-HPSureViewIsSupported \[<CommonParameters>\]

### Description

This command returns $true if HP Sure View is supported by the current platform and returns $false otherwise.

### Parameters

No parameters defined.

### Notes

*   Requires HP BIOS.
*   This command requires elevated privileges.

### Examples

```
PS C:\> Test-HPSureViewIsSupported

```

### See also

*   [Get-HPSureViewState](https://developers.hp.com/hp-client-management/doc/Get-HPSureViewState)
*   [Set-HPSureViewState](https://developers.hp.com/hp-client-management/doc/Set-HPSureViewState)

---

### Update-Hpfirmware

Updates the system firmware from a capsule or BIOS binary file

### Syntax

Update-HPFirmware \[\[-Password\] <String>\] \[-File\] <FileInfo> \[\[-Quiet\]\] \[\[-BitLocker\] <String>\] \[\[-FilenameHint\] <String>\] \[\[-Force\]\] \[\[-Offline\]\] \[\[-NoWait\]\] \[<CommonParameters>\]

Update-HPFirmware \[-PayloadFile\] <FileInfo> \[-File\] <FileInfo> \[\[-Quiet\]\] \[\[-BitLocker\] <String>\] \[\[-FilenameHint\] <String>\] \[\[-Force\]\] \[\[-Offline\]\] \[\[-NoWait\]\] \[<CommonParameters>\]

Update-HPFirmware \[-Payload\] <String> \[-File\] <FileInfo> \[\[-Quiet\]\] \[\[-BitLocker\] <String>\] \[\[-FilenameHint\] <String>\] \[\[-Force\]\] \[\[-Offline\]\] \[\[-NoWait\]\] \[<CommonParameters>\]

### Description

This command updates the system firmware on the current platform. The update must be provided as a BIN file and can be obtained via the [Get-HPBIOSUpdates](/hp-client-management/doc/Get-HPBiosUpdates) command. If HP Sure Admin is enabled, a payload file should be provided instead of a password.

Online Mode uses Seamless Firmware Update Service. Seamless Firmware Update Service updates the BIOS in the background while the operating system is running (no authentication needed). 2022 and newer HP computers with Intel processors support Seamless Firmware Update Service. Offline Mode updates the BIOS on reboot and requires authentication (password or payload).

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Password_ | `<String>` | Specifies the BIOS setup password, if any. Use single quotes around the password to prevent PowerShell from interpreting special characters in the string. |
| _PayloadFile_ | `<FileInfo>` | Specifies the payload file to authorize firmware update. Refer to the New-HPSureAdminFirmwareUpdatePayload command for information on how to generate the payload file. |
| _Payload_ | `<String>` | Specifies the payload to authorize firmware update. Refer to the New-HPSureAdminFirmwareUpdatePayload command for information on how to generate the payload. |
| _File_ | `<FileInfo>` | Specifies the firmware update binary (.BIN) file. If the filename does not follow the pattern 'U70\_010101.bin', the -FilenameHint parameter should be specified. |
| _Quiet_ |  | If specified, this command will suppress non-essential messages during execution. |
| _BitLocker_ | `<String>` | Specifies the behavior to the BitLocker check prompt (if any). The value must be one of the following values:<br />\- stop: (default option) stops execution if BitLocker is detected but not suspended, and prompts<br />\- ignore: skips the BitLocker check<br />\- suspend: suspends BitLocker if active and continues with execution |
| _FilenameHint_ | `<String>` | Specifies the original file name without the .bin extension if using a file name other than the original file name. Alias -filename\_hint. Some older generations of platforms require that the filename of the BIOS update be in a specific format (e.g.: 'U70\_010101').<br />If this parameter is not specified, this command will extract the file name from the -File parameter. However, if it does not match the required format on platforms that require a specific format, this command may fail.<br />If the system does not require a specific format (not required on most recent systems), this parameter might be ignored. |
| _Force_ |  | If specified, this command will force the BIOS update even if the target BIOS is already installed. |
| _Offline_ |  | If specified, this command selects the offline mode to flash the BIOS instead of the default online mode. If specified, the actual flash will only occur on reboot at pre-OS environment. Please note that offline mode is selected by default when downgrading the BIOS. Offline mode requires authentication, so either a Password or a PayloadFile should be specified. |
| _NoWait_ |  | If specified, the script will not wait for the online flash background task to finish. If the user reboots the PC during the online flash, the update will complete only after reboot. |

### Notes

*   Requires HP BIOS.
*   Requires 64-bit PowerShell (not supported under 32-bit PowerShell).
*   UEFI boot mode is required; legacy mode is not supported.
*   This command requires elevated privileges.

**WinPE notes**

*   Use '-BitLocker ignore' when using this command in WinPE because BitLocker checks are not applicable in Windows PE.
*   Requires that the WInPE image is built with the WinPE-SecureBootCmdlets.cab component.

### Examples

```
PS C:\> Update-HPFirmware -File bios.bin -Password 'mysecret' -FilenameHint 'U70_010101'

```

```
PS C:\> Update-HPFirmware -File U70_010101.bin -NoWait

```

```
PS C:\> Update-HPFirmware -File U70_010101.bin -Offline

```

```
PS C:\> Update-HPFirmware -File bios.bin -PayloadFile PayloadFile.dat -FilenameHint 'U70_010101'

```

---

### Write-Hpfirmwarepasswordfile

Creates a password file compatible with HP BIOS Configuration Utility (BCU)

### Syntax

Write-HPFirmwarePasswordFile \[-Password\] <String> \[\[-Outfile\] <FileInfo>\] \[<CommonParameters>\]

### Description

This command creates a password file that is compatible with the HP BIOS Configuration Utility (BCU). The command is roughly equivalent to running the HpqPswd tool with the following arguments:

hpqpswd /s /p"password" /f"outfile"

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Password_ | `<String>` | Specifies the password to encode into the target file |
| _Outfile_ | `<FileInfo>` | Specifies the file to create. If not specified, this command will attempt to create a file in the current directory named 'password.bin'. |

### Notes

*   Use single quotes around the password to prevent PowerShell from interpreting special characters in the string.

### Examples

```
PS C:\> Write-HPFirmwarePasswordFile -password 'mysecret' -outfile mysecret.bin

```

---

### Update-Hpdisplayfirmware

Updates firmware on connected displays if available

### Syntax

Update-HPDisplayFirmware \[\[-SerialNumber\] <String\[\]>\] \[\[-Experience\] <String>\] \[<CommonParameters>\]

### Description

This command updates firmware on connected displays if available. Please note that daisy chained devices are not currently supported.

Prerequisites:

*   Close all running applications to avoid installation issues.
*   Keep the monitor's power cable connected during the update process.
*   Ensure the monitor is powered ON and displaying active video throughout the update.
*   Avoid putting the computer system into sleep or shutdown mode during the update.
*   Do not connect more than one computer system to the target monitor during the update.
*   The monitor must be connected to the computer using a cable (USB-B to A cable, USB-C to C cable, USB-C to A cable, Thunderbolt cable) for the update to function properly.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SerialNumber_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the serial number(s) of the display(s) to update. If not specified, all connected displays will be updated. |
| _Experience_ | `<String>` | Specifies whether update should run silently or interactively. If not specified, default is silent. If the display does not yet support silent install, an error will be thrown. |

### Examples

```powershell
PS C:\> Update-HPDisplayFirmware -Experience "Interactive"
```

---

### Update-Hpdockfirmware

Updates firmware on connected docks if available

### Syntax

Update-HPDockFirmware \[-AutoInstallWmiProvider\] \[-UpdateNow\] \[\[-Experience\] <String>\] \[-Force\] \[<CommonParameters>\]

### Description

This command updates firmware on connected docks if available.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _AutoInstallWmiProvider_ | `<SwitchParameter>` | If specified, run Install-HPDockWmiProvider first to ensure WMI Provider is installed. |
| _Experience_ | `<String>` | Specifies user interaction. Values are Silent, Interactive, Non-Interactive. If not specified, Silent mode is default. |
| _Force_ | `<SwitchParameter>` | If specified, the command updates all firmware components to be updated regardless of the current version. |
| _UpdateNow_ | `<SwitchParameter>` | If specified, the command updates the firmware immediately rather than staging the update onto the dock so that update occurs when dock is disconnected. |

### Examples

```powershell
PS C:\> Update-HPDockFirmware -Experience "NonInteractive" -UpdateNow
```

---


## SoftPaq Management

### SoftPaq Management

This module provides basic functionality for retrieving SoftPaqs and mapping available SoftPaqs to platforms.

The following functionality is currently available:



| Function | Description |
| --- | --- |
| [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq) | Downloads a SoftPaq from ftp.hp.com or from a specified alternate server |
| [Get-SoftpaqMetadataFile](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadataFile) | Downloads the metadata of a SoftPaq metadata in CVA file format from ftp.hp.com or from a specified alternate server with additional configuration capabilities in comparison to the Get-SoftPaqMetadata command |
| [Get-SoftpaqMetadata](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadata) | Downloads the metadata of a SoftPaq metadata in CVA file format from ftp.hp.com or from a specified alternate server |
| [Get-SoftpaqList](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqList) | Retrieves a list of SoftPaqs for the current platform or a specified platform ID |
| [Clear-SoftpaqCache](https://developers.hp.com/hp-client-management/doc/Clear-SoftpaqCache) | Clears the cache used for downloading SoftPaq database files |
| [Out-SoftpaqField](https://developers.hp.com/hp-client-management/doc/Out-SoftpaqField) | Extracts the information of a specified field from the SoftPaq metadata |
| [Get-HPImageAssistantUpdateInfo](https://developers.hp.com/hp-client-management/doc/Get-HPImageAssistantUpdateInfo) | Retrieves the latest version, HPIA download URL, and SoftPaq URL |
| [Install-HPImageAssistant](https://developers.hp.com/hp-client-management/doc/Install-HPImageAssistant) | Installs the latest version of HP Image Assistant (HPIA) |
| [New-HPDriverPack](https://developers.hp.com/hp-client-management/doc/New-HPDriverPack) | Creates a Driver Pack for a specified platform ID |
| [New-HPBuildDriverPack](https://developers.hp.com/hp-client-management/doc/New-HPBuildDriverPack) | Creates a Driver Pack for a specified list of SoftPaqs |
| [New-HPUWPDriverPack](https://developers.hp.com/hp-client-management/doc/New-HPUWPDriverPack) | Creates a UWP Driver Pack for a specified platform ID |

---

### Clear-Softpaqcache

Clears the cache used for downloading SoftPaq database files

### Syntax

Clear-SoftpaqCache \[\[-CacheDir\] <DirectoryInfo>\] \[<CommonParameters>\]

### Description

This command clears the cache used for downloading SoftPaq database files.

This command is not needed in normal operations as the cache does not grow significantly over time and is also cleared when normal operations flush the user's temporary directory.

This command is only intended for debugging purposes.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _CacheDir_ | `<DirectoryInfo>` | Specifies a custom location for caching data files. If not specified, the user-specific TEMP directory is used. |

### Notes

This command removes the cached files from the user temporary directory. It cannot be used to clear the cache when the data files are stored inside a repository structure. Custom cache locations (other than the default) must be specified via the cacheDir folder.

### Examples

```
PS C:\> Clear-SoftpaqCache

```

### See also

*   [Get-SoftpaqMetadata](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadata)
*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Get-SoftpaqList](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqList)
*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Out-SoftpaqField](https://developers.hp.com/hp-client-management/doc/Out-SoftpaqField)

---

### Get-Hpimageassistantupdateinfo

Retrieves the latest version, HPIA download URL, and SoftPaq URL of HP Image Assistant ([HPIA](https://ftp.hp.com/pub/caps-softpaq/cmit/HPIA.html))

### Syntax

Get-HPImageAssistantUpdateInfo \[<CommonParameters>\]

### Description

This command returns the latest version of HPIA returned as a System.Version object, the HPIA download page, and the SoftPaq download URL.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Get-HPImageAssistantUpdateInfo

```

### See also

*   [Install-HPImageAssistant](https://developers.hp.com/hp-client-management/doc/Install-HPImageAssistant)

---

### Get-Softpaq

Downloads a SoftPaq from ftp.hp.com or from a specified alternate server

### Syntax

Get-Softpaq \[-Number <String>\] \[-SaveAs <String>\] \[-FriendlyName\] \[-Quiet\] \[-Overwrite <String>\] \[\[-Action\] <String>\] \[-Url <String>\] \[-KeepInvalidSigned\] \[-MaxRetries <Int32>\] \[-Extract\] \[-DestinationPath <String>\] \[<CommonParameters>\]

Get-Softpaq \[-Number\] <String> \[\[-SaveAs\] <String>\] \[\[-FriendlyName\]\] \[\[-Quiet\]\] \[\[-Overwrite\] <String>\] \[\[-Action\] <String>\] \[\[-Url\] <String>\] \[\[-KeepInvalidSigned\]\] \[\[-MaxRetries\] <Int32>\] \[<CommonParameters>\]

Get-Softpaq \[-Number\] <String> \[\[-SaveAs\] <String>\] \[\[-FriendlyName\]\] \[\[-Quiet\]\] \[\[-Overwrite\] <String>\] \[\[-Url\] <String>\] \[\[-KeepInvalidSigned\]\] \[\[-MaxRetries\] <Int32>\] \[-Extract\] \[-DestinationPath <String>\] \[<CommonParameters>\]

### Description

This command downloads a SoftPaq from the default download server (ftp.hp.com) or from a specified alternate server. If using the default server, the download is performed over HTTPS. Otherwise, the protocol is dictated by the URL parameter.

If a SoftPaq is either unavailable to download or has been obsoleted on the server, this command will display a warning that the SoftPaq could not be retrieved.

The Get-Softpaq command is not supported in WinPE.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Number_ | `<String>` | Specifies the SoftPaq number for which to retrieve the metadata. Do not include any prefixes like 'SP' or any extensions like '.exe'. Please specify the SoftPaq number only. |
| _SaveAs_ | `<String>` | Specifies a specific name to save the SoftPaq as. Otherwise, the name the SoftPaq will be saved as is inferred based on the remote name or the SoftPaq metadata if the FriendlyName parameter is specified. |
| _FriendlyName_ |  | Specifies a friendly name for the downloaded SoftPaq based on the SoftPaq number and title |
| _Quiet_ |  | If specified, this command will suppress non-essential messages during execution. |
| _Overwrite_ | `<String>` | Specifies the the overwrite behavior.<br />The possible values include:<br />"no" = (default if this parameter is not specified) do not overwrite existing files<br />"yes" = force overwrite<br />"skip" = skip existing files without any error |
| _Action_ | `<String>` | Specifies the SoftPaq action this command will execute after download. The value must be either 'install' or 'silentinstall'. Silentinstall information is retrieved from the SoftPaq metadata (CVA) file.<br />If DestinationPath parameter is also specified, this value will be used as the location to save files. |
| _Url_ | `<String>` | Specifies an alternate location for the SoftPaq URL. This URL must be HTTPS. The SoftPaqs are expected to be at the location pointed to by this URL. If not specified, ftp.hp.com is used via HTTPS protocol. |
| _KeepInvalidSigned_ |  | If specified, this command will not delete any files that failed the signature authentication check. This command performs a signature authentication check after a download. By default, this command will delete any downloaded file with an invalid or missing signature. |
| _MaxRetries_ | Int32\_TYPE\_PLACEHOLDER | Specifies the maximum number of retries allowed to obtain an exclusive lock to downloaded files. This is relevant only when files are downloaded into a shared directory and multiple processes may be reading or writing from the same location.<br />Current default value is 10 retries, and each retry includes a 30 second pause, which means the maximum time the default value will wait for an exclusive logs is 300 seconds or 5 minutes. |
| _Extract_ |  | If specified, this command extracts SoftPaq content to a specified destination folder. Specify the destination folder with the DestinationPath parameter. If the DestinationPath parameter is not specified, the files are extracted into a new sub-folder relative to the downloaded SoftPaq executable. |
| _DestinationPath_ | `<String>` | Specifies the path to the folder in which you want to save downloaded and/or extracted files. Do not specify a file name or file name extension. If not specified, the executable is downloaded to the current folder, and the files are extracted into a new sub-folder relative to the downloaded executable. |

### Examples

```
PS C:\> Get-Softpaq -Number 1234

```

```
PS C:\> Get-Softpaq -Number 1234 -Extract -DestinationPath "c:\staging\drivers"

```

### See also

*   [Get-SoftpaqMetadata](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadata)
*   [Get-SoftpaqMetadataFile](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadataFile)
*   [Get-SoftpaqList](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqList)
*   [Out-SoftpaqField](https://developers.hp.com/hp-client-management/doc/Out-SoftpaqField)
*   [Clear-SoftpaqCache](https://developers.hp.com/hp-client-management/doc/Clear-SoftpaqCache)

---

### Get-Softpaqlist

Retrieves a list of SoftPaqs for the current platform or a specified platform ID

### Syntax

Get-SoftpaqList \[\[-Platform\] <String>\] \[\[-Bitness\] <String>\] \[\[-Os\] <String>\] \[\[-OsVer\] <String>\] \[\[-ReferenceUrl\] <String>\] \[\[-Quiet\]\] \[\[-Format\] <String>\] \[\[-Overwrite\] <String>\] \[\[-Category\] <String\[\]>\] \[\[-ReleaseType\] <String\[\]>\] \[\[-Characteristic\] <String\[\]>\] \[\[-CacheDir\] <DirectoryInfo>\] \[\[-MaxRetries\] <Int32>\] \[\[-PreferLTSC\]\] \[\[-SoftpaqUrl\] <String>\] \[\[-AddHttps\]\] \[<CommonParameters>\]

Get-SoftpaqList \[-Platform <String>\] \[-Bitness <String>\] \[-Os <String>\] \[-OsVer <String>\] \[-ReferenceUrl <String>\] \[-Quiet\] \[-Format <String>\] \[\[-DownloadDirectory\] <String>\] \[\[-Download\]\] \[\[-DownloadMetadata\]\] \[\[-DownloadNotes\]\] \[\[-FriendlyName\]\] \[-Overwrite <String>\] \[-Category <String\[\]>\] \[-ReleaseType <String\[\]>\] \[-Characteristic <String\[\]>\] \[-CacheDir <DirectoryInfo>\] \[-MaxRetries <Int32>\] \[-PreferLTSC\] \[-SoftpaqUrl <String>\] \[-AddHttps\] \[<CommonParameters>\]

### Description

This command retrieves a list of SoftPaqs for the current platform or a specified platform ID. Note that this command is not supported in WinPE.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Platform_ | `<String>` | Specifies a platform ID to retrieve a list of associated SoftPaqs. If not specified, the current platform ID is used. |
| _Bitness_ | `<String>` | Specifies the platform bitness (32 or 64 or arm64). If not specified, the current platform bitness is used. |
| _Os_ | `<String>` | Specifies an OS for this command to filter based on. The value must be 'win10' or 'win11'. If not specified, the current platform OS is used. |
| _OsVer_ | `<String>` | Specifies an OS version for this command to filter based on. The value must be a string value specifying the target OS Version (e.g. '1809', '1903', '1909', '2004', '2009', '21H1', '21H2', '22H2', '23H2', '24H2', etc). If this parameter is not specified, the current operating system version is used. |
| _ReferenceUrl_ | `<String>` | Specifies an alternate location for the HP Image Assistant (HPIA) Reference files. If passing a file path, the path can be relative path or absolute path. If passing a URL to this parameter, the URL must be a HTTPS URL. The HPIA Reference files are expected to be inside a directory named after the platform ID pointed to by this parameter.<br />For example, if you want to point to system ID 83b2, OS Win10, and OSVer 2009 reference files, the Get-SoftpaqList command will try to find them in: $ReferenceUrl/83b2/83b2\_64\_10.0.2009.cab<br />If not specified, 'https://hpia.hpcloud.hp.com/ref/' is used by default, and fallback is set to 'https://ftp.hp.com/pub/caps-softpaq/cmit/imagepal/ref/'. |
| _Quiet_ |  | If specified, this command will suppress non-essential messages during execution. |
| _Format_ | `<String>` | Specifies the format of the output results. The value must be one of the following values:<br />\- Json<br />\- XML<br />\- CSV<br />If not specified, results are returned as PowerShell objects. |
| _DownloadDirectory_ | `<String>` | Specifies a directory for the downloaded files |
| _Download_ |  | If specified, this command will download matching SoftPaqs. |
| _DownloadMetadata_ |  | If specified, this command will download CVA files (metadata) for matching SoftPaqs. |
| _DownloadNotes_ |  | If specified, this command will download note files (human readable info files) for matching SoftPaqs. |
| _FriendlyName_ |  | If specified, this command will retrieve the SoftPaq metadata and create a friendly file name based on the SoftPaq title. Applies if the Download parameter is specified. |
| _Overwrite_ | `<String>` | Specifies the the overwrite behavior. The value must be one of the following values:<br />\- no: (default if this parameter is not specified) do not overwrite existing files<br />\- yes: force overwrite<br />\- skip: skip existing files without any error |
| _Category_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies a category of SoftPaqs for this command to filter based on. The value must be one (or more) of the following values:<br />\- Bios<br />\- Firmware<br />\- Driver<br />\- Software<br />\- OS<br />\- Manageability<br />\- Diagnostic<br />\- Utility<br />\- Driverpack<br />\- Dock<br />\- UWPPack |
| _ReleaseType_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies a release type for this command to filter based on. The value must be one (or more) of the following values:<br />\- Critical<br />\- Recommended<br />\- Routine<br />If this parameter is not specified, all release types are included. |
| _Characteristic_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies characteristics for this command to filter based on. The value must be one (or more) of the following values:<br />\- SSM<br />\- DPB<br />\- UWP |
| _CacheDir_ | `<DirectoryInfo>` | Specifies a location for caching data files. If not specified, the user-specific TEMP directory is used. |
| _MaxRetries_ | Int32\_TYPE\_PLACEHOLDER | Specifies the maximum number of retries allowed to obtain an exclusive lock to downloaded files. This is relevant only when files are downloaded into a shared directory and multiple processes may be reading or writing from the same location.<br />The current default value is 10 retries, and each retry includes a 30 second pause, which means the maximum time the default value will wait for an exclusive logs is 300 seconds or 5 minutes. |
| _PreferLTSC_ |  | If specified and if the data file exists, this command retrieves the Long-Term Servicing Branch/Long-Term Servicing Channel (LTSB/LTSC) Reference file for the specified platform ID. If the data file does not exist, this command uses the regular Reference file for the specified platform. |
| _SoftpaqUrl_ | `<String>` | Specifies an alternate location for the SoftPaq URL. This URL must be HTTPS. The SoftPaqs are expected to be at the location pointed to by this URL. If not specified, ftp.hp.com is used via HTTPS protocol. |
| _AddHttps_ |  | If specified, this command prepends the https tag to the url, ReleaseNotes, and Metadata SoftPaq attributes. |

### Notes

The response is a record set composed of zero or more SoftPaq records. The definition of a record is as follows:

| Field | Description |
| --- | --- |
| Id | The SoftPaq identifier |
| Name | The SoftPaq name (title) |
| Category | The SoftPaq category |
| Version | The SoftPaq version |
| Vendor | The author of the SoftPaq |
| ReleaseType | The SoftPaq release type |
| SSM | This flag indicates this SoftPaq support unattended silent install |
| DPB | This flag indicates this SoftPaq is included in driver pack builds |
| Url | The SoftPaq download URL |
| ReleaseNotes | The URL to a human-readable rendering of the SoftPaq release notes |
| Metadata | The URL to the SoftPaq metadata (CVA) file |
| Size | The SoftPaq size, in bytes |
| ReleaseDate | The date the SoftPaq was published |
| UWP | (where available) This flag indicates this SoftPaq contains Universal Windows Platform applications |

### Examples

```
PS C:\> Get-SoftpaqList -Download

```

```
PS C:\> Get-SoftpaqList -Bitness 64 -Os win10 -OsVer 1903

```

```
PS C:\> Get-SoftpaqList -Platform 83b2 -Os win10 -OsVer "21H1"

```

```
PS C:\> Get-SoftpaqList -Platform 8444 -Category Diagnostic -Format json

```

```
PS C:\> Get-SoftpaqList -Category Driverpack

```

```
PS C:\> Get-SoftpaqList -ReleaseType Critical -Characteristic SSM

```

```
PS C:\> Get-SoftpaqList -Platform 83b2 -Category Dock,Firmware -ReleaseType Routine,Critical

```

```
PS C:\> Get-SoftpaqList -Platform 2216 -Category Driverpack -Os win10 -OsVer 1607 -PreferLTSC

```

### See also

*   [Get-SoftpaqMetadata](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadata)
*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Clear-SoftpaqCache](https://developers.hp.com/hp-client-management/doc/Clear-SoftpaqCache)
*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Out-SoftpaqField](https://developers.hp.com/hp-client-management/doc/Out-SoftpaqField)

---

### Get-Softpaqmetadata

Downloads the metadata of a SoftPaq metadata in CVA file format from ftp.hp.com or from a specified alternate server

### Syntax

Get-SoftpaqMetadata \[-Number\] <String> \[\[-Url\] <String>\] \[\[-MaxRetries\] <Int32>\] \[<CommonParameters>\]

### Description

This command downloads the metadata of a SoftPaq metadata in CVA file format from ftp.hp.com or from a specified alternate server. If the -URL parameter is not specified, the SoftPaq metadata is downloaded from ftp.hp.com.

Please note that this command is called in the Get-SoftPaqMetadataFile command if the -FriendlyName parameter is specified.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Number_ | `<String>` | Specifies a SoftPaq number to retrieve the metadata from. Do not include any prefixes like 'SP' or any extensions like '.exe'. Please specify the SoftPaq number only. |
| _Url_ | `<String>` | Specifies an alternate location for the SoftPaq URL. This URL must be HTTPS. The SoftPaq CVAs are expected to be at the location pointed to by this URL. If not specified, ftp.hp.com is used via HTTPS protocol. |
| _MaxRetries_ | Int32\_TYPE\_PLACEHOLDER | Specifies the maximum number of retries allowed to obtain an exclusive lock to downloaded files. This is relevant only when files are downloaded into a shared directory and multiple processes may be reading or writing from the same location.<br />Current default value is 10 retries, and each retry includes a 30 second pause, which means the maximum time the default value will wait for an exclusive logs is 300 seconds or 5 minutes. |

### Examples

```
PS C:\> Get-SoftpaqMetadata -Number 1234 | Out-SoftpaqField -field Title

```

### See also

*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Get-SoftpaqMetadataFile](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadataFile)
*   [Get-SoftpaqList](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqList)
*   [Out-SoftpaqField](https://developers.hp.com/hp-client-management/doc/Out-SoftpaqField)
*   [Clear-SoftpaqCache](https://developers.hp.com/hp-client-management/doc/Clear-SoftpaqCache)

---

### Get-Softpaqmetadatafile

Downloads the metadata of a SoftPaq metadata in CVA file format from ftp.hp.com or from a specified alternate server with additional configuration capabilities in comparison to the Get-SoftPaqMetadata command

### Syntax

Get-SoftpaqMetadataFile \[-Number\] <String> \[\[-SaveAs\] <String>\] \[\[-FriendlyName\]\] \[\[-Quiet\]\] \[\[-Overwrite\] <String>\] \[\[-Url\] <String>\] \[\[-MaxRetries\] <Int32>\] \[<CommonParameters>\]

### Description

This command downloads the metadata of a SoftPaq metadata in CVA file format from ftp.hp.com or from a specified alternate server with additional configuration capabilities in comparison to the Get-SoftPaqMetadata command.

The additional configuration capabilities are detailed using the following parameters: - SaveAs - FriendlyName - Quiet - Overwrite

Please note that this command calls the Get-SoftPaqMetadata command if the -FriendlyName parameter is specified.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Number_ | `<String>` | Specifies the SoftPaq number for which to retrieve the metadata. Do not include any prefixes like 'SP' or any extensions like '.exe'. Please specify the SoftPaq number only. |
| _SaveAs_ | `<String>` | Specifies a name for the saved SoftPaq metadata. Otherwise the name is inferred based on the remote name or on the metadata if the -FriendlyName parameter is specified. |
| _FriendlyName_ |  | Specifies a friendly name for the downloaded SoftPaq based on the SoftPaq number and title |
| _Quiet_ |  | If specified, this command will suppress non-essential messages during execution. |
| _Overwrite_ | `<String>` | Specifies the the overwrite behavior.<br />The possible values include:<br />"no" = (default if this parameter is not specified) do not overwrite existing files<br />"yes" = force overwrite<br />"skip" = skip existing files without any error |
| _Url_ | `<String>` | Specifies an alternate location for the SoftPaq URL. This URL must be HTTPS. The SoftPaq CVAs are expected to be at the location pointed to by this URL. If not specified, ftp.hp.com is used via HTTPS protocol. |
| _MaxRetries_ | Int32\_TYPE\_PLACEHOLDER | Specifies the maximum number of retries allowed to obtain an exclusive lock to downloaded files. This is relevant only when files are downloaded into a shared directory and multiple processes may be reading or writing from the same location.<br />Current default value is 10 retries, and each retry includes a 30 second pause, which means the maximum time the default value will wait for an exclusive logs is 300 seconds or 5 minutes. |

### Examples

```
PS C:\> Get-SoftpaqMetadataFile -Number 1234

```

### See also

*   [Get-SoftpaqMetadata](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadata)
*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Get-SoftpaqList](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqList)
*   [Out-SoftpaqField](https://developers.hp.com/hp-client-management/doc/Out-SoftpaqField)
*   [Clear-SoftpaqCache](https://developers.hp.com/hp-client-management/doc/Clear-SoftpaqCache)

---

### Out-Softpaqfield

Extracts the information of a specified field from the SoftPaq metadata

### Syntax

Out-SoftpaqField \[-Field\] <String> \[-InputObject\] <Object> \[<CommonParameters>\]

### Description

This command extracts the information of a specified field from the SoftPaq metadata. The currently supported fields are:

*   Description
*   Install
*   Number
*   PlatformIDs
*   Platforms
*   SilentInstall
*   SoftPaqSHA256
*   Title
*   Version

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Field_ | `<String>` | Specifies the field to filter the SoftPaq metadata on. Choose from the following values:<br />\- Install<br />\- SilentInstall<br />\- Title<br />\- Description<br />\- Number<br />\- Platforms<br />\- PlatformIDs<br />\- SoftPaqSHA256<br />\- Version |
| _InputObject_ | `<Object>` | Specifies the root node of the SoftPaq metadata to extract information from |

### Examples

```
PS C:\> $mysoftpaq | Out-SoftpaqField -Field Title

```

### See also

*   [Get-SoftpaqMetadata](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadata)
*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Get-SoftpaqList](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqList)
*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Clear-SoftpaqCache](https://developers.hp.com/hp-client-management/doc/Clear-SoftpaqCache)

---


## SoftPaq Repository

### Initializing the repository

Use this module to initialize a directory as a container for SoftPaqs, pull the latest SoftPaqs for a platform or set of platforms, apply filters for the types of SoftPaqs to pull, etc.

This module contains the following commands:



A directory must be initialized as a repository. This command creates the proper files in the directory that store the repository settings. To undo the initialization or initialize from scratch, simply remove the .repository folder from the directory.

| Function | Description |
| --- | --- |
| [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository) | Initializes a repository in the current directory |

### Configuring the repository

The following commands allow users to get and set various repository properties like error handling.

| Function | Description |
| --- | --- |
| [Get-RepositoryConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryConfiguration) | Retrieves the configuration values for a specified setting in the current repository |
| [Set-RepositoryConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryConfiguration) | Sets repository configuration values |

### Adding and removing platforms

These commands allow for adding and removing platforms as well as any associated filters from the current repository. Use these commands to control what SoftPaqs the current repository will receive.

| Function | Description |
| --- | --- |
| [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter) | Adds a filter per specified platform to the current repository |
| [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter) | Removes one or more previously added filters per specified platform from the current repository |

### Getting repository information

These commands get information about a repository. You can also see similar data by reading the .repository\\repository.json file.

| Function | Description |
| --- | --- |
| [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo) | Retrieves the current repository definition |
| [New-RepositoryReport](https://developers.hp.com/hp-client-management/doc/New-RepositoryReport) | Creates a report from a repository directory |

### Synchronizing a repository

This command synchronizes a repository based on the currently defined rules.

| Function | Description |
| --- | --- |
| [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync) | Synchronizes the current repository and generates a report that includes information about the repository |

### Removing orphaned SoftPaqs

This command cleans up unneeded SoftPaqs. It would normally be performed after a successful sync.

| Function | Description |
| --- | --- |
| [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup) | Removes obsolete SoftPaqs from the current repository |

### Configuring email failure notifications

When synchronizing a SoftPaq repository on a schedule, it may be desirable to be notified by email if the process fails. Use these commands to configure an SMTP server and define a list of recipients to receive the failure emails.

| Function | Description |
| --- | --- |
| [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration) | Retrieves the current notification configuration |
| [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration) | Sets the repository notification configuration in the current repository |
| [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration) | Clears the repository notification configuration from the current repository |
| [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration) | Displays the current notification configuration onto the screen |
| [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient) | Adds a recipient to the list of recipients to receive failure notification emails for the current repository |
| [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient) | Removes a recipient from the list of recipients that receive failure notification emails for the current repository |
| [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration) | Tests the email notification configuration by sending a test email |

All commands above must be executed in a repository directory, and all configuration is executed per repository. To maintain multiple repositories, create repositories in separate directories, initialize them, and configure them separately.

### Files

When initialized, a directory named ".repository" is created in the repository directory. This directory contains a configuration file (.repository/repository.json) which contains all the configuration for this repository, and a log file (.repository/activity.log) which registers significant actions. Additional files and directories may exist which are used internally by the synchronization process.

The log file may be deleted when no longer needed.

---

### Add-Repositoryfilter

Adds a filter per specified platform to the current repository

### Syntax

Add-RepositoryFilter \[-Platform\] <String> \[\[-Os\] <Object>\] \[\[-OsVer\] <String\[\]>\] \[\[-Category\] <String\[\]>\] \[\[-ReleaseType\] <String\[\]>\] \[\[-Characteristic\] <String\[\]>\] \[\[-PreferLTSC\]\] \[<CommonParameters>\]

### Description

This command adds a filter to a repository that was previously initialized by the Initialize-Repository command. A repository can contain one or more filters, and filtering will be the based on all the filters defined. Please note that "\*" means "current" for the -Os parameter but means "all" for the -Category, -ReleaseType, -Characteristic parameters.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Platform_ | `<String>` | Specifies the platform using its platform ID to include in this repository. A platform ID, a 4-digit hexadecimal number, can be obtained by executing the Get-HPDeviceProductID command. This parameter is mandatory. |
| _Os_ | `<Object>` | Specifies the operating system to be included in this repository. The value must be one of 'win10' or 'win11'. If not specified, the current operating system will be assumed, which may not be what is intended. |
| _OsVer_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the target OS Version (e.g. '1809', '1903', '1909', '2004', '2009', '21H1', '21H2', '22H2', '23H2', '24H2', etc). Starting from the '21H1' release, 'xxHx' format is expected. If not specified, the current operating system version will be assumed, which may not be what is intended. |
| _Category_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the SoftPaq category to be included in this repository. The value must be one (or more) of the following values:<br />\- Bios<br />\- Firmware<br />\- Driver<br />\- Software<br />\- OS<br />\- Manageability<br />\- Diagnostic<br />\- Utility<br />\- Driverpack<br />\- Dock<br />\- UWPPack<br />If not specified, all categories will be included. |
| _ReleaseType_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies a release type for this command to filter based on. The value must be one (or more) of the following values:<br />\- Critical<br />\- Recommended<br />\- Routine<br />If not specified, all release types are included. |
| _Characteristic_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the characteristic to be included in this repository. The value must be one of the following values:<br />\- SSM<br />\- DPB<br />\- UWP<br />If this parameter is not specified, all characteristics are included. |
| _PreferLTSC_ |  | If specified and if the data file exists, this command uses the Long-Term Servicing Branch/Long-Term Servicing Channel (LTSB/LTSC) Reference file for the specified platform ID. If the data file does not exist, this command uses the regular Reference file for the specified platform. |

### Examples

```
PS C:\> Add-RepositoryFilter -Platform 1234 -Os win10 -OsVer 2009

```

```
PS C:\> Add-RepositoryFilter -Platform 1234 -Os win10 -OsVer "21H1"

```

```
PS C:\> Add-RepositoryFilter -Platform 1234 -Os win10 -OsVer "21H1" -PreferLTSC

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)
*   [Get-HPDeviceProductID](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceProductID)

---

### Add-Repositorysyncfailurerecipient

Adds a recipient to the list of recipients to receive failure notification emails for the current repository

### Syntax

Add-RepositorySyncFailureRecipient \[-To\] <String> \[<CommonParameters>\]

### Description

This command adds a recipient via an email address to the list of recipients to receive failure notification emails for the current repository. If any failure occurs, notifications will be sent to this email address.

This command must be invoked inside a directory initialized as a repository using the Initialize-Repository command.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _To_ | `<String>` | Specifies the email address to add as a recipient of the failure notifications |

### Examples

```
PS C:\> Add-RepositorySyncFailureRecipient -to someone@mycompany.com

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Clear-Repositorynotificationconfiguration

Clears the repository notification configuration from the current repository

### Syntax

Clear-RepositoryNotificationConfiguration \[<CommonParameters>\]

### Description

This command removes notification configuration from the current repository, and as a result, notifications are turned off. This command must be invoked inside a directory initialized as a repository using the Initialize-Repository command. Please note that notification configuration must have been defined via the Set-RepositoryNotificationConfiguration command for this command to have any effect.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Clear-RepositoryNotificationConfiguration

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Get-Repositoryconfiguration

Retrieves the configuration values for a specified setting in the current repository

### Syntax

Get-RepositoryConfiguration \[-Setting\] <String> \[<CommonParameters>\]

### Description

This command retrieves various configuration options that control synchronization behavior. The settings this command can retrieve include:

*   OnRemoteFileNotFound: Indicates the behavior for when the SoftPaq is not found on the remote site. 'Fail' stops the execution. 'LogAndContinue' logs the errors and continues the execution.
*   RepositoryReport: Indicates the format of the report generated at repository synchronization. The default format is 'CSV' and other options available are 'JSON', 'XML', and 'ExcelCSV'.
*   OfflineCacheMode: Indicates that all repository files are required for offline use. Repository synchronization will include platform list, advisory, and knowledge base files. The default value is 'Disable' and the other option is 'Enable'.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Setting_ | `<String>` | Specifies the setting to retrieve. The value can be one of the following: 'OnRemoteFileNotFound', 'RepositoryReport', or 'OfflineCacheMode'. |

### Examples

```
PS C:\> Get-RepositoryConfiguration -Setting OfflineCacheMode

```

```
PS C:\> Get-RepositoryConfiguration -Setting OnRemoteFileNotFound

```

```
PS C:\> Get-RepositoryConfiguration -Setting RepositoryReport

```

### See also

*   [Set-RepositoryConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryConfiguration)
*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)

---

### Get-Repositoryinfo

Retrieves the current repository definition

### Syntax

Get-RepositoryInfo \[<CommonParameters>\]

### Description

This command retrieves the current repository definition as an object. This command must be executed inside an initialized repository.

### Parameters

No parameters defined.

### Examples

```
PS C:\> $myrepository = Get-RepositoryInfo

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Get-Repositorynotificationconfiguration

Retrieves the current notification configuration

### Syntax

Get-RepositoryNotificationConfiguration \[<CommonParameters>\]

### Description

This command retrieves the current notification configuration as an object. This command must be invoked inside a directory initialized as a repository using the Initialize-Repository command. The current notification configuration must be set via the Set-RepositoryNotificationConfiguration command.

### Parameters

No parameters defined.

### Examples

```
PS C:\> $config = Get-RepositoryNotificationConfiguration

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Initialize-Repository

Initializes a repository in the current directory

### Syntax

Initialize-Repository \[<CommonParameters>\]

### Description

This command initializes a directory to be used as a repository. This command creates a .repository folder in the current directory, which contains the definition of the .repository and all its settings.

In order to un-initalize a directory, simple remove the .repository folder.

After initializing a repository, you must add at least one filter to define the content that this repository will receive.

If the directory already contains a repository, this command will fail.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Initialize-Repository

```

### See also

*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)
*   [Get-RepositoryConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryConfiguration)
*   [Set-RepositoryConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryConfiguration)

---

### Invoke-Repositorycleanup

Removes obsolete SoftPaqs from the current repository

### Syntax

Invoke-RepositoryCleanup \[<CommonParameters>\]

### Description

This command removes SoftPaqs from the current repository that are labeled as obsolete. These may be SoftPaqs that have been replaced by newer versions, or SoftPaqs that no longer match the active repository filters.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Invoke-RepositoryCleanup

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Invoke-Repositorysync

Synchronizes the current repository and generates a report that includes information about the repository

### Syntax

Invoke-RepositorySync \[\[-Quiet\]\] \[\[-ReferenceUrl\] <String>\] \[<CommonParameters>\]

### Description

This command performs a synchronization on the current repository by downloading the latest SoftPaqs associated with the repository filters and creates a repository report in a format (default .CSV) set via the Set-RepositoryConfiguration command.

This command may be scheduled via task manager to run on a schedule. You can define a notification email via the Set-RepositoryNotificationConfiguration command to receive any failure notifications during unattended operation.

This command may be followed by the Invoke-RepositoryCleanup command to remove any obsolete SoftPaqs from the repository.

Please note that the Invoke-RepositorySync command is not supported in WinPE.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Quiet_ |  | If specified, this command will suppress progress messages during execution. |
| _ReferenceUrl_ | `<String>` | Specifies an alternate location for the HP Image Assistant (HPIA) Reference files. This URL must be HTTPS. The Reference files are expected to be at the location pointed to by this URL inside a directory named after the platform ID you want a SoftPaq list for.<br />Using system ID 83b2, OS Win10, and OSVer 2009 reference files as an example, this command will call the Get-SoftpaqList command to find the corresponding files in: $ReferenceUrl/83b2/83b2\_64\_10.0.2009.cab.<br />If not specified, 'https://hpia.hpcloud.hp.com/ref/' is used by default, and fallback is set to 'https://ftp.hp.com/pub/caps-softpaq/cmit/imagepal/ref/'. |

### Examples

```
PS C:\> Invoke-RepositorySync -Quiet

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### New-Repositoryreport

Creates a report from a repository directory

### Syntax

New-RepositoryReport \[\[-Format\] <String>\] \[\[-RepositoryPath\] <DirectoryInfo>\] \[\[-OutputFile\] <FileInfo>\] \[<CommonParameters>\]

### Description

This command creates a report from a repository directory or any directory containing CVAs (and EXEs) in one of the supported formats.

The supported formats are:

*   XML: Returns an XML object
*   JSON: Returns a JSON document
*   CSV: Returns a CSV object
*   ExcelCSV: Returns a CSV object containing an Excel hint that defines the comma character as the delimiter. Use this format only if you plan on opening the CSV file with Excel.

If a format is not specified, this command will return the output as PowerShell objects to the pipeline. Please note that the repository directory must contain CVAs for the command to generate a report successfully. EXEs are not required, but the EXEs will allow information like the time of download and size in bytes to be included in the report.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Format_ | `<String>` | Specifies the output format (CSV, JSON, or XML) of the report. If not specified, this command will return the output as PowerShell objects. |
| _RepositoryPath_ | `<DirectoryInfo>` | Specifies a different location for the repository. By default, this command assumes the repository is the current directory. |
| _OutputFile_ | `<FileInfo>` | Specifies a file to write the output to. You can specify a relative path or an absolute path. If a relative path is specified, the file will be written relative to the current directory and if RepositoryPath parameter is also specified, the file will still be written relative to the current directory and not relative to the value in RepositoryPath.<br />This parameter requires the -Format parameter to also be specified.<br />If specified, this command will create the file (if it does not exist) and write the output to the file instead of returning the output as a PowerShell, XML, CSV, or JSON object.<br />Please note that if the output file already exists, the contents of the file will be overwritten. |

### Notes

This command currently supports scenarios where the SoftPaq executable is stored under the format sp.exe.

### Examples

```
PS C:\> New-RepositoryReport -Format JSON -RepositoryPath c:\myrepository\softpaqs -OutputFile c:\repository\today.json

```

```
PS C:\> New-RepositoryReport -Format ExcelCSV -RepositoryPath c:\myrepository\softpaqs -OutputFile c:\repository\today.csv

```

---

### Remove-Repositoryfilter

Removes one or more previously added filters per specified platform from the current repository

### Syntax

Remove-RepositoryFilter \[-Platform\] <String> \[\[-Os\] <String\[\]>\] \[\[-OsVer\] <String>\] \[\[-Category\] <String\[\]>\] \[\[-ReleaseType\] <String\[\]>\] \[\[-Yes\]\] \[\[-Characteristic\] <String\[\]>\] \[\[-PreferLTSC\] <Nullable\`1>\] \[<CommonParameters>\]

### Description

This command removes one or more previously added filters per specified platform from the current repository. Please note that "\*" means "current" for the -Os parameter but means "all" for the -Category, -ReleaseType, -Characteristic parameters.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Platform_ | `<String>` | Specifies the platform to be removed from this repository. This is a 4-digit hex number that can be obtained via the Get-HPDeviceProductID command. This parameter is mandatory. |
| _Os_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies an OS for this command to be removed from this repository. The value must be 'win10' or 'win11'. If not specified, the current operating system will be assumed, which may not be what is intended. |
| _OsVer_ | `<String>` | Specifies the target OS Version (e.g. '1809', '1903', '1909', '2004', '2009', '21H1', '21H2', '22H2', '23H2', '24H2', etc). Starting from the '21H1' release, 'xxHx' format is expected. If the parameter is not specified, the current operating system version will be assumed, which may not be what is intended. |
| _Category_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the SoftPaq category to be removed from this repository. The value must be one (or more) of the following values:<br />\- Bios<br />\- Firmware<br />\- Driver<br />\- Software<br />\- OS<br />\- Manageability<br />\- Diagnostic<br />\- Utility<br />\- Driverpack<br />\- Dock<br />\- UWPPack<br />If not specified, all categories will be removed. |
| _ReleaseType_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the release type for this command to remove from this repository. If not specified, all release types will be removed. The value must be one (or more) of the following values:<br />\- Critical<br />\- Recommended<br />\- Routine<br />If this parameter is not specified, all release types will be removed. |
| _Yes_ |  | If specified, this command will delete the filter without asking for confirmation. If not specified, this command will ask for confirmation before deleting a filter. |
| _Characteristic_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the characteristic to be removed from this repository. The value must be one of the following values:<br />\- SSM<br />\- DPB<br />\- UWP<br />If this parameter is not specified, all characteristics are included. If not specified, all characteristics will be removed. |
| _PreferLTSC_ | Nullable\`1\_TYPE\_PLACEHOLDER | If specified, this command uses the Long-Term Servicing Branch/Long-Term Servicing Channel (LTSB/LTSC) Reference file for the specified platform. If not specified, all preferences will be matched. |

### Examples

```
PS C:\> Remove-RepositoryFilter -Platform 1234

```

```
PS C:\> Remove-RepositoryFilter -Platform 1234 -Os win10 -OsVer "21H1"

```

```
PS C:\> Remove-RepositoryFilter -Platform 1234 -Os win10 -OsVer "21H1" -PreferLTSC $True

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Get-HPDeviceProductID](https://developers.hp.com/hp-client-management/doc/Get-HPDeviceProductID)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Remove-Repositorysyncfailurerecipient

Removes a recipient from the list of recipients that receive failure notification emails for the current repository

### Syntax

Remove-RepositorySyncFailureRecipient \[-To\] <String> \[<CommonParameters>\]

### Description

This command removes an email address as a recipient for synchronization failure messages. This command must be invoked inside a directory initialized as a repository using the Initialize-Repository command. Notification configured via the Set-RepositoryNotificationConfiguration command.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _To_ | `<String>` | Specifies the email address to remove |

### Examples

```
PS C:\> Remove-RepositorySyncFailureRecipient -to someone@mycompany.com

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Set-Repositoryconfiguration

Sets repository configuration values

### Syntax

Set-RepositoryConfiguration \[-Setting\] <String> \[-Format\] <String> \[<CommonParameters>\]

Set-RepositoryConfiguration \[-Setting\] <String> \[-CacheValue\] <String> \[<CommonParameters>\]

Set-RepositoryConfiguration \[-Setting\] <String> \[-Value\] {Fail | LogAndContinue} \[<CommonParameters>\]

### Description

This command is used to configure different settings of the repository synchronization:

*   OnRemoteFileNotFound: Indicates the behavior for when the SoftPaq is not found on the remote site. 'Fail' stops the execution. 'LogAndContinue' logs the errors and continues the execution.
*   RepositoryReport: Indicates the format of the report generated at repository synchronization. The default format is 'CSV' and other options available are 'JSON,' 'XML,' and 'ExcelCSV.'
*   OfflineCacheMode: Indicates that all repository files are required for offline use. Repository synchronization will include platform list, advisory, and knowledge base files. The default value is 'Disable' and the other option is 'Enable.'

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Setting_ | `<String>` | Specifies the setting to configure. The value must be one of the following values: 'OnRemoteFileNotFound', 'OfflineCacheMode', or 'RepositoryReport'. |
| _Value_ | `<ErrorHandling>` | Specifies the new value for the OnRemoteFileNotFound setting. The value must be either: 'Fail' (default), or 'LogAndContinue'. |
| _CacheValue_ | `<String>` | Specifies the new value for the OfflineCacheMode setting. The value must be either: 'Disable' (default), or 'Enable'. |
| _Format_ | `<String>` | Specifies the new value for the RepositoryReport setting. The value must be one of the following: 'CSV' (default), 'JSon', 'XML', or 'ExcelCSV'. |

### Notes

*   When using HP Image Assistant and offline mode, use: Set-RepositoryConfiguration -Setting OfflineCacheMode -CacheValue Enable
*   More information on using HPIA with CMSL can be found at this [blog post](/hp-client-management/blog/driver-injection-hp-image-assistant-and-hp-cmsl-in-memcm).
*   To create a report outside the repository, use the New-RepositoryReport command.

### Examples

```
PS C:\> Set-RepositoryConfiguration -Setting OnRemoteFileNotFound -Value LogAndContinue

```

```
PS C:\> Set-RepositoryConfiguration -Setting OfflineCacheMode -CacheValue Enable

```

```
PS C:\> Set-RepositoryConfiguration -Setting RepositoryReport -Format CSV

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Get-RepositoryConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryConfiguration)

---

### Set-Repositorynotificationconfiguration

Sets the repository notification configuration in the current repository

### Syntax

Set-RepositoryNotificationConfiguration \[\[-Server\] <String>\] \[\[-Port\] <Int32>\] \[\[-Tls\] <String>\] \[\[-Username\] <String>\] \[\[-Password\] <String>\] \[\[-From\] <String>\] \[\[-FromName\] <String>\] \[\[-RemoveCredentials\]\] \[<CommonParameters>\]

### Description

This command defines a notification Simple Mail Transfer Protocol (SMTP) server (and optionally, port) for an email server to be used to send failure notifications during unattended synchronization via the Invoke-RepositorySync command.

One or more recipients can then be added via the Add-RepositorySyncFailureRecipient command.

This command must be invoked inside a directory initialized as a repository using the Initialize-Repository command.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Server_ | `<String>` | Specifies the server name (or IP) for the outgoing mail (SMTP) server |
| _Port_ | Int32\_TYPE\_PLACEHOLDER | Specifies a port for the SMTP server. If not specified, the default IANA-assigned port 25 will be used. |
| _Tls_ | `<String>` | Specifies the usage for Transport Layer Security (TLS). The value may be 'true', 'false', or 'auto'. 'Auto' will automatically set TLS to true when the port is changed to a value different than 25. By default, TLS is false. Please note that TLS is the successor protocol to Secure Sockets Layer (SSL). |
| _Username_ | `<String>` | Specifies the SMTP server username for authenticated SMTP servers. If not specified, connection will be made without authentication. |
| _Password_ | `<String>` | Specifies the SMTP server password for authenticated SMTP servers. |
| _From_ | `<String>` | Specifies the email address from which the notification will appear to originate. Note that some servers may accept emails from specified domains only or require the email address to match the username. |
| _FromName_ | `<String>` | Specifies the from address display name |
| _RemoveCredentials_ |  | If specified, this command will remove the SMTP server credentials without removing the entire mail server configuration. |

### Examples

```
PS C:\> Set-RepositoryNotificationConfiguration smtp.mycompany.com

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Show-Repositorynotificationconfiguration

Displays the current notification configuration onto the screen

### Syntax

Show-RepositoryNotificationConfiguration \[<CommonParameters>\]

### Description

This command retrieves the current notification configuration as user-friendly screen output. This command must be invoked inside a directory initialized as a repository using the Initialize-Repository command. The current notification configuration must be set via the Set-RepositoryNotificationConfiguration command.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Show-RepositoryNotificationConfiguration

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Add-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Add-RepositorySyncFailureRecipient)
*   [Test-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Test-RepositoryNotificationConfiguration)

---

### Test-Repositorynotificationconfiguration

Tests the email notification configuration by sending a test email

### Syntax

Test-RepositoryNotificationConfiguration \[<CommonParameters>\]

### Description

This command sends a test email using the current repository configuration and reports any errors associated with the send process. This command is intended to debug the email server configuration.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Test-RepositoryNotificationConfiguration

```

### See also

*   [Initialize-Repository](https://developers.hp.com/hp-client-management/doc/Initialize-Repository)
*   [Add-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Add-RepositoryFilter)
*   [Remove-RepositoryFilter](https://developers.hp.com/hp-client-management/doc/Remove-RepositoryFilter)
*   [Get-RepositoryInfo](https://developers.hp.com/hp-client-management/doc/Get-RepositoryInfo)
*   [Invoke-RepositorySync](https://developers.hp.com/hp-client-management/doc/Invoke-RepositorySync)
*   [Invoke-RepositoryCleanup](https://developers.hp.com/hp-client-management/doc/Invoke-RepositoryCleanup)
*   [Set-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Set-RepositoryNotificationConfiguration)
*   [Clear-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Clear-RepositoryNotificationConfiguration)
*   [Get-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Get-RepositoryNotificationConfiguration)
*   [Show-RepositoryNotificationConfiguration](https://developers.hp.com/hp-client-management/doc/Show-RepositoryNotificationConfiguration)
*   [Remove-RepositorySyncFailureRecipient](https://developers.hp.com/hp-client-management/doc/Remove-RepositorySyncFailureRecipient)

---

## Notifications

### Invoking toast Notification

This module provides functionality for invoking toast notifications.

The following functionality is currently available:



| Function | Description |
| --- | --- |
| [Invoke-HPNotification](https://developers.hp.com/hp-client-management/doc/Invoke-HPNotification) | Triggers a toast notification |
| [Invoke-HPNotificationFromXML](https://developers.hp.com/node/250746) | Triggers a toast notification from XML |

---

### Invoke-Hpnotificationfromxml

Triggers a toast notification from XML

### Syntax

Invoke-HPNotificationFromXML \[-Expiration <Int32>\] \[-TitleBarHeader <String>\] \[-TitleBarIcon <FileInfo>\] -XmlPath <FileInfo> -ActionsJsonPath <FileInfo> \[<CommonParameters>\]

Invoke-HPNotificationFromXML \[-Expiration <Int32>\] \[-TitleBarHeader <String>\] \[-TitleBarIcon <FileInfo>\] -XmlPath <FileInfo> \[-ActionsJson <String>\] \[<CommonParameters>\]

Invoke-HPNotificationFromXML \[-Expiration <Int32>\] \[-TitleBarHeader <String>\] \[-TitleBarIcon <FileInfo>\] -Xml <String> -ActionsJsonPath <FileInfo> \[<CommonParameters>\]

Invoke-HPNotificationFromXML \[-Expiration <Int32>\] \[-TitleBarHeader <String>\] \[-TitleBarIcon <FileInfo>\] -Xml <String> \[-ActionsJson <String>\] \[<CommonParameters>\]

### Description

This command triggers a toast notification from XML. Similar to the Invoke-HPNotification command, this command triggers toast notifications, but this command is more flexible and allows for more customization.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Expiration_ | Int32\_TYPE\_PLACEHOLDER | Specifies the life of the toast notification in minutes whether toast notification is on the screen or in the Action Center. If not specified, the invoked toast notification remains on screen until dismissed. |
| _TitleBarHeader_ | `<String>` | Specifies the text of the toast notification in the title bar. If not specified, the text will default to "HP System Notification". |
| _TitleBarIcon_ | `<FileInfo>` | Specifies the icon of the toast notification in the title bar. If not specified, the icon will default to the HP logo. Please note that the color of the icon might be inverted depending on the background color of the title bar. |
| _Xml_ | `<String>` | Specifies the schema XML content of the toast notification. Please specify either Xml or XmlPath, but not both. |
| _XmlPath_ | `<FileInfo>` | Specifies the file path to the schema XML content of the toast notification. Please specify either Xml or XmlPath, but not both. |
| _ActionsJson_ | `<String>` | Specifies the actions that should be map the button id(s) (if any specified in XML) to the command(s) to call upon clicking the corresponding button. You can specify either ActionsJson or ActionsJsonPath, but not both.<br />Please note that button actions are registered in HKEY\_CURRENT\_USER in the registry. Button actions will persist until the user logs off.<br />Example to reboot the system upon clicking the button:<br />\[<br />{<br />"id":"rebootnow",<br />"cmd":"C:\\Windows\\System32\\shutdown.exe -r -t 0 -f"<br />}<br />\] |
| _ActionsJsonPath_ | `<FileInfo>` | Specifies the file path to the actions that should be map the button id(s) (if any specified in XML) to the command(s) to call upon clicking the corresponding button. You can specify either ActionsJson or ActionsJsonPath, but not both.<br />Please note that button actions are registered in HKEY\_CURRENT\_USER in the registry. Button actions will persist until the user logs off. |

### Examples

```

PS C:\> Invoke-HPNotificationFromXML -XmlPath 'C:\path\to\schema.xml' -ActionsJsonPath 'C:\path\to\actions.json'
```

```

PS C:\> Invoke-HPNotificationFromXML -XmlPath 'C:\path\to\schema.xml' -ActionsJson '[
PS C:\>  {
PS C:\>     "id":"rebootnow",
PS C:\>     "cmd":"C:\\Windows\\System32\\shutdown.exe -r -t 0 -f"
PS C:\>  }
PS C:\> ]'
```

```

PS C:\> Invoke-HPNotificationFromXML -XmlPath 'C:\path\to\schema.xml'
```

---

### Invoke-Hpnotification

Triggers a toast notification

### Syntax

Invoke-HPNotification \[-Title\] <String> \[-Message\] <String> \[\[-LogoImage\] <FileInfo>\] \[\[-Expiration\] <Int32>\] \[\[-TitleBarHeader\] <String>\] \[\[-TitleBarIcon\] <FileInfo>\] \[\[-Signature\] <String>\] \[\[-Dismiss\] <Boolean>\] \[<CommonParameters>\]

### Description

This command triggers a toast notification.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Title_ | `<String>` | Specifies the title to display. This parameter is mandatory. Please note, an empty string is not allowed. |
| _Message_ | `<String>` | Specifies the message to display. This parameter is mandatory. Please note, an empty string is not allowed. |
| _LogoImage_ | `<FileInfo>` | Specifies the image file path to be displayed |
| _Expiration_ | Int32\_TYPE\_PLACEHOLDER | Specifies the life of the toast notification in minutes whether toast notification is on the screen or in the Action Center. If not specified, the invoked toast notification remains on screen until dismissed. |
| _TitleBarHeader_ | `<String>` | Specifies the text of the toast notification in the title bar. If not specified, the text will default to "HP System Notification". |
| _TitleBarIcon_ | `<FileInfo>` | Specifies the icon of the toast notification in the title bar. If not specified, the icon will default to the HP logo. Please note that the color of the icon might be inverted depending on the background color of the title bar. |
| _Signature_ | `<String>` | Specifies the text to display below the message at the bottom of the toast notification in a smaller font. Please note that on older versions of Windows that don't support attribution text, the signature will just be displayed as another text element in the same font as the message. |
| _Dismiss_ | `<Boolean>` | If set to true or not specified, the toast notification will show a Dismiss button to dismiss the notification. If set to false, the toast notification will not show a Dismiss button and will disappear from the screen and go to the Action Center after 5-7 seconds of invocation. Please note that dismissing the notification overrides any specified Expiration time as the notification will not go to the Action Center once dismissed. |

### Examples

```
PS C:\> Invoke-HPNotification -Title "My title" -Message "My message" -Dismiss $false

```

```
PS C:\> Invoke-HPNotificataion -Title "My title" -Message "My message" -Signature "Foo Bar" -Expiration 5

```

---


## Displays

### Working with Displays

This module provides functionality for configuring connected displays.

The following functionality is currently available:



| Function | Description |
| --- | --- |
| [Get-HPDisplay](https://developers.hp.com/hp-client-management/doc/Get-HPDisplay) | Retrieves features supported on connected displays |
| [Set-HPDisplay](https://developers.hp.com/hp-client-management/doc/Set-HPDisplay) | Sets features supported on connected displays |
| [Update-HPDisplayFirmware](https://developers.hp.com/hp-client-management/doc/Update-HPDisplayFirmware) | Updates firmware on connected displays if available |

## Supported Displays

2024 Monitors:

*   HP 524pu
*   HP 527pu
*   HP 524pm
*   HP 527pm
*   HP 534pm
*   HP 524pf
*   HP 524pn
*   HP 524pq
*   HP 740pm
*   HP 727pq
*   HP 732pk
*   HP 724pf
*   HP 734pm
*   HP 724pn
*   HP 727pm
*   HP 727pk
*   HP 738pu
*   HP 724pu
*   HP 727pu
*   HP 527da
*   HP 524 da

2023 Monitors:

*   HP E27k G5
*   HP E27q G5
*   HP E24 G5
*   HP E24t G5
*   HP E22 G5
*   HP E24u G5
*   HP E24q G5
*   HP E32k G5
*   HP E27u G5
*   HP E45c G5
*   HP E27 G5

2022 Monitors:

*   HP P24h G5
*   HP P27h G5
*   HP P27 G5
*   HP P32u G5
*   HP P22h G5
*   HP Z24m G3
*   HP Z32k G3
*   HP P22 G5
*   HP P24 G5
*   HP Z24q G3
*   HP P24v G5
*   HP P22v G5

2021 Monitors:

*   HP Z25xs G3
*   \- HP Z27u G3
*   HP Z27k G3
*   HP E34m G4
*   HP E24mv G4
*   HP Z40c G3
*   HP Z34c G3
*   HP E24u G4
*   HP P24a G4
*   HP E24m G4
*   HP Z24u G3
*   HP P34hc G4
*   HP Z27xs G3
*   HP E27u G4

2020 Monitors:

*   HP E27q G4
*   HP E24t G4
*   HP Z24f G3
*   HP E24d G4
*   HP E24q G4
*   HP E24 G4
*   HP E23 G4
*   HP E27d G4
*   HP Z24n G3
*   HP E27 G4
*   HP E22 G4
*   HP E24i G4
*   HP Z27q G3

---

### Get-Hpdisplay

Retrieves features supported on connected displays

### Syntax

Get-HPDisplay \[\[-SerialNumber\] <String\[\]>\] \[<CommonParameters>\]

### Description

This command retrieves features supported on connected displays.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SerialNumber_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the serial number of the display(s) to retrieve information for. If multiple serial number(s) are given and multiple displays are connected, return data will only show information for Displays associated with specified serial number(s). If not specified, information for all connected displays will be returned. |

### Examples

```powershell
PS C:\> Get-HPDisplay -SerialNumber "CN40380ARD"
```

---

### Set-Hpdisplay

Sets features supported on connected displays

### Syntax

Set-HPDisplay \[\[-SerialNumber\] <String\[\]>\] \[\[-Brightness\] <Int32>\] \[\[-CurrentResolution\] <String>\]
\[\[-Frequency\] <Int32>\] \[\[-Contrast\] <Int32>\] \[\[-ActiveInput\] <String>\] \[\[-AutoInputEnabled\] <Boolean>\]
\[\[-PowerManagement\] <String>\] \[\[-MuteSpeaker\] <Boolean>\] \[\[-BuiltInAudio\] <String>\] \[\[-USBCPort\] <String>\]
\[\[-BlackStretch\] <String>\] \[\[-ColorPreset\] <String>\] \[\[-SpeakerVolume\] <Int32>\]
\[\[-RestrictFileXfer\] <Boolean>\] \[<CommonParameters>\]

### Description

This command sets features supported on connected displays.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _SerialNumber_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the serial number of the display(s) to retrieve information for. If multiple serial number(s) are given and multiple diplays are connected, return data will only show information for Displays associated with specified serial number(s). If not specified, information for all connected displays will be returned. |
| _ActiveInput_ | `<String>` | Specifies the active input to set to the display. Valid values are: VGA1, VGA2, DigitalDVI1, DigitalDVI2, CompositeVideo1, CompositeVideo2, SVideo1, SVideo2, Tuner1, Tuner2, Tuner3, Component1, Component2, Component3, HDMI1, HDMI2, DP1, DP2, USBCVideo1, USBCVideo2, USBCVideo1Thunderbolt4, USBCVideo2Thunderbolt4 |
| _AutoInputEnabled_ | `<Boolean>` | If set to false, auto input switch value will be set to 'Off'. If set to true, auto input switch value will be set to 'On'. |
| _BlackStretch_ | `<String>` | Specifies the black stretch value to set to the display. Valid values are: Off, Low, Medium, High |
| _Brightness_ | Int32\_TYPE\_PLACEHOLDER | Specifies the brightness to set to the display. Valid values are between 0 and 100. If a decimal value is specified, it will be rounded to the nearest integer. |
| _BuiltInAudio_ | `<String>` | Specifies the built-in audio preset to set to the display. Valid values are: Music, Movie, Voice |
| _ColorPreset_ | `<String>` | Specifies the color preset to set to the display. See full list below. |
| _Contrast_ | Int32\_TYPE\_PLACEHOLDER | Specifies the contrast to set to the display. Valid values are between 0 and 100. If a decimal value is specified, it will be rounded to the nearest integer. |
| _CurrentResolution_ | `<String>` | Specifies the resolution to set to the display. Format of string 1234x1234 where two integers are separated by 'x' and the first integer is the width and the second integer is the height. |
| _Frequency_ | Int32\_TYPE\_PLACEHOLDER | Specifies the frequency in Hz to set the display. If a decimal value is specified, it will be rounded to the nearest integer. |
| _MuteSpeaker_ | `<Boolean>` | If set to false, speaker mute value will be set to 'UnMute'. If set to true, speaker mute value will be set to 'Mute'. |
| _PowerManagement_ | `<String>` | Specifies the power management value to set to the display. Valid values are: PowerSaverMode, PerformanceMode |
| _RestrictFileXfer_ | `<Boolean>` | If set to false, the display will not restrict file transfer. If set to true, the display will restrict file transfer. |
| _SpeakerVolume_ | Int32\_TYPE\_PLACEHOLDER | Specifies the volume level to set to the display's speaker. Valid values are between 0 and 100. If a decimal value is specified, it will be rounded to the nearest integer |
| _USBCPort_ | `<String>` | Specifies the USB-C port to set to the display. Valid values are: USBCVideoUSB20, USBCVideoUSB30, USBCVideoUSB32, USB3840216060HzUSB20, USB3840216030HzUSB30, USB2560144060HzUSB20, USB2560144060HzUSB30, USB34401440100HzUSB20, USB3440144060HzUSB30, USB1920120060HzUSB20, USB1920120060HzUSB30, USB5120216060HzUSB20, USB5120216060HzUSB30, USB3840216060HzUSB30, USBCAUTO. |

### Notes

Valid values for ColorPreset are: UserCalib1,UserCalib2,UserCalib3,UserCalib4,UserCalib5,UserCalib6,UserCalib7,UserCalib8,UserCalib9,UserCalib10,

UserCalib11,UserCalib12,UserCalib13,UserCalib14,UserCalib15,UserCalib16,

DesignforprintsRGBD50,DesignforwebsRGBD65,PhotographyP3D65,HDvideoBT709,sRGBD50,BT7709,BT601,P3D65,

AdobeRGBE50,AdobeRGBD65,BT2020,sRGBD65,EPD,DICOM,FullNative,

SDRCustom1,SDRCustom2,SDRCustom3,SDRCustom4,SDRCustom5,

Warm,Cool,Neutral,Standard,Gaming,Cinema,Multimedia,Photo, HPEnhance,CustomRGB,RetroGamingMode,ColorMatch,PQHDR10,HLG,SDRLowBlueLight,ReadingMode,Vivid,Movie,Night,DisplayP3,

ColorPresetsRGB,ColorPresetPanelNative,ColorPresetCinema,ColorPresetWarm,ColorPresetStandardNeutral,ColorPresetCool,ColorPresetGaming,ColorPresetVivid,

ColorPresetCustomColor,ColorPresetHPEnhancePlus,ColorPresetLowBlueLight,Reading,

TrNight,TrDicom,TrDicom0,TrDicom2,

Text,Custom,MovieorCinema,

LegacyPhoto,LegacyGaming,LegacyHPEnhancePlus,LegacyLowBlueLight,LegacyReading,LegacyNight,

LegacyTechnicolor,LegacyMultimedia,LegacyWarm,LegacyNeutralorStandard,LegacyCool,

Full,sRGB,Rec709BT709,AdobeRGB,Rec601,DCIP3,

Custom1,Custom2,Custom3,Custom4,Custom5,Custom6,Custom7,DCIM,Custom1,Custom2,Custom3,Custom4,Custom5,Custom6,Custom7,

DCIM

### Examples

```powershell
PS C:\> Set-HPDisplay -Contrast 70 -ActiveInput DigitalDVI2
```

---


## Security

### Invoking Security functions

This module provides functionality for querying platform data, invoking credential validation, etc.

The following functionality is currently available:



| Function | Description |
| --- | --- |
| [Get-HPPlatformData](https://developers.hp.com/hp-client-management/doc/Get-HPPlatformData) | Retrieves platform data |
| [Get-HPPlatformCertificateData](https://developers.hp.com/hp-client-management/doc/Get-HPPlatformCertificateData) | Retrieves platform certificate data |
| [Invoke-HPPlatformIntegrityCheck](https://developers.hp.com/hp-client-management/doc/Invoke-HPPlatformIntegrityCheck) | Invokes integrity check |
| [Invoke-HPTPMCredentialValidation](https://developers.hp.com/hp-client-management/doc/Invoke-HPTPMCredentialValidation) | Invokes TPM credential validation |
| [Invoke-HPCertificateChainValidation](https://developers.hp.com/hp-client-management/doc/Invoke-HPCertificateChainValidation) | Invokes certificate chain validation |

---

### Get-Hpplatformcertificatedata

Retrieves the contents of an x509 Platform Certificate

### Syntax

Get-HPPlatformCertificateData \[-UseLocalPlatformCertificate\] \[<CommonParameters>\]

Get-HPPlatformCertificateData \[-PlatformCertificate <String>\] \[<CommonParameters>\]

### Description

This command retrieves the contents of an x509 Platform Certificate according to the TCG Platform Certificate Profile, version 1.1 Revision 19. The output is an object convertible to Json.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _PlatformCertificate_ | `<String>` | Specifies the path to the platform certificate file that is stored offline either locally in the PC or in a shared location. If the platform certificate belongs to the PC, the tool installs platform certificate in the local PC in both EFI system partition and UEFI variable.<br />Please follow the following format for the Platform Certificate file: HPInc.serial\_`<number>`.BASE.cer |
| _UseLocalPlatformCertificate_ | `<SwitchParameter>` | If specified, this command uses the Platform Certificate that is stored locally in the PC. The default locations for the certificate are the EFI System Partition /boot/tcg/cert/platform/ or \\efi\\tcg\\cert\\platform and UEFI Variable HpPlatformCertificateBase GUID {B44ED025-A047-4312-9E62-A1C3ACC8684D} |

### Examples

```javascript
PS C:\> Get-HPPlatformCertificateData -UseLocalPlatformCertificate
```

```javascript
PS C:\> Get-HPPlatformCertificateData -PlatformCertificate "C:\Users\Tools\Test\HPInc.SCN3315BDN.BASE.cer"
```

---

### Get-Hpplatformdata

Retrieves the current PC configuration

### Syntax

Get-HPPlatformData \[<CommonParameters>\]

### Description

This command reads the current PC configuration and returns it into an object that matches with the TCG Platform Certificate Profile specification, version 1.1 Revision 19

### Parameters

No parameters defined.

### Examples

```powershell
PS C:\> Get-HPPlatformData | ConvertTo-Json -Depth 8 ```

---

### Invoke-HPCertificateChainValidation

Verifies whether a Platform Certificate has been issued by HP, by validating intermediate and root certificates trust chain.

### Syntax

Invoke-HPCertificateChainValidation \[-UseLocalPlatformCertificate\] -Ica <String> -RootCa <String> \[<CommonParameters>\]

Invoke-HPCertificateChainValidation \[-PlatformCertificate <String>\] -Ica <String> -RootCa <String> \[<CommonParameters>\]

### Description

This command receives intermediate and root CAs offline paths in parameter and validate the trust chain. Intermediate and root CAs need to be downloaded online and stored offline either locally in the PC or in a shared location.

ICA location can be retrieved from the certificate by using Get-PlatformCertificateData command.

For instance, the following command will retrieve the online location of the ICA for certificate HPInc.00036635D0.BASE.cer:

Invoke-HPCertificateChainValidation-PlatformCertificate 'C:\\Tools\\Certificate\\HPInc.00036635D0.BASE.cer' | Select-Object -ExpandProperty PlatformCertificateGeneralData | Select-Object -ExpandProperty PlatformCertificateExtensions | Select-Object -ExpandProperty PlatformCertificateAuthorityInfoAccess | Select-Object AccessLocation

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _PlatformCertificate_ | `<String>` | Specifies the path to the platform certificate file that is stored offline either locally in the PC or in a shared location. If the platform certificate belongs to the PC, the tool installs platform certificate in the local PC in both EFI system partition and UEFI variable.<br />Please follow the following format for the Platform Certificate file: HPInc.serial\_`<number>`.BASE.cer |
| _UseLocalPlatformCertificate_ | `<SwitchParameter>` | If specified, this command uses the Platform Certificate that is stored locally in the PC. The default locations for the certificate are the EFI System Partition /boot/tcg/cert/platform/ or \\efi\\tcg\\cert\\platform and UEFI Variable HpPlatformCertificateBase GUID {B44ED025-A047-4312-9E62-A1C3ACC8684D} |
| _Ica_ | `<String>` | Specifies the Intermediate CA of the HP base Platform Certificate |
| _RootCa_ | `<String>` | Specifies the Root CA of the HP base Platform Certificate |

### Examples

```powershell
PS C:\> Invoke-HPCertificateChainValidation -UseLocalPlatformCertificate -Ica 'C:\Users\Tools\Test\ica-2024.cer' -RootCa 'C:\Users\Tools\Test\hp_ps1.cer'
```

```powershell
PS C:\> Invoke-HPCertificateChainValidation -PlatformCertificate 'C:\Users\Tools\Test\ HPInc.00036635D0.BASE.cer' -Ica 'C:\Users\Tools\Test\ica-2024.cer' -RootCa 'C:\Users\Tools\Test\hp_ps1.cer'
```

---

### Invoke-HPPlatformIntegrityCheck

Verifies components and configuration on the PC match Platform Certificate.

### Syntax

Invoke-HPPlatformIntegrityCheck \[-UseLocalPlatformCertificate\] \[<CommonParameters>\]

Invoke- HPPlatformIntegrityCheck \[-PlatformCertificate <String>\] \[<CommonParameters>\]

Invoke-HPPlatformIntegrityCheck \[-PlatformCertificate <String>\] \[-NoInstallPlatformCertificate\] \[<CommonParameters>\]

### Description

Verifies components and configuration on the PC match Platform Certificate.

Components and configuration in scope include disk, memory, processor, graphic card, chassis, baseboard, networking, PCIe devices, NVMe devices, BIOS firmware version, feature byte, UUID, and Endpoint Security Controller (EpSC) ID certificate hash included in the PC.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _PlatformCertificate_ | `<String>` | Specifies the path to the platform certificate file that is stored offline either locally in the PC or in a shared location. If the platform certificate belongs to the PC, the tool installs platform certificate in the local PC in both EFI system partition and UEFI variable.<br />Please follow the following format for the Platform Certificate file: HPInc.serial\_`<number>`.BASE.cer |
| _UseLocalPlatformCertificate_ | `<SwitchParameter>` | If specified, this command uses the Platform Certificate that is stored locally in the PC. The default locations for the certificate are the EFI System Partition /boot/tcg/cert/platform/ or \\efi\\tcg\\cert\\platform and UEFI Variable HpPlatformCertificateBase GUID {B44ED025-A047-4312-9E62-A1C3ACC8684D} |
| _NoInstallPlatformCertificate_ | `<SwitchParameter>` | If specified, the command will not save the Platform Certificate passed into the PlatformCertificate parameter locally on the PC. |

### Examples

```powershell
PS C:\> Invoke-HPPlatformIntegrityCheck -UseLocalPlatformCertificate
```

```powershell
PS C:\> Invoke-HPPlatformIntegrityCheck -PlatformCertificate 'C:\Users\Tools\Test\ HPInc.SCN3315BDN.BASE.cer'
```

```powershell
PS C:\> Invoke-HPPlatformIntegrityCheck -PlatformCertificate 'C:\Users\Tools\Test\ HPInc.SCN3315BDN.BASE.cer' -NoInstallPlatformCertificate
```

---

### Invoke-HPTPMCredentialValidation

Verifies the TPM on the PC matches the one in Platform Certificate and verifies Intermediate CA(s) and Root CA trust chain.

### Syntax

Invoke-HPTPMCredentialValidation \[-CabFile <String>\] \[-TpmCertificateChain <String\[\]>\] \[<CommonParameters>\]

### Description

This verification process ensures the TPM in the executing PC is authentic and matches Platform Certificate. It also validates that the collection of root and intermediate certificates that used to sign the TPM certificates were indeed issued by the TPM Vendors. The TPM's certificate used for this evaluation is the TPM EK Certificate found at the register of the TPM.

After successful verification, it provides the user with the confidence in the TPM to attest the validation commands executed by the verification tool.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _CabFile_ | `<String>` | Specifies the cab file to use. The user needs to download the collection of trusted TPM root and intermediate signing certificates issued by Microsoft and save it offline (e.g., locally or in a shared location). During the integrity verification execution, the tool looks in the cabFile for the intermediate and root certificates that belong to the TPM on the running PC. Then the tool validates intermediate and root certificates trust chain. This option is recommended when the user does not want to manage the TPM certificate chain individually. More information on the Microsoft package and download can be found from this link [https://learn.microsoft.com/en-us/windows-server/security/guarded-fabric-shielded-vm/guarded-fabric-install-trusted-tpm-root-certificates](https://learn.microsoft.com/en-us/windows-server/security/guarded-fabric-shielded-vm/guarded-fabric-install-trusted-tpm-root-certificates) Path to the cab file is the offline path to the collection of trusted TPM root and intermediate signing certificates issued by Microsoft. |
| _TpmCertificateChain_ | String\[\]\_TYPE\_PLACEHOLDER | Specifies the whole TPM's certificate chain for the tool to validate. The tool will try to match the TPM's EK certificate with the certificate chain passed as parameter and validate them. Path to TPM's ICA certificate is the offline path of the certificate. User needs to download the intermediate certificate(s) online and save it offline before the tool execution. RootCa is the root CA of the TPM EK certificate. Path to TPM's root certificate is the offline path of the certificate. User needs to download the root certificate online and save it offline before the tool execution. |

### Examples

```powershell
PS C:\> Invoke-HPTPMCredentialValidation -CabFile "C:\Users\Tools\Test\TrustedTpm.cab"
```

---


## Docks

### Working with Docks

This module provides functionality for querying dock information and updating dock firmware.

The following functionality is currently available:



| Function | Description |
| --- | --- |
| [Get-HPDock](https://developers.hp.com/hp-client-management/doc/Get-HPDock) | Retrieves properties on connected docks |
| [Install-HPDockWmiProvider](https://developers.hp.com/hp-client-management/doc/Install-HPDockWmiProvider) | Installs HP Dock WMI Provider |
| [Update-HPDockFirmware](https://developers.hp.com/hp-client-management/doc/update-hpdockfirmware) | Updates firmware on connected docks if available |

## Supported Docks

*   HP USB-C Dock G5
*   HP USB-C/A Dock G2
*   HP Thunderbolt Dock G4
*   HP Thunderbolt 4 100W G6 Dock
*   HP Thunderbolt 4 Ultra 180W G6 Dock
*   HP Thunderbolt 4 Ultra 280W G6 Dock

---

### Get-Hpdock

Retrieves properties on connected docks

### Syntax

Get-HPDock \[-AutoInstallWmiProvider\] \[<CommonParameters>\]

### Description

This command retrieves properties on connected docks.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _AutoInstallWmiProvider_ | `<SwitchParameter>` | If specified, run Install-HPDockWmiProvider first to ensure WMI Provider is installed. |

### Examples

```powershell
PS C:\> Get-HPDock -AutoInstallWmiProvider
```

---

### Install-Hpdockwmiprovider

Installs HP Dock WMI Provider

### Syntax

Install-HPDockWmiProvider \[-Force\] \[<CommonParameters>\]

### Description

This command installs HP Dock WMI Provider with the version specified in https://www.hp.com/us-en/solutions/client-management-solutions/download.html

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Force_ | `<SwitchParameter>` | If specified, the command installs WMI provider regardless if WMI provider is already installed and if so, regardless of the current version. |

### Examples

```powershell
PS C:\> Install-HPDockWmiProvider -Force
```

---


## FAQ

### Faq

**Q: What version of PowerShell do I need?**

You will need PowerShell 5.1 or later. To check the version, open up PowerShell and type:

```
$PSVersionTable.PSVersion
```

The result should be at least '5' under Major version and '1' under Minor version.

PowerShell ISE is not recommended and may produce inconsistent results.

**Q: I am getting an Out of Memory error running some functions randomly**

Unfortunately this is not something that can usually be addressed in scripts. Consider increasing the memory allocated by PowerShell in general. For more information, see [Learn How to Configure PowerShell Memory](https://blogs.technet.microsoft.com/heyscriptingguy/2013/07/30/learn-how-to-configure-powershell-memory/)

**Q: I can no longer change the BIOS settings, and I know my BIOS setup password is correct.**

If some application attempts to change the BIOS settings with the wrong password a number of times (more than 3) the BIOS will go into lockdown mode. You will need to reboot the computer to clear the lockdown mode.

**Q: How do I tell what version of CMSL modules I am running?**

There are a few ways to tell the version of the CMSL modules. If they are already loaded, you can use:

```
PS c:\> Get-Module -ListAvailable -Name 'HP.*'

ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Script     1.0.0.0    MyModule                            ...
```

The CMSL function Get-HPCMSLEnvironment will get the system information including the CMSL module versions:

```
PS c:\> Get-HPCMSLEnvironment > systeminfo.txt
```

If you do not show a CMSL module loaded, you must first load the module, then use Get-Module:

```
PS c:\> Import-Module MyModule
PS c:\> Get-Module MyModule

ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Script     1.0.0.0    MyModule                            ...
```

**Q: I want to install modules manually; where should I place them?**

*   Install modules per user by copying them to _%UserProfile%\\Documents\\WindowsPowerShell\\Modules_.
*   Install modules for all users by copying them to _%ProgramFiles%\\WindowsPowerShell\\Modules_.

Please make sure you use a well-formed directory name. In general, the module folder name (e.g. HP.Softpaq) should be directly under one of the directories listed above).

**Q: How do I do a silent install of the library?**

Run the installer with the /SILENT flag, which will suppress prompts while using defaults, but still show progress. If you do not want to see progress either, specify the /VERYSILENT switch instead.

To automate installation with custom options, or to see additional switches, consult the command line options documentation for InnoSetup, at [http://www.jrsoftware.org/ishelp/topic\_setupcmdline.htm](http://www.jrsoftware.org/ishelp/topic_setupcmdline.htm)

**Q: I want to install the modules from the PowerShell Gallery; how do I do that?**

Ensure that you have the latest version of NuGet. From an administrative PowerShell window type:

```
PS C:\> Install-PackageProvider -Name NuGet -Force

Name            Version                Source                  Summary
----            -------                ------                  -------
Nuget           2.8.5.208              https://onege...        NuGet provider for the OneGet meta-package manage
```

Install the latest version of PowerShellGet. From an administrative PowerShell window type:

```
PS C:\> Install-Module -Name PowerShellGet  -Force
```

It is recommended that you exit the PowerShell instance at this point, to resolve any command resolution issues.

_Note that due to a bug in the way some versions of PowerShellGet versions are published, you may have to specify the -SkipPublisherCheck argument._ For example:

```
PS C:\> Install-Module -Name PowerShellGet -SkipPublisherCheck -Force
```

If you encounter this issue and would like more information, please contact the PowerShell team through their Github repository, at [https://github.com/PowerShell/PowerShellGet](https://github.com/PowerShell/PowerShellGet).

Next, review the license agreement on the PowerShell Gallery product page ([https://www.powershellgallery.com/packages/HPCMSL](https://www.powershellgallery.com/packages/HPCMSL)) , and Install HP Client Management Script Library. From an administrative PowerShell window type:

```
PS C:\> Install-Module -Name HPCMSL -AcceptLicense
```

The PowerShell modules should download and install into the execution path.

**Q: I want to use CMSL modules without having to install them; how do I do that?**

Extract the modules to a local folder of your choice using the correct version of the CMSL EXE.

```
PS C:\> mkdir localdir
PS C:\> hp-cmsl.exe /VERYSILENT /SP- /UnpackOnly="True" /DestDir="C:\localdir\hp-cmsl"
```

Import the modules from your local folder

```
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Consent\HP.Consent.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Private\HP.Private.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Utility\HP.Utility.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.ClientManagement\HP.ClientManagement.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Firmware\HP.Firmware.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Softpaq\HP.Softpaq.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Repo\HP.Repo.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Sinks\HP.Sinks.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Retail\HP.Retail.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Notifications\HP.Notifications.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Displays\HP.Displays.psd1
PS C:\> Import-Module -Force C:\localdir\hp-cmsl\modules\HP.Security\HP.Security.psd1

```

**Q: Where can I see a copy of the End User License Agreement?**

You can review the license here:

[https://developers.hp.com/node/11493](/node/11493)

---

## Other

### Get-Hpdeviceassettag

Retrieves the device asset tag of the current device unless specified for another platform

### Syntax

Get-HPDeviceAssetTag \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPDeviceAssetTag \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the asset tag (also called the Asset Tracking Number) for a device. Some computers may have a blank asset tag or have the asset tag pre-populated with the serial number.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPDeviceAssetTag

```

---

### Get-Hpdevicebootinformation

Retrieves the current boot mode and uptime on the current device

### Syntax

Get-HPDeviceBootInformation \[<CommonParameters>\]

### Description

This command returns an object containing the system uptime, last boot time, whether secure boot is enabled, and whether the system was booted in UEFI or Legacy mode.

### Parameters

No parameters defined.

### Examples

```
PS C:\> $IsUefi = (Get-HPDeviceBootInformation).Mode -eq "UEFI"

```

---

### Get-Hpdevicedetails

Retrieves the platform name, system ID, or operating system support using either the platform name or its system ID

### Syntax

Get-HPDeviceDetails \[\[-Platform\] <String>\] \[-OSList\] \[\[-Url\] <String>\] \[<CommonParameters>\]

Get-HPDeviceDetails \[-Name\] <String> \[\[-Like\]\] \[-OSList\] \[\[-Url\] <String>\] \[<CommonParameters>\]

### Description

This command retrieves information about the platform, given a platform name or system ID. This command can be used to convert between platform name and system IDs. Note that a platform may have multiple system IDs, or a system ID may map to multiple platforms.

This command returns the following information:

*   SystemID: the system ID for this platform
*   FamilyID: the platform family ID
*   Name: the name of the platform
*   DriverPackSupport: this platform supports driver packs

Note that this command is not supported in WinPE.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Platform_ | `<String>` | Specifies a platform id (a 4-digit hexadecimal number) for the command to query with |
| _Name_ | `<String>` | Specifies a platform name for the command to query with. The name must match the platform name exactly, unless the -Match/-Like parameter is also specified. |
| _Like_ |  | Allows the query to return outputs based on a substring match rather than an exact match. If the platform contains the substring defined by the -Name parameter, it will be included in the output. This parameter can also be specified as -Match, for backwards compatibility.<br />However, this parameter is now obsolete and may be removed at a future time. You can simply pass wildcards in the name field instead of using the like parameter.<br />For example, "Get-HPDeviceDetails -name '\*EliteBook\*'" and "Get-HPDeviceDetails -like -name 'EliteBook'" are identical. |
| _OSList_ |  | If specified, this command returns the list of supported operating systems for the specified platform. |
| _Url_ | `<String>` | Specifies an alternate location for the HP Image Assistant (HPIA) platform list XML. This URL must be HTTPS. If not specified, https://hpia.hpcloud.hp.com/ref is used by default. |

### Examples

```
PS C:\> Get-HPDeviceDetails -Platform 8100

```

```
PS C:\> Get-HPDeviceDetails -Name 'HP ProOne 400 G3 20-inch Touch All-in-One PC'

```

```
PS C:\> Get-HPDeviceDetails -Like -Name '840 G5'

```

---

### Get-Hpdevicemanufacturer

Retrieves the current device manufacturer on the current device unless specified for another platform

### Syntax

Get-HPDeviceManufacturer \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPDeviceManufacturer \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the current device manufacturer on the current device unless specified for another platform via Windows Management Instrumentation (WMI). In some cases, the BIOS manufacturer may be different from the device manufacturer.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPDeviceManufacturer

```

---

### Get-Hpdevicemodel

Retrieves the official marketing name of the current device unless specified for another platform

### Syntax

Get-HPDeviceModel \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPDeviceModel \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the official marketing name of the current device unless specified for another platform.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPDeviceModel

```

---

### Get-Hpdevicepartnumber

Retrieves the Part Number (or SKU) on the current device unless specified for another platform

### Syntax

Get-HPDevicePartNumber \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPDevicePartNumber \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the Part Number (or SKU) on the current device unless specified for another platform. This command is equivalent to reading the field SystemSKUNumber from the WMI class Win32\_ComputerSystem.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPDevicePartNumber

```

---

### Get-Hpdeviceproductid

Retrieves the product ID of the current device unless specified for another platform

### Syntax

Get-HPDeviceProductID \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPDeviceProductID \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the product ID of the current device unless specified for another platform. The product ID (Platform ID) is a 4-character hexadecimal string. It corresponds to the Product field in the Win32\_BaseBoard WMI class.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPDeviceProductID

```

---

### Get-Hpdeviceserialnumber

Retrieves the serial number on the current device unless specified for another platform

### Syntax

Get-HPDeviceSerialNumber \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPDeviceSerialNumber \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the serial number on the current device unless specified for another platform via Windows Management Instrumentation (WMI). This command is equivalent to reading the SerialNumber property from the Win32\_BIOS WMI class. If no parameters are specified, this command will create its own one-time-use CIMSession object using the current device and default the CIMSession to use DCOM protocol.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPDeviceSerialNumber

```

---

### Get-Hpdeviceuuid

Retrieves the device UUID via standard OS providers on the current device unless specified for another platform

### Syntax

Get-HPDeviceUUID \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPDeviceUUID \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the system UUID via standard OS providers. The result should normally match the result from the Get-HPBIOSUUID command.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> Get-HPDeviceUUID

```

---

### Get-Hpdeviceuptime

Retrieves the system boot time and uptime of the current device unless specified for another platform

### Syntax

Get-HPDeviceUptime \[\[-ComputerName\] <String>\] \[<CommonParameters>\]

Get-HPDeviceUptime \[-CimSession\] <CimSession> \[<CommonParameters>\]

### Description

This command retrieves the system boot time and uptime of the current device unless specified for another platform.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _ComputerName_ | `<String>` | Specifies a target computer for this command to create its own one-time-use CIMSession object using with. If not specified, this command will use the current device as the target computer for this command. The alias 'Target' can also be used for this parameter. |
| _CimSession_ | `<CimSession>` | Specifies a pre-established CIMSession object (as created by the [New-CIMSession](https://docs.microsoft.com/en-us/powershell/module/cimcmdlets/new-cimsessionoption?view=powershell-5.1) command) or a ComputerName in string format for this command to create a one-time-use CIMSession object with |

### Examples

```
PS C:\> (Get-HPDeviceUptime).BootTime

```

---

### Get-Hpuefivariable

Retrieves a UEFI variable value

### Syntax

Get-HPUEFIVariable \[-Name\] <String> \[-Namespace\] <String> \[\[-AsString\]\] \[<CommonParameters>\]

### Description

This command retrieves the value of a UEFI variable.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Name_ | `<String>` | Specifies the name of the UEFI variable to read |
| _Namespace_ | `<String>` | Specifies a custom namespace. The namespace must be in the format of a UUID, surrounded by curly brackets. |
| _AsString_ |  | If specified, this command will return the value as a string rather than a byte array. Note that the commands in this library support UTF-8 compatible strings. Other applications may store strings that are not compatible with this translation, in which<br />case the caller should retrieve the value as an array (default) and post-process it as needed. |

### Notes

*   The process calling these commands must be able to acquire 'SeSystemEnvironmentPrivilege' privileges for the operation to succeed. For more information, refer to "Modify firmware environment values" in the linked documentation below.
*   This command is not supported on legacy mode, only on UEFI mode.
*   This command requires elevated privileges.

### Examples

```
PS C:\> PS>Get-HPUEFIVariable -GlobalNamespace -Name MyVariable

```

```
PS C:\> PS>Get-HPUEFIVariable -Namespace "{21969aa8-681f-46be-90f0-6019ce9b0ee7}"  -Name MyVariable

```

### See also

*   [UEFI Specification 2.3.1 Section 7.2](https://www.uefi.org/specifications)
*   [Modify firmware environment values](https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/modify-firmware-environment-values)

---

### Remove-Hpuefivariable

Removes a UEFI variable

### Syntax

Remove-HPUEFIVariable \[-Name\] <String> \[-Namespace\] <String> \[<CommonParameters>\]

### Description

This command removes a UEFI variable from a well-known or user-supplied namespace.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Name_ | `<String>` | Specifies the name of the UEFI variable to remove |
| _Namespace_ | `<String>` | Specifies a custom namespace. The namespace must be in the format of a UUID, surrounded by curly brackets. |

### Notes

*   The process calling these commands must be able to acquire 'SeSystemEnvironmentPrivilege' privileges for the operation to succeed. For more information, refer to "Modify firmware environment values" in the linked documentation below.
*   This command is not supported on legacy mode, only on UEFI mode.
*   This command requires elevated privileges.

### Examples

```
PS C:\> PS>Remove-HPUEFIVariable -Namespace "{21969aa8-681f-46be-90f0-6019ce9b0ee7}" -Name MyVariable

```

### See also

*   [Modify firmware environment values](https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/modify-firmware-environment-values)

---

### Set-Hpuefivariable

Sets a UEFI variable value

### Syntax

Set-HPUEFIVariable \[-Name\] <String> \[-Value\] <Object> \[-Namespace\] <String> \[\[-Attributes\] {VARIABLE\_ATTRIBUTE\_NON\_VOLATILE | VARIABLE\_ATTRIBUTE\_BOOTSERVICE\_ACCESS | VARIABLE\_ATTRIBUTE\_RUNTIME\_ACCESS | VARIABLE\_ATTRIBUTE\_HARDWARE\_ERROR\_RECORD | VARIABLE\_ATTRIBUTE\_AUTHENTICATED\_WRITE\_ACCESS | VARIABLE\_ATTRIBUTE\_TIME\_BASED\_AUTHENTICATED\_WRITE\_ACCESS | VARIABLE\_ATTRIBUTE\_APPEND\_WRITE}\] \[<CommonParameters>\]

### Description

This command sets the value of a UEFI variable. If the variable does not exist, this command will create the variable.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Name_ | `<String>` | Specifies the name of the UEFI variable to update or create |
| _Value_ | `<Object>` | Specifies the new value for the UEFI variable. Note that a NULL value will delete the variable.<br />The value may be a byte array (type byte\[\], recommended), or a string which will be converted to UTF8 and stored as a byte array. |
| _Namespace_ | `<String>` | Specifies a custom namespace. The namespace must be in the format of a UUID, surrounded by curly brackets. |
| _Attributes_ | `<UEFIVariableAttributes>` | Specifies the attributes for the UEFI variable. For more information, see the UEFI specification linked below.<br />Attributes may be:<br />\- VARIABLE\_ATTRIBUTE\_NON\_VOLATILE: The firmware environment variable is stored in non-volatile memory (e.g. NVRAM).<br />\- VARIABLE\_ATTRIBUTE\_BOOTSERVICE\_ACCESS: The firmware environment variable can be accessed during boot service.<br />\- VARIABLE\_ATTRIBUTE\_RUNTIME\_ACCESS: The firmware environment variable can be accessed at runtime. Note Variables with this attribute set, must also have VARIABLE\_ATTRIBUTE\_BOOTSERVICE\_ACCESS set.<br />\- VARIABLE\_ATTRIBUTE\_HARDWARE\_ERROR\_RECORD: Indicates hardware related errors encountered at runtime.<br />\- VARIABLE\_ATTRIBUTE\_AUTHENTICATED\_WRITE\_ACCESS: Indicates an authentication requirement that must be met before writing to this firmware environment variable.<br />\- VARIABLE\_ATTRIBUTE\_TIME\_BASED\_AUTHENTICATED\_WRITE\_ACCESS: Indicates authentication and time stamp requirements that must be met before writing to this firmware environment variable. When this attribute is set, the buffer, represented by pValue, will begin with an instance of a complete (and serialized) EFI\_VARIABLE\_AUTHENTICATION\_2 descriptor.<br />\- VARIABLE\_ATTRIBUTE\_APPEND\_WRITE: Append an existing environment variable with the value of pValue. If the firmware does not support the operation, then SetFirmwareEnvironmentVariableEx will return ERROR\_INVALID\_FUNCTION. |

### Notes

*   It is not recommended that the attributes of an existing variable are updated. If new attributes are required, the value should be deleted and re-created.
*   The process calling these commands must be able to acquire 'SeSystemEnvironmentPrivilege' privileges for the operation to succeed. For more information, refer to "Modify firmware environment values" in the linked documentation below.
*   This command is not supported on legacy BIOS mode, only on UEFI mode.
*   This command requires elevated privileges.

### Examples

```
PS C:\> PS>Set-HPUEFIVariable -Namespace "{21969aa8-681f-46be-90f0-6019ce9b0ee7}" -Name MyVariable -Value 1,2,3

```

```
PS C:\> PS>Set-HPUEFIVariable -Namespace "{21969aa8-681f-46be-90f0-6019ce9b0ee7}" -Name MyVariable -Value "ABC"

```

### See also

*   [UEFI Specification 2.3.1 Section 7.2](https://www.uefi.org/specifications)
*   [Modify firmware environment values](https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/modify-firmware-environment-values)

---

### Install-Hpimageassistant

Installs the latest version of HP Image Assistant ([HPIA](https://ftp.hp.com/pub/caps-softpaq/cmit/HPIA.html))

### Syntax

Install-HPImageAssistant \[\[-Extract\]\] \[\[-DestinationPath\] <String>\] \[\[-CacheDir\] <DirectoryInfo>\] \[\[-MaxRetries\] <Int32>\] \[\[-Source\] <String>\] \[\[-Quiet\]\] \[<CommonParameters>\]

### Description

This command finds the latest version of HPIA and downloads the SoftPaq. If the Extract parameter is not used, the SoftPaq is only downloaded and not executed.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Extract_ |  | If specified, this command extracts SoftPaq content to a specified destination folder. Specify the destination folder with the DestinationPath parameter.<br />If the DestinationPath parameter is not specified, the files are extracted into a new sub-folder relative to the downloaded SoftPaq executable. |
| _DestinationPath_ | `<String>` | Specifies the path to the folder in which you want to save downloaded and/or extracted files. Do not specify a file name or file name extension. If not specified, the executable is downloaded to the current folder, and the files are extracted into a new sub-folder relative to the downloaded executable. |
| _CacheDir_ | `<DirectoryInfo>` | Specifies a custom location for caching data files. If not specified, the user-specific TEMP directory is used. |
| _MaxRetries_ | Int32\_TYPE\_PLACEHOLDER | Specifies the maximum number of retries allowed to obtain an exclusive lock to downloaded files. This is relevant only when files are downloaded into a shared directory and multiple processes may be reading or writing from the same location.<br />Current default value is 10 retries, and each retry includes a 30 second pause, which means the maximum time the default value will wait for an exclusive logs is 300 seconds or 5 minutes. |
| _Source_ | `<String>` | This parameter is currently reserved for internal use only. |
| _Quiet_ |  | If specified, this command will suppress non-essential messages during execution. |

### Examples

```
PS C:\> Install-HPImageAssistant

```

```
PS C:\> Install-HPImageAssistant -Quiet

```

```
PS C:\> Install-HPImageAssistant -Extract -DestinationPath "c:\staging\hpia"

```

### See also

*   [Get-Softpaq](https://developers.hp.com/hp-client-management/doc/Get-Softpaq)
*   [Get-SoftpaqMetadataFile](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqMetadataFile)
*   [Get-SoftpaqList](https://developers.hp.com/hp-client-management/doc/Get-SoftpaqList)
*   [Clear-SoftpaqCache](https://developers.hp.com/hp-client-management/doc/Clear-SoftpaqCache)

---

### New-Hpbuilddriverpack

Creates a Driver Pack for a specified list of SoftPaqs

### Syntax

New-HPBuildDriverPack \[-Softpaqs\] <Array> \[\[-Os\] <String>\] \[\[-OSVer\] <String>\] \[\[-Path\] <DirectoryInfo>\] \[\[-Format\] <Object>\] \[-Name\] <String> \[\[-Overwrite\]\] \[<CommonParameters>\]

### Description

This command creates a Driver Pack for a specified list of SoftPaqs in the following formats:

*   NoCompressedFile - All drivers saved in a regular folder
*   ZIP - All drivers compressed in a ZIP file
*   WIM - All drivers packed in a Windows Imaging Format

Please note that this command is called in the New-HPDriverPack command if no errors occurred.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Softpaqs_ | `<Array>` | Specifies a list of SoftPaqs to be included in the Driver Pack. Additionally, this parameter can be specified by piping the output of the Get-SoftpaqList command to this command. |
| _Os_ | `<String>` | Specifies an OS for this command to filter based on. The value must be 'win10' or 'win11'. If not specified, the current platform OS is used. |
| _OSVer_ | `<String>` | Specifies an OS version for this command to filter based on. The value must be a string value specifying the target OS Version (e.g. '1809', '1903', '1909', '2004', '2009', '21H1', '21H2', '22H2', '23H2', '24H2', etc). If this parameter is not specified, the current operating system version is used. |
| _Path_ | `<DirectoryInfo>` | Specifies an absolute path for the Driver Pack directory. The current directory is used by default if this parameter is not specified. |
| _Format_ | `<Object>` | Specifies the output format of the Driver Pack. The value must be one of the following values:<br />\- NoCompressedFile<br />\- ZIP<br />\- WIM |
| _Name_ | `<String>` | Specifies a custom name for the Driver Pack e.g. DP880D |
| _Overwrite_ |  | If specified, this command will force overwrite any existing file with the same name during driver pack creation. |
| _TempDownloadPath_ | `<DirectoryInfo>` | Specifies an alternate temporary location to download content. Please note that this location and all files inside will be deleted once driver pack is created. If not specified, the default temporary directory path is used. |

### Notes

*   Admin privilege is required.
*   Running this command in PowerShell ISE is not supported and may produce inconsistent results.

### Examples

```
PS C:\> Get-SoftpaqList -platform 880D -os 'win10' -osver '21H2' | New-HPBuildDriverPack -Os Win10 -OsVer 21H1 -Name 'DP880D'

```

```
PS C:\> Get-SoftpaqList -platform 880D -os 'win10' -osver '21H2' | New-HPBuildDriverPack -Format Zip -Os Win10 -OsVer 21H1 -Name 'DP880D'

```

```
PS C:\> Get-SoftpaqList -platform 880D -os 'win10' -osver '21H2' | ?{$_.DPB -Like 'true' -and $_.id -notin @('sp137116') -and $_.name -notmatch 'AMD|USB'} | New-HPBuildDriverPack -Path 'C:\MyDriverPack' -Format Zip -Os Win10 -OsVer 21H1 -Name 'DP880D'

```

---

### New-Hpdriverpack

Creates a Driver Pack for a specified platform ID

### Syntax

New-HPDriverPack \[\[-Platform\] <String>\] \[\[-Os\] <String>\] \[\[-OSVer\] <String>\] \[\[-Path\] <DirectoryInfo>\] \[\[-UnselectList\] <Array>\] \[\[-RemoveOlder\]\] \[\[-Format\] <String>\] \[\[-Url\] <String>\] \[\[-Overwrite\]\] \[\[-TempDownloadPath\] <DirectoryInfo>\] \[-WhatIf\] \[-Confirm\] \[<CommonParameters>\]

### Description

This command retrieves SoftPaqs for a specified platform ID to build a Driver Pack in the following formats:

*   NoCompressedFile - All drivers saved in a regular folder
*   ZIP - All drivers compressed in a ZIP file
*   WIM - All drivers packed in a Windows Imaging Format

Please note that this command executes the New-HPBuildDriverPack command if no errors occurred.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Platform_ | `<String>` | Specifies a platform ID to retrieve a list of associated SoftPaqs. If not available, the current platform ID is used. |
| _Os_ | `<String>` | Specifies an OS for this command to filter based on. The value must be 'win10' or 'win11'. If not specified, the current platform OS is used. |
| _OSVer_ | `<String>` | Specifies an OS version for this command to filter based on. The value must be a string value specifying the target OS Version (e.g. '1809', '1903', '1909', '2004', '2009', '21H1', '21H2', '22H2', '23H2', '24H2', etc). If this parameter is not specified, the current operating system version is used. |
| _Path_ | `<DirectoryInfo>` | Specifies an absolute path for the Driver Pack directory. The current directory is used by default if this parameter is not specified. |
| _UnselectList_ | `<Array>` | Specifies a list of SoftPaq numbers and SoftPaq names to not be included in the Driver Pack. A partial name can be specified. Examples include 'Docks', 'USB', 'sp123456'. |
| _RemoveOlder_ |  | If specified, older versions of the same SoftPaq are not included in the Driver Pack. |
| _Format_ | `<String>` | Specifies the output format of the Driver Pack. The value must be one of the following values:<br />\- NoCompressedFile<br />\- ZIP<br />\- WIM |
| _Url_ | `<String>` | Specifies an alternate location for the HP Image Assistant (HPIA) Reference files. This URL must be HTTPS. The Reference files are expected to be at the location pointed to by this URL inside a directory named after the platform ID you want a SoftPaq list for.<br />For example, if you want to point to 83b2 Win10 OSVer 2009 reference files, the New-HPDriverPack command will try to find them in this directory structure: $ReferenceUrl/83b2/83b2\_64\_10.0.2009.cab.<br />If not specified, 'https://hpia.hpcloud.hp.com/ref/' is used by default, and fallback is set to 'https://ftp.hp.com/pub/caps-softpaq/cmit/imagepal/ref/'. |
| _Overwrite_ |  | If specified, this command will force overwrite any existing file with the same name during driver pack creation. |
| _TempDownloadPath_ | `<DirectoryInfo>` | Specifies an alternate temporary location to download content. Please note that this location and all files inside will be deleted once driver pack is created. If not specified, the default temporary directory path is used. |
| _WhatIf_ |  | If specified, the Driver Pack is not created, and instead, the list of SoftPaqs that would be included in the Driver Pack is displayed. |
| _Confirm_ |  |  |

### Notes

*   Admin privilege is required.
*   Running this command in PowerShell ISE is not supported and may produce inconsistent results.

### Examples

```
PS C:\> New-HPDriverPack -WhatIf

```

```
PS C:\> New-HPDriverPack -Platform 880D -OS 'win10' -OSVer '21H2' -Path 'C:\MyDriverPack' -Unselectlist 'sp96688','AMD','USB' -RemoveOlder -WhatIf

```

```
PS C:\> New-HPDriverPack -Platform 880D -OS 'win10' -OSVer '21H2' -Path 'C:\MyDriverPack' -Unselectlist 'sp96688','AMD','USB' -RemoveOlder -Format Zip

```

---

### New-Hpuwpdriverpack

Creates a UWP Driver Pack for a specified platform ID

### Syntax

New-HPUWPDriverPack \[\[-Platform\] <String>\] \[\[-Os\] <String>\] \[\[-OSVer\] <String>\] \[\[-Path\] <DirectoryInfo>\] \[\[-UnselectList\] <Array>\] \[\[-Format\] <String>\] \[\[-Url\] <String>\] \[\[-Overwrite\]\] \[\[-TempDownloadPath\] <DirectoryInfo>\] \[-WhatIf\] \[-Confirm\] \[<CommonParameters>\]

### Description

This command retrieves SoftPaqs for a specified platform ID to build a UWP Driver Pack in the following formats:

*   NoCompressedFile - All drivers saved in a regular folder
*   ZIP - All drivers compressed in a ZIP file
*   WIM - All drivers packed in a Windows Imaging Format

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Platform_ | `<String>` | Specifies a platform ID to retrieve a list of associated SoftPaqs. If not available, the current platform ID is used. |
| _Os_ | `<String>` | Specifies an OS for this command to filter based on. The value must be 'win10' or 'win11'. If not specified, the current platform OS is used. |
| _OSVer_ | `<String>` | Specifies an OS version for this command to filter based on. The value must be a string value specifying the target OS Version (e.g. '1809', '1903', '1909', '2004', '2009', '21H1', '21H2', '22H2', '23H2', '24H2', etc). If this parameter is not specified, the current operating system version is used. |
| _Path_ | `<DirectoryInfo>` | Specifies an absolute path for the UWP Driver Pack directory. The current directory is used by default if this parameter is not specified. |
| _UnselectList_ | `<Array>` | Specifies a list of SoftPaq numbers and SoftPaq names to not be included in the UWP Driver Pack. A partial name can be specified. Examples include 'Docks', 'USB', 'sp123456'. |
| _Format_ | `<String>` | Specifies the output format of the Driver Pack. The value must be one of the following values:<br />\- NoCompressedFile<br />\- ZIP<br />\- WIM |
| _Url_ | `<String>` | Specifies an alternate location for the HP Image Assistant (HPIA) reference files. This URL must be HTTPS. The Reference files are expected to be at the location pointed to by this URL inside a directory named after the platform ID you want a SoftPaq list for. If not specified, https://hpia.hpcloud.hp.com/ref is used by default.<br />For example, if you want to point to 8A05 Win11 OSVer 22H2 reference files, New-HPUWPDriverPack will try to find them in this directory structure: $ReferenceUrl/8a05/8a05\_64\_11.0.22h2.cab |
| _Overwrite_ |  | If specified, this command will force overwrite any existing file with the same name during UWP Driver Pack creation. |
| _TempDownloadPath_ | `<DirectoryInfo>` | Specifies an alternate temporary location to download content. Please note that this location and all files inside will be deleted once driver pack is created. If not specified, the default temporary directory path is used. |
| _WhatIf_ |  | If specified, the UWP Driver Pack is not created, and instead, the list of SoftPaqs that would be included in the UWP Driver Pack is displayed. |
| _Confirm_ |  |  |

### Notes

*   Admin privilege is required.
*   Running this command in PowerShell ISE is not supported and may produce inconsistent results.
*   Currently only platform generations G8 and above are supported, and operating systems 22H2 and above.

### Examples

```
PS C:\> New-HPUWPDriverPack -WhatIf

```

```
PS C:\> New-HPUWPDriverPack -Platform 8A05 -OS 'win11' -OSVer '22H2' -Path 'C:\MyDriverPack' -Unselectlist 'sp140688','Wacom' -WhatIf

```

```
PS C:\> New-HPUWPDriverPack -Platform 8A05 -OS 'win10' -OSVer '22H2' -Path 'C:\MyDriverPack' -Unselectlist 'sp140688','Wacom' -Format ZIP

```

---

### Get-Hpanalyticsconsentconfiguration

Retrieves the current configured HP Analytics reporting configuration

### Syntax

Get-HPAnalyticsConsentConfiguration \[<CommonParameters>\]

### Description

This command retrieves the configuration of the HP Analytics client. The returned object contains the following fields:

*   ManagedBy: 'User' (self-managed) or 'Organization' (IT managed)
*   AllowedCollectionPurposes: A collection of allowed purposes, one or more of:
    *   Marketing: Analytics are allowed for Marketing purposes
    *   Support: Analytics are allowed for Support purposes
    *   ProductEnhancement: Analytics are allowed for Product Enhancement purposes
*   TenantID: An organization-configured tenant ID. This is an optional GUID defined by the IT Administrator. If not defined, the TenantID will default to 'Individual'.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Get-HPAnalyticsConsentConfiguration
PS C:\> Name                           Value
PS C:\> ----                           -----
PS C:\> ManagedBy                      User
PS C:\> AllowedCollectionPurposes      {Marketing}
PS C:\> TenantID                       Individual

```

### See also

*   [Set-HPAnalyticsConsentTenantID](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentTenantID)
*   [Set-HPAnalyticsConsentAllowedPurposes](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentAllowedPurposes)
*   [Set-HPAnalyticsConsentDeviceOwnership](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentDeviceOwnership)
*   For a discussion of these settings, see [https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf](https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf)

---

### Set-Hpanalyticsconsentallowedpurposes

Sets the allowed reporting purposes for HP Analytics

### Syntax

Set-HPAnalyticsConsentAllowedPurposes \[-AllowedPurposes\] {Marketing | Support | ProductEnhancement} \[<CommonParameters>\]

Set-HPAnalyticsConsentAllowedPurposes \[-None\] \[<CommonParameters>\]

### Description

This command configures how HP may use the data reported. The allowed purposes are:

*   Marketing: The data may be used for marketing purposes.
*   Support: The data may be used for support purposes.
*   ProductEnhancement: The data may be used for product enhancement purposes.

Note that you may supply any combination of the above purpose in a single command. Any of the purposes not included in the list will be explicitly rejected.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _AllowedPurposes_ | TelemetryPurpose\[\]\_TYPE\_PLACEHOLDER | Specifies a list of allowed purposes for the reported data. The value must be one (or more) of the following values:<br />\- Marketing<br />\- Support<br />\- ProductEnhancement<br />The purposes included in this list will be explicitly accepted. The purposes not included in this list will be explicitly rejected. |
| _None_ |  | If specified, this command rejects all purposes. |

### Notes

This command requires elevated privileges.

### Examples

```
PS C:\> # Accepts all purposes
PS C:\>  Set-HPAnalyticsConsentAllowedPurposes  -AllowedPurposes Marketing,Support,ProductEnhancement

```

```
PS C:\> # Sets ProductEnhancement, rejects everything else
PS C:\>  Set-HPAnalyticsConsentAllowedPurposes  -AllowedPurposes ProductEnhancement

```

```
PS C:\> # Rejects all purposes
PS C:\>  Set-HPAnalyticsConsentAllowedPurposes  -None

```

### See also

*   [Get-HPAnalyticsConsentConfiguration](https://developers.hp.com/hp-client-management/doc/Get-HPAnalyticsConsentConfiguration)
*   [Set-HPAnalyticsConsentTenantID](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentTenantID)
*   [Set-HPAnalyticsConsentDeviceOwnership](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentDeviceOwnership)
*   For a discussion of these settings, see [https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf](https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf)

---

### Set-Hpanalyticsconsentdeviceownership

Sets the ManagedBy (ownership) of a device for the purpose of HP Analytics reporting

### Syntax

Set-HPAnalyticsConsentDeviceOwnership \[-Owner\] {User | Organization} \[<CommonParameters>\]

### Description

This command configures HP Analytics ownership value to either 'User' or 'Organization'.

*   User: This device is managed by the end user
*   Organization: This device is managed by an organization's IT administrator

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _Owner_ | `<TelemetryManagedBy>` | Specifies User or Organization as the owner of the device |

### Notes

This command requires elevated privileges.

### Examples

```
PS C:\> # Sets the device to be owned by a User
PS C:\>  Set-HPAnalyticsConsentDeviceOwnership -Owner User

```

```
PS C:\> # Sets the device to be owned by an Organization
PS C:\>  Set-HPAnalyticsConsentDeviceOwnership -Owner Organization

```

### See also

*   [Get-HPAnalyticsConsentConfiguration](https://developers.hp.com/hp-client-management/doc/Get-HPAnalyticsConsentConfiguration)
*   [Set-HPAnalyticsConsentTenantID](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentTenantID)
*   [Set-HPAnalyticsConsentAllowedPurposes](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentAllowedPurposes)
*   For a discussion of these settings, see [https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf](https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf)

---

### Set-Hpanalyticsconsenttenantid

Sets the Tenant ID of a device for the purpose of HP Analytics reporting

### Syntax

Set-HPAnalyticsConsentTenantID \[-UUID\] <Guid> \[\[-Force\]\] \[<CommonParameters>\]

Set-HPAnalyticsConsentTenantID \[-NewUUID\] \[\[-Force\]\] \[<CommonParameters>\]

Set-HPAnalyticsConsentTenantID \[-None\] \[<CommonParameters>\]

### Description

This command configures HP Analytics Tenant ID. The Tenant ID is optional and defined by the organization.

If the Tenant ID is not set, the default value is 'Individual'.

### Parameters

| Name | Argument | Description |
| --- | --- | --- |
| _UUID_ | `<Guid>` | Sets the UUID to the specified GUID. If the TenantID is already configured, the operation will fail unless the -Force parameter is also specified. |
| _NewUUID_ |  | Sets the UUID to an auto-generated UUID. If the TenantID is already configured, the operation will fail unless the -Force parameter is also specified. |
| _None_ |  | If specified, this command will remove the TenantID if TenantID is set. TenantID will be set to 'Individual'. |
| _Force_ |  | If specified, this command will force the Tenant ID to be set even if the Tenant ID is already set. |

### Notes

This command requires elevated privileges.

### Examples

```
PS C:\> # Sets the tenant ID to a specific UUID
PS C:\>  Set-HPAnalyticsConsentTenantID -UUID 'd34da70b-9d64-47e3-8b3f-9c561df32b98'

```

```
PS C:\> # Sets the tenant ID to an auto-generated UUID
PS C:\>  Set-HPAnalyticsConsentTenantID -NewUUID

```

```
PS C:\> # Removes a configured UUID
PS C:\>  Set-HPAnalyticsConsentTenantID -None

```

```
PS C:\> # Sets (and overwrites) an existing UUID with a new one
PS C:\>  Set-HPAnalyticsConsentTenantID -NewUUID -Force

```

### See also

*   [Get-HPAnalyticsConsentConfiguration](https://developers.hp.com/hp-client-management/doc/Get-HPAnalyticsConsentConfiguration)
*   [Set-HPAnalyticsConsentAllowedPurposes](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentAllowedPurposes)
*   [Set-HPAnalyticsConsentDeviceOwnership](https://developers.hp.com/hp-client-management/doc/Set-HPAnalyticsConsentDeviceOwnership)
*   For a discussion of these settings, see [https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf](https://ftp.hp.com/pub/caps-softpaq/cmit/whitepapers/ManagingConsentforHPAnalytics.pdf)

---

### Test-Hpsmartexperiencesissupported

Checks if Smart Experiences is supported on the current device

### Syntax

Test-HPSmartExperiencesIsSupported \[<CommonParameters>\]

### Description

This command checks if the BIOS setting "HP Smart Experiences" exists to determine if Smart Experiences is supported on the current device.

### Parameters

No parameters defined.

### Examples

```
PS C:\> Test-HPSmartExperiencesIsSupported

```

### See also

*   [Get-HPeAISettingValue](https://developers.hp.com/hp-client-management/doc/Get-HPeAISettingValue)
*   [Set-HPeAISettingValue](https://developers.hp.com/hp-client-management/doc/Set-HPeAISettingValue)
*   [Set-HPeAIManaged](https://developers.hp.com/hp-client-management/doc/Set-HPeAIManaged)

---
