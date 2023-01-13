# Crowdfunding_ETL
Project2

# Crowdfunding_ETL

Project2

# Extract the crowdfunding.xlsx Data

## Create the Category and SubCategory

Cleaned the DF by splitting a column into a Category and SubCategory column.

Created category_id/subcategory_id columns tot help id the categories/subcategories. Use list comprehensions to achieve this.


## Campaign DataFrame
Renamed three columns to description, launch_data, and end_date.
Converted columns to different datatypes:
	goal changed from string to float
	pledged changed from string to float
	launch_date changed from string to datetime
	end_date changed from string to datetime

merged the campaign_df, category_df and subcategory_df around the category and subcategory columns

Finally dropped the unwanted columns.

## Create the Contacts DataFrame 
## We chose Option 1: Use Pandas to create the contacts DataFrame

The directions asked for dictionary but looking at the output given in the starter code, it gave a list of lists.
We iterated to create an output that matches the output given using iterrows() by pulling the dictionaries and splitting between lists for the coulmn names and the data within each row.


Cleaned the new dataframe by splitting first and last name and rearranging the orders.

# Files created from the project:

Campaign.csv
Category.csv
Subcategory.csv
Contacts/csv

# crowdfunding_db_schema.sql
created a database with the tables of category subcategory contacts and campaign

# crowdfunfing_erd.JPG
is a diagram of the relations between the tables in the crowdfunding_db
