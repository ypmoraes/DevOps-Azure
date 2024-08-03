This Terraform configuration deploys a basic web application infrastructure to Azure, consisting of:

2 Web VMs: Serve as the frontend for the application.
1 Load Balancer: Distributes traffic across the web VMs.
1 App VM: Handles application logic.
1 SQL Database: Stores application data.
Prerequisites
Azure Subscription: An active Azure subscription is required.
Terraform: Install Terraform on your local machine.
Azure Provider: Install the Azure provider for Terraform.
Azure Credentials: Configure Azure credentials for Terraform using environment variables or a configuration file.