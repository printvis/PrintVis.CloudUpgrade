# Part 2 - Business Central Cloud

In part 1 we have prepared the data migration completely in C/Side without the use of extensions and/or PowerShell. We also generated an .al file that contains the intermediate tables that will contain the data you have customized for the customer.
As an optional step, we have used the ForNAV converter to generate a Per Tenant Extension that will contain the final Table and Page Extensions as well as skeleton codeunits for event subscribers.
In part 2 we will migrate your data to a Business Central online tenant and optionally, restore this tenant On Premises or in a private cloud.
<br>
```
NOTE : It is recommended to do the datamigration in a production tenant and not in a sandbox. We do that for three important reasons.
```

## Step 1 - The Intermediate Extension

As part of the documentation we have provided a template extension that contains tables for the PrintVis migration and code to move this into the PrintVis App you can find on AppSource.
In this step we are going to place the .al file with your customized tables in this template and publish this to the customers tenant.
<br>
```
NOTE : Since we are publishing this extension to a production tenant, the App ID must be a unique GUID. Please refresh the GUID in the provided template
```

If you have uploaded the extension to your production tenant you can start the Wizard by searching for "PrintVis Upgrade Wizard" in the search window.

## Step 2 - Install the Microsoft Integration Runtime (SQL Server Only)

If your customer is running on their own SQL Server you need to install the Microsoft Integration Runtime. This will allow the Business Central Cloud conversion tool to connect to your database.
<br>
```
NOTE : If you run on Azure SQL this step is not required
```

## Step 3 - Configure the Business Central Migration Table Mapping

This step is probably the most important one, and the true reason why we can use intermediate tables in C/Side. We will connect these C/Side table to the intermediate Extensions.
After this mapping is done, we can run the Data Migration from the cloud environment.

## Step 4 - Install PrintVis from AppSource and publish the customers customizations

Both the PrintVis and Customization data is now stored in your intermediate extension and is ready to be copied into the real Apps.
You can simply install PrintVis from AppSource into your tenant.
The Per Tenant Extension with Table Extensions and Page Extensions need to be published manually.
When both extensions are installed you can run the final data migration step from the PrintVis Upgrade Wizard.
<br>
```
NOTE : After this step you can safely remove the intermediate extension from the tenant. This will also remove the PrintVis Upgrade Wizard.
```

## Step 5 - Restore the Tenant to an On Premises environment (Optional)

-