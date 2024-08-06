```yaml
topic:      Office 365 installation configuration
tag:        [guide, config]
version:    0x0010
```
# Configuration of Office 365 Installation
```yaml
# REQUIREMENT
system: Windows 10 or 11
```

## STEP 1
Create a configuration on [Office Customization Tool](https://config.office.com/deploymentsettings) page

or use this template, delete lines with programs that you want to keep, and save it as `office-conf.xml`.
```xml
<Configuration>
    <Add OfficeClientEdition="64" Channel="Current">
        <Product ID="O365ProPlusRetail">
            <Language ID="pl-pl" />
            <Language ID="en-us" />
            <ExcludeApp ID="Access" />
            <ExcludeApp ID="Groove" />
            <ExcludeApp ID="Lync" />
            <ExcludeApp ID="OneDrive" />
            <ExcludeApp ID="OneNote" />
            <ExcludeApp ID="Publisher" />
            <ExcludeApp ID="Teams" />
            <ExcludeApp ID="Bing" />
            <ExcludeApp ID="Word" />
            <ExcludeApp ID="Excel" />
            <ExcludeApp ID="PowerPoint" />
        </Product>
    </Add>
    <Updates Enabled="FALSE" />
</Configuration>
```
> [!TIP]
> More information about product IDs for different Office installations can be found [HERE](https://learn.microsoft.com/en-us/microsoft-365/troubleshoot/installation/product-ids-supported-office-deployment-click-to-run)

## STEP 2
Download the [Office Deployment Tool](https://www.microsoft.com/en-us/download/details.aspx?id=49117) and run it.

## STEP 3
After accepting the agreement, select the folder where the setup files will be stored. (After installation, you can safely delete them.)

## STEP 4
Copy office-conf.xml (the file from STEP 1) to the folder selected in STEP 3. The folder should contain setup.exe, office-conf.xml, and some Microsoft configurations:
```
configuration-Office2019Enterprise.xml
configuration-Office2021Enterprise.xml
configuration-Office365-x64.xml
configuration-Office365-x86.xml
office-conf.xml
setup.exe
```

## STEP 5
Open cmd or PowerShell and navigate to the directory selected in STEP 3. For example, the `Office` folder on the user desktop:
```powershell
cd $env:USERPROFILE\Desktop\Office
# cd C:\Users\[USER-NAME]\Desktop\office
```

## STEP 6
Execute this command:
```powershell
setup.exe /configure "office-conf.xml"
```

## Installation complete

## Useful links
- [Configuration options for the Office Deployment Tool](https://learn.microsoft.com/en-us/microsoft-365-apps/deploy/office-deployment-tool-configuration-options)
- [List of Product IDs that are supported by the Office Deployment Tool for Click-to-Run](https://learn.microsoft.com/en-us/microsoft-365/troubleshoot/installation/product-ids-supported-office-deployment-click-to-run)