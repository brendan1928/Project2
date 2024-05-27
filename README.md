# Project-2

## File instructions

Source data / crowdfunding.csv should be located in a Folder called 'Resources' on the same path as the .ipynb before running the .ipynb (as provided).

Before creating the database, ensure that the .ipynb is run in its entirety so that the necessary .csv files are created and can be imported into the database.

When running the SQL script create the 'campaign' table last. Do not create it before the other tables as it references the other tables. Can also be run as a complete block as provided.

When importing the CSV files into the database, be sure to import CATEGORY, CONTACTS, AND SUBCATEGORY before CAMPAIGN. 
This is because CAMPAIGN has references to those files and will not load properly.
