# Part 1 - Preparations in C/Side

The preparation for the upgrade is guided by a wizard, documenation and video's. We've spit the steps into two categories; Customizations and PrintVis.

The Customizations step is optional, but if the system is customized it's mandatory to handle this step before continuing with the PrintVis Step.

## Importing the Upgrade Toolkit & Starting the Wizard

This part starts by importing the .fob file in your C/Side system and starting the wizard page. You can start the Upgrade Wizard directly from C/Side by executing page 104000 or you can use the Run Generic Object from the Role Tailored Client and start page 104000 from there.

```
NOTE - Running the Upgrade Toolkit requires a Partner License to be activated on the Service Tier
```

The Wizard has automatically scans the database for any data customizations. If you have customized PrintVis it is mandatory to process these changes before preparing PrintVis tables. If you skip this step there is a chance that you remove data that cannot be recovered without restoring a backup.
As part of the upgrade project we will create the Per Tenant Extension skeleton that will hold your customizations in the Cloud system.

[![ImportUpgradeToolkit](../.media/ImportUpgradeToolkit.png)](https://www.youtube.com/watch?v=XRGSMVC54TM "Import Upgrade Toolkit Click to Watch!")
<br>
```
NOTE - The tool does not detect any changes done to the PrintVis schema such as datatype changes, added option values or changes in length of text and code fields.
```

## Steps for Customizations

The wizard has 5 guided steps for preparing your customizations to the cloud. If your database has customizations the first 4 steps are mandatory. The last step is a link to create the Per Tenant Extension using the ForNAV Converter. We think this is the fastest way to prepare this solution.

![CustomizationsWizard.png](../.media/CustomizationsWizard.png)

### Step 1 - Generate Code for Customizations Migration

In this step we will generate C/AL Objects that will act as intermediate tables to contain your customized data.

If you click on the link a file will be generated that you can import into C/Side.

### Step 2 - Import Objects into C/Side

The file we have imported in Step 1 needs to be imported into C/Side and the objects should be compiled.

[![ImportGeneratedCode](../.media/ImportGeneratedCode.png)](https://www.youtube.com/watch?v=ZTDkCR3KvHo "Import Upgrade Toolkit Click to Watch!")

### Step 3 - Execute Customizations Migration



<br>
<br>
Prepare PrintVis data