# HP Image Assistant User Guide (HPIA)

## SUMMARY

HP Image Assistant (HPIA) is a Windows® image comparison tool that captures metadata configuration files from images, compares image configuration files, and provides recommendations to help you develop, maintain, and support images for an optimal Windows performance.

## User Input Syntax Key

Text that you must enter into a user interface is indicated by fixed-width font.

| Item | Description |
|------|-------------|
| Text without brackets or braces | Items you must type exactly as shown |
| `<Text inside angle brackets>` | A placeholder for a value you must provide; omit the brackets |
| `[Text inside square brackets]` | Optional items; omit the brackets |
| `{Text inside braces}` | A set of items from which you must choose only one; omit the braces |
| `\|` | A separator for items from which you must choose only one; omit the vertical bar |
| `...` | Items that can or must repeat; omit the ellipsis |

## Table of Contents

1. [Getting Started](#1-getting-started)
   - [Glossary](#glossary)
   - [System Requirements](#system-requirements)
   - [HPIA Use Cases](#hpia-use-cases)
   - [Downloading HPIA](#downloading-hpia)

2. [HPIA Components and Configuration](#2-hpia-components-and-configuration)
   - [HPIA Components](#hpia-components)
   - [HPIA User Interface](#hpia-user-interface)
   - [Testing the Connection](#testing-the-connection)
   - [Basic Authentication](#basic-authentication)
   - [Negotiated Authentication](#negotiated-authentication)
   - [Running HPImageAssistant.exe](#running-hpimageassistantexe)
   - [Changing the User-Interface Language](#changing-the-user-interface-language)
   - [Configuration Options](#configuration-options)
   - [Finding the Supported Platform List](#finding-the-supported-platform-list)
   - [User Guides](#user-guides)

3. [Analyzing a System Image](#3-analyzing-a-system-image)
   - [Analyzing a System Image](#analyzing-a-system-image-1)
   - [Analyzing the Summary](#analyzing-the-summary)
   - [Summary](#summary)
   - [Recommendations](#recommendations)
   - [Advisories](#advisories)
   - [Device Drivers](#device-drivers)
   - [Installed Software](#installed-software)
   - [QFEs](#qfes)
   - [Security](#security)
   - [Firmware](#firmware)
   - [BIOS Settings](#bios-settings)
   - [Saving a Results File](#saving-a-results-file)

4. [Downloading SoftPaqs](#4-downloading-softpaqs)
   - [Creating My Products List](#creating-my-products-list)
   - [Creating and Using Multiple My Product Lists](#creating-and-using-multiple-my-product-lists)
   - [Finding Available SoftPaqs for a Specific Product](#finding-available-softpaqs-for-a-specific-product)
   - [Available SoftPaqs](#available-softpaqs)
   - [Advisories](#advisories-1)

5. [Create Driver Pack](#5-create-driver-pack)
   - [Finding Driver SoftPaqs](#finding-driver-softpaqs)
   - [Available SoftPaqs](#available-softpaqs-1)

6. [Running from a Command Line](#6-running-from-a-command-line)

7. [Command Line Error Return Codes](#7-command-line-error-return-codes)
   - [HP Software Wrapper Error Return Codes](#hp-software-wrapper-error-return-codes)

8. [Capturing an Image](#8-capturing-an-image)

---

## 1. Getting Started

HP Image Assistant (HPIA) is a Windows® image comparison tool that captures metadata configuration files from images, compares image configuration files, and provides recommendations to help you develop, maintain, and support images for an optimal Windows performance.

HPIA can compare reference images developed by HP to IT-developed target images to highlight differences in such things as the BIOS version, BIOS settings, device drivers, installed software, and Windows updates. By automating these comparisons and providing an interface to quickly locate differences and to download and install updates, HPIA reduces the time needed to develop and maintain quality Windows images with the correct device drivers, software patches, and BIOS settings for HP business computers.

### Glossary

You can refer to this section to find glossary terms.

- **Reference image** — XML file extracted from a known, good system image to be used as a reference. An IT administrator either can use reference images provided by HP, which correspond to the factory-shipping state, or can create and maintain reference images using HPIA. The image configuration file contains metadata describing the image, but is not an actual image.

- **Target image** — XML file of an image that can be compared to a reference image. HPIA can generate a target image of a system running HPIA or it can use a previously-captured target image from any system. The image configuration file contains metadata describing the image, but is not an actual image.

- **Platform system ID** — Four-character hexadecimal string that identifies an HP platform.

  To retrieve this string, use one of the following methods:
  - In Command Prompt, enter the following command:
    ```
    wmic path win32_baseboard get product /value
    ```
    The platform system ID is displayed like the following example, where 212A is the ID:
    ```
    Product=212A
    ```
  - In a tool with WMI query, such as wbemtest, perform the following query:
    ```
    select Product from Win32_BaseBoard
    ```
    The Product value is the platform system ID (for example, 212A).

- **QFE** — Software update released by Microsoft to a limited-distribution release channel to address severe instability, security problems, preinstallation problems, and problems reported by customers.

- **Driver pack** — Bundle of all driver files (INF) that can be injected into an operating system image using the Microsoft® DISM.exe tool.

- **Reference computer** — Source of the operating system image that is captured and deployed to other computers.

- **SoftPaq** — Downloadable software update package released by HP.

- **UWP** — Universal Windows Platform

- **TPM** — Abbreviation for Trusted Platform Module, an industry-standard, dedicated microcontroller that provides basic security-related functions.

- **Configuration Manager** — Abbreviation for Microsoft® System Center Configuration Manager, which is enterprise system-management software.

- **MDT** — Abbreviation for Microsoft Deployment Toolkit, a unified collection of tools, processes, and guidance for automating desktop and service deployment.

### System Requirements

HPIA requires one of the following versions of the Windows operating system (OS) and .NET Framework 4.7.2.

> **NOTE:** HPIA is not supported on computers with embedded or mobile operating systems.

| Operating System | .NET Framework 4.7.2 |
|------------------|----------------------|
| Windows 11 | Included in OS release |
| Windows 10 | Included in OS release |

HPIA can capture and analyze XML image configuration files from select HP Elite computers, HP Pro computers, and HP workstations running Windows 11 or Windows 10 operating systems. For a full list of platforms supported by HPIA, go to https://ftp.hp.com/pub/caps-softpaq/cmit/imagepal/ref/platformList.html.

### HPIA Use Cases

The HPIA tool suite can be used in several stages of an operating system image life cycle: development, deployment, maintenance, and support.

During the image development process, HPIA can be used by IT administrators to make sure that all required components are included and updated, which improves the quality of the image without manual verification or updates.

HPIA also provides information and support for managing BIOS settings, basic security concerns, QFEs, and optional software. After the reference image is finalized, HPIA can capture, analyze, and save XML image configuration files from supported platforms for future maintenance and support needs.

After the image is developed and deployed, HP recommends periodically performing image maintenance to make security and performance enhancements and install bug fixes. HPIA can analyze the stored XML image configuration file against the latest HP reference image to identify, obtain, and install available updates. After major updates to an image, HP recommends that you use HPIA to capture and save XML configuration files for future reference.

If you need to troubleshoot an end-user issue relating to the BIOS, BIOS settings, drivers, or software, you can run HPIA on the system to compare it to the corresponding HP reference image or any other known, good image XML file.

If you need to contact HP for support for BIOS, driver, or software issues, you can capture an XML image configuration file from the system and send it to HP to help resolve your issue.

After an in-place upgrade, an IT administrator can run HPIA on a reference computer to analyze whether HP software is up-to-date and then update it, if necessary. For wipe-and-load scenarios, the IT administrator can run HPIA on a representative system to be migrated and receive the HP OS migration recommendations. These recommendations include high-level migration steps with detailed recommendations on HP settings, updates, and best practices to help reduce the time needed to prepare for and execute a migration.

> **NOTE:** When HP Sure Admin (Enhanced BIOS Authentication Mode) is enabled, you cannot update the BIOS (download only).

### Downloading HPIA

This section outlines downloading HPIA.

1. Go to http://www.hp.com/go/clientmanagement.
2. Under Resources, select HP Download Library.
3. Locate and download HP Image Assistant by selecting the latest SoftPaq.
4. Locate the downloaded SoftPaq on your system, double-click, and follow the on-screen instructions to extract the HPIA files. The HPIA files are saved to the location specified in the installation wizard.

---

## 2. HPIA Components and Configuration

This chapter outlines HPIA components and user interface.

### HPIA Components

HPIA comprises HPImageAssistant.exe, ImageCapture.exe, language resource files, and other supporting files. You can run HPIA from a USB flash drive, a target computer, or any other computer running a Windows 11 or Windows 10 operating system. HPIA does not update the registry or copy files to the target computer.

HPImageAssistant.exe is the HPIA user interface.

> **NOTE:** HPImageAssistant.exe supports the parameter /debug to write log files for troubleshooting issues. You can create additional log files including the target and reference xml files by pressing ctrl+shift+s.

ImageCapture.exe is a standalone tool that captures an XML image configuration file that can then be compared against a reference image.

You must run these executable files as an administrator to capture image configuration files using HPIA.

### HPIA User Interface

This section outlines the HPIA user interface.

### Testing the Connection

Many operations performed by HPIA require internet access to get the latest SoftPaq data. By default, HPIA uses Internet Explorer connection settings to access the internet. Be sure that you can successfully connect to either of the following links using Internet Explorer:

- https://hpia.hpcloud.hp.com/
- https://ftp.hp.com/pub/caps-softpaq/cmit/imagepal/ref/platformList.html

If your network environment requires proxy settings and you cannot connect to either link, run HPIA and configure the web proxy.

You have two methods to configure the proxy access. HP Image Assistant uses the machine-configured proxy information, or you can configure the information through the Configuration Options dialog box and command line. The type of configuration needed depends on the setup of the proxy server in your organization. If there is an issue with HP Image Assistant using the proxy, run HP Image Assistant with the /Debug command-line option to get the log file information for the proxy login. If the log file contains a "407 Proxy Authentication Required" entry, the proxy server is asking for a negotiated authentication. Otherwise, the authentication is probably basic.

| Option | Description |
|--------|-------------|
| `/ProxyURL:<URL>` | The URL for the proxy server. If not specified, HP Image Assistant uses the OS-defined proxy definition. |
| `/ProxyPort:<portnumber>` | The port number for the proxy server. Required if proxy URL is specified. |
| `/ProxyUser:<username>` | The user name used to log in to the proxy server (optional). |
| `/ProxyPassword:<password>` | The password used to log in to the proxy server (optional, unless user name is specified). |
| `/ProxyDomain:<domain>` | The domain specifies the domain or realm to which the user name belongs. Typically, this is the host computer name where HP Image Assistant runs or the user domain for the currently logged-in user (optional and only necessary when the proxy is authenticating against NTML authentication). |

### Basic Authentication

If the proxy server supports basic authentication, then set the proxy settings in the Tools-Configuration Options dialog on the Proxy tab or through command-line options. You must include the proxy address, proxy port, username, and password.

If the proxy does not require authentication, the username and password are not needed.

### Negotiated Authentication

With negotiated authentication, you can set the configuration through the OS or the Configuration Options dialog on the Proxy tab or through the command-line options. For this type of authentication to work, the OS must be joined to an authentication domain for the validation to work.

If the proxy configuration is not specified in the OS, the proxy address and port can be configured in HP Image Assistant. The username and password are not needed and will be retrieved from the OS login. If the proxy configuration is defined in the OS, no actions are needed with HP Assistant for it to function properly.

HP Image Assistant is run at elevated permissions, so when this type of proxy authentication is in use, the login credentials must be the Administrator for the machine and not a user that belongs to the Administrator group. When a user is elevated to Administrator, the proxy does not have the domain token for that user and the proxy authentication will fail.

### Running HPImageAssistant.exe

This section outlines running HPImageAssistant.exe.

1. Right-click HPImageAssistant.exe.
2. Select Run as administrator.

### Changing the User-Interface Language

Follow the instruction in this section to change the user-interface language.

- Select Languages, and then select one of the supported languages.

### Configuration Options

From the menu bar, select Tools and then select Configuration Options.

You can save the selections and changes made to configuration options for future use or backup.

#### Download

Use this procedure to change the Download Folder location.

1. Select Browse.
2. Select a location or select Make New Folder to create a new folder.
3. Select OK.

**Download options**
- Single folder — Downloads all SoftPaqs to a single folder.
- Separate folders by SoftPaq names — Downloads all SoftPaqs into separate folders by SoftPaq name.

4. To save changes, select OK. To close the dialog box without saving changes, select Cancel. To clear all changes and set values back to default selections, select Restore Defaults.

#### Unpack

This section outlines how to change the Unpack Directory location.

1. Select Browse.
2. Select a location or select Make New Folder to create a new folder.
3. Select OK.
4. Select one option from Unpack folder options.
5. To save changes select OK. To close the dialog box without saving changes, select Cancel. To clear all changes and set values back to default selections, select Restore defaults.

#### Proxy

This section outlines how to configure the web proxy.

1. Type the proxy IP address or Hostname into the Address box.
2. Type the port number into the Proxy box.
3. Type the username, password, and network domain of the domain user account.
4. To save changes select OK. To close the dialog box without saving changes, select Cancel. To clear all changes and set values back to default selections, select Restore defaults.

#### Thread

The Number of simultaneous downloads can be set up to 5.

> **NOTE:** Entering a number higher than one can impact network performance.

### Finding the Supported Platform List

This section contains the instruction to find the supported platform list.

- Select Help, and then select Supported Platforms to display the list of reference images provided by HP.

The supported platforms list can be organized by Product, OS, Architecture, or the date the image was Last Modified. A keyword search feature is also available for the supported platforms list to assist in finding specific systems.

### User Guides

This section contains the instruction to access user guides.

- Select Help, select User Guide and then select a Language.

---

## 3. Analyzing a System Image

This chapter outlines how to analyze a system image.

### Analyzing a System Image

This section outlines steps to analyze a system image.

1. Select Analyze Image from the menu, and then select an option under 1 Choose Target Image.
   - **Browse** — Select the previously saved XML image configuration file to be analyzed.
   - **<This Computer>** — Selects the computer HPIA is running on to be analyzed. When the analysis is started, HPIA captures the image configuration information and then uses it in the analysis.

2. Select an option under 2 Choose Reference Image.
   - **Browse** — Select the previously saved XML image configuration file.
   - **<This Computer>** — Selects the computer HPIA is running on to compare the target image to. When the analysis is started, HPIA captures the image configuration information and then uses it in the analysis. This can be useful in scenarios where the current computer is a known, good image.
   - **<From HP.com>** — Automatically selects the latest XML image configuration file provided by HP. The automatic XML selection depends on the system ID, OS version, and architecture of the target image.

> **NOTE:** To receive recommendations from HPIA, you must select this option. To use this option, you must be connected to the Internet.

3. Select 3 Analyze located to the right of 3 Start Analysis/Compare.

> **NOTE:** If the system ID, OS version, and architecture (64-bit or 32-bit) of the reference image and target image do not match, the images cannot be compared and analyzed.

After the image configuration files are analyzed, a summary is displayed.

The Search option is available in the Advisories, Device, Drivers, Installed Software, Firmware, and BIOS Settings tabs. Use the option to search for a specific subject within that tab.

### Analyzing the Summary

After you run HPImageAssistant.exe, a system summary is displayed. Select one of the other tabs to see additional details about device drivers, installed software, security, firmware, and BIOS settings. If you selected the <From HP.com> option, there is a Recommendations tab. If you did not select the From <HP.com> option, there is a QFEs tab.

The Summary, Recommendations, Advisories, and Security tabs contain information about the target image only. The Device Drivers, Installed Software, QFEs, Firmware, and BIOS Settings tabs contain information about the comparison between the target image and the reference image.

The following table describes the icons used to help you analyze the results and prioritize the recommended changes to the target image.

| Icon | Description |
|------|-------------|
| ![Target Only Icon] | Identifies components that exist on the target image only. These components often include third-party drivers, user-installed software, and QFEs. |
| ![Reference Only Icon] | Identifies components that exist on the reference image only. If you are using an HP refence image, all available drivers are displayed. |
| ![Same Icon] | Identifies components that are the same on the target image and the reference image. |
| ![Out of Date Icon] | Identifies components where the version installed on the target image is earlier than the version on the reference image. |
| ![Missing Icon] | Identifies components necessary for full system function that do not exist on the target image. |
| ![Different Icon] | Identifies components that exist on both the target image and the reference image, but are different in a manner not described by other filters. Difference can include components made by different manufacturers or a newer version installed on the target image. |

### Summary

The Summary tab summarizes the overall health and overall security of the target image. The tab includes details about the platform, BIOS and firmware configuration, missing or out-of-date drivers, HP recommended software, out-of-date software, and security settings.

The Security Settings summary includes details on whether antivirus and antispyware protection is enabled and up-to-date, whether the firewall is enabled, and whether a BIOS Setup Password is set. This section also indicates whether the target image contains any root certificates with an embedded private key. For more information, see Security on page 12.

Under BIOS and Firmware, the section Different identifies the BIOS settings that exist in both the target image and reference image, but have different values. Added and Missing identify the BIOS settings that were either added or removed between BIOS releases.

The Firmware section indicates the number of firmware components which are out of date on the target image.

### Recommendations

The Recommendations tab displays the latest versions of the BIOS, drivers, software, UWP applications, and accessories such as dock firmware and drivers that are installed on the target image and reference image. Based on the comparison, HPIA recommends installing any missing or newer components on the target image.

> **NOTE:** The Recommendations tab is available only if the <From HP.com> option was selected as the reference image.

There are two views available:
- Component view
- SoftPaq view

The Components column provides the name of the BIOS, driver, or software available for installation.

The Target Image and Reference Image columns provide version information (Component view).

In the SoftPaq column, the SoftPaq number links to the SoftPaq executable file, the document icon links to the SoftPaq release notes, the CVA icon links to the SoftPaq CVA file, and the UWP icon links to the Universal Windows Platform application notes.

The Installation Type column provides the type of installation for each component. If there are any recommendations for UWP application for the target image, the See deployment notes link is displayed under the Installation Notes column.

The Comments column provides comments from HP that pertain to the deliverable.

> **NOTE:** The UWP icon only shows for components that are UWP titles.

To install or update a component:

1. If additional software needs to be installed before a SoftPaq is installed, it is listed under Prerequisites. If there is a green checkmark next to the prerequisite, it is already installed on the system. Download and install any prerequisites until all of them are marked with a green checkmark. After each prerequisite is installed, analyze the system. Continue this process until all prerequisites are marked with a green checkmark.

2. Advisories pertaining to the SoftPaq and the target image are listed under Advisories.

3. By default, Critical components will be selected if they are available. Choose the components drop-down menu to view the following options:
   - **All** — Selects all packages.
   - **None** — Selects no packages.
   - **Critical** — Selects all critical packages.
   - **Update Recommended** — Selects all packages recommended for update.
   - **Install Recommended** — Selects all recommended packages for installation.
   - **INF Installation Supported** — Selects all packages that support installation via INF.
   - **Unattended Installation Support** — Selects all packages that support System Software Manager (SSM) installation.
   - **Universal Windows Platform (UWP)** — Selects all packages that contain UWP applications.

   Select the SoftPaq column, and then select the link to download the SoftPaq.
   
   – or –
   
   To download multiple SoftPaqs simultaneously, select the box next to the name of each update.

4. Select Download (X) where x is the number of packages selected.

5. Select a download option.
   - **Download SoftPaq(s) only** — Downloads the SoftPaqs.
     - **Extract SoftPaq Files** — If the Download SoftPaq(s) only option is selected, you can also select this option to extract the files after they are downloaded.
   - **Download SoftPaq(s), extract files, and install** — Downloads, extracts, and installs the SoftPaqs on the computer running HPIA. The selected SoftPaqs must support silent installation to use this option.

> **NOTE:** Installation works only if you select <This Computer>. This installation option is not active if you used target reference file.

6. Select Start.

### Advisories

The Advisories tab provides a list of customer advisories, product change notification documents, and security bulletins relating to the target image. Click the link to view the details of the document. A keyword search feature is available for searching the customer advisories, product change notifications, and security bulletins list.

To export the list to a CSV file:

- Select the Microsoft Excel icon.

To display a specific set of documents:
- **Advisories** — Displays customer advisories.
- **Notices** — Displays product change notification documents.
- **Bulletins** — Displays security bulletins.

### Device Drivers

The Device Drivers tab provides information about the device drivers installed on the target image and reference image, including the class description, driver name, device ID, device manufacturer, driver provider, date the driver was last updated, and driver version. Use the keyword search feature to search the device drivers list.

To export the device driver details to a CSV file:

- Select the Microsoft Excel icon.

To display a specific set of drivers, select one or more of the following filters:
- **Target Image Only** — Displays drivers installed on the target image but not the reference image
- **Reference Image Only** — Displays drivers installed on the reference image but not the target image
- **The Same** — Displays drivers that match on the target image and the reference image
- **Out-of-Date** — Displays drivers that need to be updated on the target image (based on the reference image); might be identified as a critical update
- **Different** — Displays drivers installed on both the target image and reference image, but with a difference not covered by the other filters

### Installed Software

The Installed Software tab provides information about the software installed on the target image and reference image, including the name, version, manufacturer, and date installed. This software can be found under Programs and Features in Control Panel.

To export the installed software details to a CSV file:

- Select the Microsoft Excel icon.

To display a specific set of software, select one or more of the following filters:
- **Target Image Only** — Displays software installed on the target image but not the reference image
- **Reference Image Only** — Displays software installed on the reference image but not the target image
- **The Same** — Displays software that matches on the target image and the reference image
- **Out-of-Date** — Displays software that needs to be updated on the target image (based on the reference image); might be identified as a critical update
- **Different** — Displays software installed on both the target image and reference image, but with a difference not covered by the other filters

### QFEs

The QFEs tab provides information about available Microsoft updates, including the ID, description, comments about the fix, and the date the update was installed.

> **NOTE:** The QFEs tab is available only if a custom XML file is selected as the reference image.

To export the QFEs details to a CSV file:

- Select the Microsoft Excel icon.

To display a specific set of QFEs, select one or more of the following filters:
- **Target Image Only** — Displays QFEs installed on the target image but not the reference image
- **Reference Image Only** — Displays QFEs installed on the reference image but not the target image
- **The Same** — Displays QFEs that matches on the target image and the reference image
- **Different** — Displays QFEs installed on both the target image and reference image, but with a difference not covered by the other filters

### Security

The Security tab provides information about security items.

> **NOTE:** The information in this tab applies to the target image only.

The Security Settings section provides information about the firewall, antivirus software, antispyware software, and BIOS setup password. You can see whether the firewall is enabled, whether the antivirus software is enabled and up-to-date, whether the antispyware software is enabled and up-to-date, and whether there is a BIOS Setup Password. HP strongly recommends that you use a BIOS Setup Password.

The Certificates section provides a list of root certificates and whether each certificate has an embedded private key. HP does not recommend using root certificates that have an embedded private key.

To export the certificate details to a CSV file:

- Select the Microsoft Excel icon.

### Firmware

The Firmware tab provides information about the firmware on the computer, including the firmware name and version for both the target image and the reference image. If they are the same, the version is listed once. A keyword search feature is available for searching the firmware list.

To export the firmware details to a CSV file:

- Select the Microsoft Excel icon.

To display a specific set of firmware, select one or more of the following filters:
- **Target Image Only** — Displays firmware installed on the target image but not the reference image
- **Reference Image Only** — Displays firmware installed on the reference image but not the target image
- **The Same** — Displays firmware that matches on the target image and the reference image
- **Out-of-Date** — Displays firmware that needs to be updated on the target image (based on the reference image); might be identified as a critical update
- **Different** — Displays firmware installed on both the target image and reference image, but with a difference not covered by the other filters

### BIOS Settings

The BIOS Settings tab provides information about the BIOS settings on the target image and the reference image, including name, F10 Setup path, and the current value. Only BIOS settings that can be configured are displayed. A keyword search feature is available for searching the BIOS settings list.

To export the BIOS settings details to a CSV file:

- Select the Microsoft Excel icon.

To display a specific set of BIOS settings, select one or more of the following filters:
- **Target Image Only** — Displays BIOS settings installed on the target image but not the reference image
- **Reference Image Only** — Displays BIOS settings installed on the reference image but not the target image
- **The Same** — Displays BIOS settings that match on the target image and the reference image
- **Different** — Displays BIOS settings installed on both the target image and reference image, but with a difference not covered by the other filters

### Saving a Results File

This section contains the instruction about saving a results file.

- After analyzing a system image, select File, and then select Save Recommendations.

This HTML file can be opened and printed as needed.

---

## 4. Downloading SoftPaqs

HPIA incorporates some of the features of HP SoftPaq Download Manager. IT administrators can use HPIA to search for and download the SoftPaqs appropriate for supported HP computers.

To simplify managing SoftPaqs for a set of HP computers, the HPIA Download SoftPaq feature allows you to create a custom list, a configurable My Products List, of multiple HP computer models. HPIA saves My Products List as part of the configuration settings file. The IT administrator can create and use more than one configuration settings file by saving and loading each configuration in its own uniquely named file using the File menu commands.

HPIA will query for available SoftPaqs based on the contents of the My Products List.

### Creating My Products List

This section outlines configuring My Products List.

1. Select **Download SoftPaqs**, and then select the **Create or Edit** button located to the right of **1 Create My Products**. The button will be labeled as one of the following:
   - **Create**: If your current configuration option does not yet have products listed in My Products List, the button will be labeled Create.
   - **Edit**: If your current configuration option does have products listed in My Products List, the button will be labeled Edit.
   
   Once selected the Edit My Products List dialog box will open.

2. Select your version of Windows from the drop-down menu. Once selected, the HP Product Catalog search results will display all available products for the specified OS. You can use the Search box, to search for products. For example, you can search by product names (complete or partial) such as "EliteBook" or product numbers such as "800." Select the check box next to the products you want to add to the list.

   > **NOTE:** You must be connected to the Internet to view or search the list of supported platforms.

3. Items can be removed from the list via the following options:
   - To remove a specific product, select the trash can icon to the left of the product name.
   - In cases where multiple OSes are listed under a single product, a specific OS can be removed by selecting the trash can icon to the left of the name of the OS.
   - To remove all products, select the check box option **Clear all selected products**.

4. Select **Apply** to save changes. This will close the Edit My Products List dialog box.

### Creating and using multiple My Product Lists

HPIA remembers your My Products List selections from session to session as part of the default configuration file. This default file is saved in the same folder as HPImageAssistant.exe.

To maintain more than one My Products List, create a My Products List and then save the current configuration using the **File** and **Save Configuration File** menu items. This lets you specify the name and location of the file.

You can replace the current configuration with the contents of a previously saved configuration file using the **File** and the **Open Configuration File** menu items. This relaunches HPIA using the specified configuration file, which becomes the current default configuration.

### Finding available SoftPaqs for a specific product

This section outlines finding available SoftPaqs for a specific product.

- To find SoftPaqs for products listed in **2 Select from My Products List**, select **Analyze**, located to the right of **3 Get SoftPaqs**. By default, all products listed in **2 Select from My Products List** are selected. To limit the SoftPaqs search, clear the products in My Products List before selecting Analyze, and the products will not be included. After selecting Analyze, the Available SoftPaqs and Advisories tabs open.

### Available SoftPaqs

This section outlines available SoftPaqs.

1. After you run Analyze, the Available SoftPaqs tab lists the SoftPaqs or updates available for the selected platforms and operating system. You can filter, sort, or display a specific set of drivers via the following options:
   - **Latest**—Displays only the latest version of drivers, software, and/or firmware.
   - **All**—Displays all available versions of drivers, software, and/or firmware.
   - **Search**—Searches for a specific driver, software, or firmware.
   - **Pencil icon**—Selects which columns to show in this tab and in the report.
   
   To export the list to a CSV file, select the Microsoft Excel icon.

2. Choose **Select Components to Download/Apply** to display a drop-down menu. Choose from the following options:
   - **All**—Selects all packages.
   - **None**—Selects no packages.
   - **Supersede**—Selects all superseded packages.
   - **Critical**—Selects all critical packages.
   - **Recommended**—Selects all recommended packages.
   - **Routine**—Selects all packages classified as routine.
   - **INF Installation Supported**—Selects all packages that support installation via INF.
   - **Unattended Installation Supported**—Selects all packages that support Software Manager (SSM) installation.
   - **Universal Windows Platform (UWP)**—Selects all packages that contain UWP applications.
   
   If additional software needs to be installed before a SoftPaq is installed, it is listed under Prerequisites. Advisories pertaining to the SoftPaq are listed under Advisories.

3. To update CSV files for downloaded SoftPaqs, select **Update CSV**. Downloaded SoftPaqs will be indicated by the check mark icon located to the right of the name of the product. If there are no SoftPaqs downloaded, this option will be unavailable.

### Advisories

The Advisories tab provides a list of customer advisories, product change notification documents, and security bulletins relating to the target image.

For more information on advisories, go to [Advisories on page 11](#advisories).

---

## 5. Create Driver Pack

HPIA allows you to find and download available driver SoftPaqs by OS and product name. The Create Driver Pack option allows you to download or create a driver pack for a specific product and OS combination. HPIA does not save the selected product and OS. Each unique time that you run HPIA and use the Create Driver Pack feature, you must select an OS version and product.

> **NOTE:** You must be connected to the Internet to view the list of Supported Platforms or use the HP Product Catalog. This feature allows you to select only a single platform and a single OS version for the purpose of either downloading files into the download folder or creating a driver pack (ZIP, CAB, ISO or WIM).

### Finding Driver SoftPaqs

This section outlines finding driver SoftPaqs.

1. **1 Choose OS**—From the drop-down menu, select the specific OS version.

2. **2 Choose Product**—Specify a product in either of the two following ways:
   - Select a specific product.
   - **or**
   - Search for a specific product by using a partial model name such as "EliteBook" or "Elite" or product number such as "800." Select the desired product.

3. **3 Get driver SoftPaqs**—Select **Analyze**.

### Available SoftPaqs

This section outlines available SoftPaqs.

1. After you run Analyze, the Available SoftPaqs tab lists the SoftPaqs or updates available for the selected platforms and operating system. You can filter, sort, or display a specific set of drivers via the following options:
   - **Latest**—Displays only the latest version of drivers, software, and/or firmware.
   - **All**—Displays all available versions of drivers, software, and/or firmware.
   - **Search**—Searches for a specific driver, software, or firmware.
   - **Pencil icon**—Selects which columns to show in this tab and in the report.
   
   To export the list to a CSV file, select the Microsoft Excel icon.

2. Choose **Select Components to Download/Apply** to display a drop-down menu. Choose from the following options:
   - **All**—Selects all packages.
   - **None**—Selects no packages.
   - **Critical**—Selects all critical packages.
   - **Recommended**—Selects all recommended packages.
   - **Routine**—Selects all packages classified as routine.
   - **INF Installation Supported**—Selects all packages that support installation via INF.
   - **Unattended Installation Supported**—Selects all packages that support System Software Manager (SSM) installation.
   - **Auto Installable (SSM-Compliant)**—Selects all packages that support Software Manager (SSM) installation.
   
   If additional software needs to be installed before a SoftPaq is installed, it is listed under Prerequisites. Advisories pertaining to the SoftPaq are listed under Advisories.

3. Select **Download (X)** where X is the number of packages selected.

   **Operation**—The options are as follows:
   - **Create driver pack and download driver installation executables**—Select the driver file pack create type (ZIP, CAB, ISO, or WIM) from the File type drop-down menu.
     
     > **NOTE:** WIM packages require administrative privilege and cannot be created on network drives.
   
   - **Download drivers**—Downloads only the drivers to the download folder.

4. Select **Start** to begin download.

5. The Get drivers summary page opens in a browser window that provides information about the downloaded driver SoftPaqs and, if selected, the custom driver packs.

---

## 6. Running from a command line

HPIA supports running analysis from a command line. An IT administrator can automate the analysis and downloading of recommendations.

> **NOTE:** For syntax help, see User input syntax key on page iii.

The following table describes the valid command-line options.

### Table 6-1: Command-line options and their descriptions

| Option | Description |
|--------|-------------|
| `/Action:[List\|Download\|Extract\|Install\|UpdateCVA]` | Specifies the action to perform.<br><br>`[List]` Retrieves a list of recommendations. This is the default action if omitted.<br><br>`[Download]` Downloads recommendations.<br><br>`[Extract]` Downloads and extracts recommendations.<br><br>`[Install]` Downloads, extracts, and installs recommendations. This is applicable only if /TargetFile is not specified. Only Auto-installable (SSM-compliant) SoftPaqs will be installed.<br><br>`[UpdateCVA]` Updates any downloaded SoftPaqs, CVA files, and HTML files. This option is available only if /Operation:DownloadSoftPaqs is specified.<br><br>**NOTE:** For the actions [Download] and [Install], HP recommends using /softpaqdownloadfolder. If no user account exists, the default download location is C:\ProgramData\HP\HP Image Assistant\. |
| `/AutoCleanup` | Deletes the SoftPaq files used to successfully install a SoftPaq. This command cannot be used with /offlinemode. |
| `/Auto` or `/AutoMyPC` | Inherited from SDM. Equivalent to /Operation:Analyze /Action:Install. |
| `/AutoReport` | Creates SoftPaq installation status SoftPaqReport.csv file in %ProgramData%\HP\HP Image Assistant\. Use /TargetFile to specify the Target. Otherwise, the Target is "This Computer." |
| `/BIOSPwdData:<base64encodedString>` | Specifies the base64 encoded contents of a BIOS password file that was created using an HP tool like HPQPwd64. This command cannot be used with /BIOSPwdFile or /BIOSPwdEnv. |
| `/BIOSPwdEnv:<EnvironmentVariableName>` | Specifies the name of an environment variable that contains the BIOS admin password in clear text. This command cannot be used with /BIOSPwdFile or /BIOSPwdData. |
| `/BIOSPwdFile:<encryptedBIOSPasswordFilePath>` | Specifies the complete path of the encrypted BIOS administrator password file. This command cannot be used with /BIOSPwdData or /BIOSPwdEnv. |
| `/Category:[All,BIOS,Drivers,Software,Firmware,Accessories]` | Specifies the recommendation category. `[All]` is the default if omitted and excludes Accessories category. |
| `/Debug` | Enables logging (%TEMP%\HP Image Assistant.log).<br><br>If /LogFolder is specified, the debug log will be stored in that path.<br><br>If /LogFolder is not specified but /ReportFolder is specified, the debug log will be stored in that path.<br><br>If /LogFolder and /ReportFolder are not specified, but /SoftPaqDownloadFolder is specified, the debug log will be stored in that path. |
| `/DownInstall` | Inherited from SDM Equivalent to /Action:Install. |
| `/DownOnly` | Inherited from SDM. Equivalent to /Action:Download. |
| `/DownUnpack` | Inherited from SDM. Equivalent to /Action:Extract. |
| `/File:<CustomConfigFile>` | Specifies the path to an existing HP Image Assistant configuration file (e.g. HPImageAssistant.dll.config). If a valid path to a valid configuration file is provided, HP Image Assistant will load the contents of the provided file.<br><br>The menu item "Open Configuration File" will use the /File: parameter in the command line to relaunch HP Image Assistant with the configuration file provided via the user interface. The customer can launch HP Image Assistant with a previously saved configuration file. For example, the user can launch HP Image Assistant to use a "My Products List" saved in a specified configuration file by using the /File: parameter. |
| `/InstallType:[All\|INFInstallable\|AutoInstallable]` | Specifies the installation type:<br><br>`[All]` Selects all SoftPaqs. This is the default selection if no option is specified.<br><br>`[INFInstallation]` Selects SoftPaqs which are DPB-compliant.<br><br>`[AutoInstallable]` Selects SoftPaqs which are SSM-compliant. |
| `/LogFolder:<folderPath>` | Specifies the folder path for saving the reference files as a zip file. If /Debug command-line option is specified, the debug log will be stored in the specified path.<br><br>If /LogFolder is specified but not valid, the /ReportFolder path will be used, if specified.<br><br>If /ReportFolder path is not specified or invalid, /SoftPaqDownloadFolder path will be used, if specified.<br><br>If /SoftPaqDownloadFolder path is not specified or invalid, the current user's download folder will be used. |
| `/LogZip` | If /LogZip is specified on the command line, reference files save as zip files. If a valid folder location is given via /LogFolder, the zipped reference files are placed there. If the LogFolder setting is empty, the code tries to use the ReportFolder. |
| `/Noninteractive` | Displays a noninteractive progress bar when running HPIA actions. |
| `/Offlinemode:<path to offline repository>` | Allows you to use Operation Analyze offline. This option requires an offline repository that you can create using the HP Client Management Script Library. For more information, see https://developers.hp.com/hp-client-management/doc/client-management-script-library. |
| `/Operation:[Analyze\|DownloadSoftPaqs]` | `[Analyze]` Analyze, download, extract, and/or install the relevant SoftPaqs for the current image/system HPIA is running on.<br><br>`[DownloadSoftPaqs]` Downloads and/or extracts, the relevant SoftPaqs based on the default configuration, or the configuration specified in the /File: option, or overridden by other command-line options. You can specify multiple platforms, OSes, in the configuration file. |
| `/ProxyURL:<URL>`<br>`/ProxyPort:<portnumber>`<br>`/ProxyUser:<username>`<br>`/ProxyPassword:<password>`<br>`/ProxyDomain:<domain>` | `/ProxyURL:<URL>` Specifies the proxy URL. If not specified, Internet Explorer proxy settings are used.<br><br>`/ProxyPort:<portnumber>` Specifies the proxy port number.<br><br>`/ProxyUser:<username>` Specifies the proxy username.<br><br>`/ProxyPassword:<password>` Specifies the proxy password.<br><br>`/ProxyDomain:<domain>` Specifies the proxy domain name. |
| `/ReportFilePath:<folderPath\filename>` | Specifies both output folder and file name of the recommendations output files (.HTML and .XML). This overrides /ReportFolder. |
| `/ReportFolder:<folderPath>` | Specifies the output folder path. |
| `/ResultFilePath:<folderPath\filename>` | Specifies the complete path of the results output file. Default is "Readme xxxx" in the download folder (/SoftPaqDownloadFolder) where xxxx is the current date and time. If /ReportFolder is specified, the default is "Readme" (without the date/time stamp) in the report folder. |
| `/RunHidden` | Inherited from SoftPaq Download Manager (SDM). Equivalent to /Silent. |
| `/SelectCritical` | Inherited from SDM. Equivalent to /Selection:Critical. |
| `/Selection:[All,Critical,Recommended,Routine]` | `[All]` Selects all recommendations available. This is the default operation if no option is specified.<br><br>`[Critical]` If /Operation:[Analyze] is specified, this option selects all critical recommendations. If /Operation:[DownloadSoftPaqs] is specified, this option selects all SoftPaqs with a ReleaseType of Critical.<br><br>`[Recommended]` If /Operation:[Analyze] is specified, this option has no effect on the operation. If /Operation:[DownloadSoftPaqs] is specified, this option selects all SoftPaqs with a ReleaseType of Recommended.<br><br>`[Routine]` If /Operation:[Analyze] is specified, this option has no effect on the operation. If /Operation:[DownloadSoftPaqs] is specified, this option selects all SoftPaqs with a ReleaseType of Routine. |
| `/SelectLatest` | Selects all latest SoftPaqs (Default). Applicable only in: /Operation:DownloadSoftPaqs |
| `/SelectSSMComp` | Inherited from SDM. Equivalent to /InstallType:AutoInstallable. |
| `/SelectUpdate` | Selects all SoftPaqs newer than downloaded SoftPaqs. Applicable only in: /Operation:DownloadSoftPaqs |
| `/Silent` | Runs HP Image Assistant in silent (no UI, non-interactive) mode. |
| `/SoftPaqDownloadFolder:<folderPath>` | Specifies the SoftPaq download folder. If omitted, the default is the current user's download folder. |
| `/SoftPaqExtractFolder:<folderPath>` | Specifies extraction folder path for SoftPaqs. Default is the same location as the download folder. |
| `/SPList:<filename>` | For /Operation:DownloadSoftPaqs, downloads the SoftPaqs listed in the provided text file. For /Operation:Analyze, downloads, possibly extracts, and installs the SoftPaqs listed in the provided text file, depending on the /Action.<br><br>If the path or filename contains spaces, enclose the entire value in quotes. For example, /SPLIST:"C:\My Path\My SP List.txt"<br><br>The file contents are simply a list of raw SoftPaq numbers, without the SP prefix and without .exe extension, one number per line.<br><br>For /Operation:DownloadSoftPaqs, the SoftPaqs are downloaded into the %ProgramData%\HP\HP Image Assistant\SWDownload folder. The corresponding .CVA and release notes (.HTML) are also downloaded for each SoftPaq. When combined with the /Action:Extract(or /DOWNUNPACK) option, each SoftPaq is expanded into its own spXXXXX subfolder.<br><br>For /Operation:Analyze, the download and extract locations can be specified by the /SoftPaqDownloadFolder and /SoftPaqExtractFolder.<br><br>The process runs silently (no UI). HP recommends that you use START/WAIT when scripting so that execution of the following step in the script does not begin until SPLIST processing completes. For example: START /WAIT HPImageAssistant.exe /SPList:mySoftPaqs.txt. |
| `/TargetFile:<targetImagePath>` | A saved XML image configuration file to be analyzed. |
| `/UWP:[Yes\|No]` | Further restrict selections based on whether a recommendation pertains to a Universal Widows Platfofrm (UWP). This selection restriction is applied after /Selection and /Category are processed.<br><br>**NOTE:** You cannot download or install some non-UWP components if they are part of a SoftPaq that contains a UWP App.<br><br>`[Yes]` Selects only UWP recommendations<br><br>`[No]` Selects only non-UWP recommendations |
| `/VerifySoftPaq:<SoftPaqpath>` | Verifies the specified SoftPaq EXE integrity/signature. |
| `/Wait:<delayInSeconds>` | The /Wait parameter tells HP Image Assistant to wait the specified delayInSeconds before showing the UI or running the specified /Operation command in silent mode. If no delayInSeconds is specified, the default delay is 60 seconds. |

### Command Line Examples

These examples show HPIA command-line switches that you can use in the task sequence:

This command silently downloads SoftPaqs of all categories such as BIOS, driver, software, and firmware to a specific folder and creates a report in a directory or folder on the client system:

```
HPImageAssistant.exe /Operation:Analyze /Category:All /selection:All /action:download /silent /reportFolder:c:\HPIA\Report /softpaqdownloadfolder:c:\HPIA\download
```

To silently download and extract SoftPaqs of all categories and create a report in a directory or folder on the client system, use the following command:

```
HPImageAssistant.exe /Operation:Analyze /Category:All /selection:All /action:extract /silent /reportFolder:c:\HPIA\Report /softpaqdownloadfolder:c:\HPIA\download
```

If you prefer to download and extract SoftPaqs to two directories or folders, then use this command:

```
HPImageAssistant.exe /Operation:Analyze /Category:All /selection:All /action:extract /silent /SoftPaqdownloadfolder:c\HPIA\download /SoftPaqExtractFolder:c:\HPIA\extract
```

This command downloads only UWP SoftPaqs that are available in all categories with any release types to a specific folder on the client system:

```
HPImageAssistant.exe /Operation:DownloadSoftPaqs /category:all /selection:all /UWP:yes /action:download /silent /softpagdownloadfolder:c:\HPIA\download
```

If you prefer to download all SoftPaqs except UWP, then use the previous command with `/UWP:no`

To get or save a list of recommendations to C:\HPIAOut\Recommendations folder:

```
HPImageAssistant.exe /Operation:Analyze /Action:List /Silent /ReportFolder:C:\HPIAOut\Recommendations
```

To download recommended critical driver SoftPaqs:

```
HPImageAssistant.exe /Operation:Analyze /Category:Drivers /Selection:Critical /Action:Download /Silent
```

---

## 7. Command line error return codes

The following are descriptions of the HP Image Assistant error return codes when using the command line.

### Table 7-1: Command line error return codes and their descriptions

| Return code | Description |
|-------------|-------------|
| 0 | There is no error. |
| 1 | The /VerifySoftPaq command returns that the SoftPaq binary verification could not be found. |
| 2 | The /VerifySoftPaq command returns that an exception occurred. |
| 3 | The /VerifySoftPaq command returns that the SoftPaq binary verification was signed by an invalid company. |
| 4 | The /VerifySoftPaq command returns that the SoftPaq binary verification authenticode failed. |
| 5 | The /VerifySoftPaq command returns that the SoftPaq binary verification certificate chain failed. |
| 256 | The analysis returned no recommendations. |
| 257 | There were no recommendations selected for the analysis. |
| 3010 | Install Reboot Required — SoftPaq installations are successful, and at least one requires a reboot. |
| 3020 | Install failed — One or more SoftPaq installations failed. |
| 4096 | The platform is not supported. |
| 4097 | The parameters are invalid. |
| 4098 | There is no Internet connection. |
| 4099 | Invalid SoftPaq number in SPList file. |
| 4100 | SoftPaq My Product List is empty, so no data was processed. |
| 4101 | The parameter is no longer supported. |
| 8192 | The operation failed |
| 8193 | The image capture failed. |
| 8194 | The output folder was not created. |
| 8195 | The download folder was not created. |
| 8196 | The supported platforms list download failed. |
| 8197 | The KB download failed. |
| 8198 | The extract folder was not created. |
| 8199 | The SoftPaq download failed. |
| 8200 | The SoftPaq extraction failed. |
| 12288 | The target file failed to open. |
| 12289 | The target file is invalid. |
| 16384 | The reference file failed to open. |
| 16385 | The reference file is invalid. |
| 16386 | The reference file is not supported on platforms running the Windows 10 operating system. |
| 20480 | The operating system migration cannot be performed because the operating system architecture is not supported. |

### HP Software Wrapper error return codes

Some HP SoftPaqs use a program called HP Software Wrapper to install the SoftPaq.

You can find more information on the support page.

HP Software Wrapper uses the file name InstallCmdWrapper.exe. HP Software Wrapper has different logs for debugging purposes.

#### Table 7-2: HP Software Wrapper Logs

| Log name | Description |
|----------|-------------|
| InstallCmdWrapper.log | Chronicle history including the return code from the process that controlled the installation (for example, install.cmd). |
| InstallCmdWrapper-InstallCmd.log | The standard output of install.cmd when it is used to control the installation. |
| InstallCmdWrapper-Appx.log | The standard output of UWP installation when it is controlled by InstallCmdWrapper. |
| InstallCmdWrapper-DCHU.log | The standard output of DCHU installation when it is controlled by InstallCmdWrapper. |
| InstallCmdWrapper-Fusion.log | The standard output of Fusion installation when it is controlled by InstallCmdWrapper. |

The following are descriptions of HP Software Wrapper error return codes that are coming from the SoftPaq:

#### Table 7-3: HP Software Wrapper error return codes

| Return code | Description |
|-------------|-------------|
| 9527 | Requires elevated privileges |
| 9537 | Bypass the return code of install.cmd |
| 9547 | Failed to install DCHU/Fusion driver |
| 9557 | Failed to install UWP application |
| 9627 | Unable to locate anything for installation |

---

## 8. Capturing an image

If you run HPIA on an HP computer, by default, HPIA selects the reference image provided by HP. HPIA also supports capturing a reference image from a known, good computer.

ImageCapture.exe is a lightweight command-line executable that can be run on a machine to capture the image configuration in an XML file for future analysis against target images. IT administrators using MDT or Configuration Manager can create a software package or task sequence to run this tool on a client and save the XML file to a designated location to be used with other HPIA features.

The HPIA Image Capture tool generates the configuration XML file in the same directory as the executable, using the naming convention of `SYSID_BIT_OSVERSION.xml`, as follows:

- **SYSID**—HP platform system ID (for example, 2253)
- **BIT**—Operating system architecture (64 for 64-bit, 32 for 32-bit)
- **OSVER**—Operating system major and minor versions (for example, 10.0 for Windows 10)

### To capture an image:

1. Run ImageCapture.exe as an administrator from a USB flash drive.
   
   **– or –**
   
   Run ImageCapture.exe as an administrator from the command line.
   
   **– or –**
   
   Open the directory where you extracted the HPIA files to a computer, right-click HPImageAssistant.exe, and then select **Run as administrator**. Select **Tools**, and then select **Capture Target Image Configuration**.

2. Save the configuration files to a USB flash drive.

   > **TIP:** This ensures that you do not modify the image of the computer you are working on.