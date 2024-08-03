This Python script automates backing up an Azure SQL database to Azure Blob Storage.

Features
Creates a local backup file of the specified database.
Uploads the backup file to a designated Azure Blob Storage container.
Deletes the local backup file after successful upload.
Requirements
Python 3.x installed
pyodbc library installed (pip install pyodbc)
Azure account with access to:
SQL Database server
Blob Storage account
Usage
Configure: Replace placeholder values in the main function with your Azure credentials and resource details:

subscription_id
resource_group
sql_server_name
database_name
storage_account_url
container_name
Run:

Open a terminal or command prompt in the directory containing the script.
Run the script using: python script_name.py
Scheduling
The script provides a basic schedule_backup function but doesn't implement scheduling itself. You'll need to use a separate tool like:

Windows Task Scheduler for Windows systems.
cron for Linux/Unix systems.
Modify the schedule variable in the schedule_backup function to define your desired backup frequency.