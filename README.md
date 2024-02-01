Provisioning Instances and VPCs on AWS, Azure, and GCP with Terraform 

Introduction:
This repository contains Terraform configurations and documentation for provisioning instances (virtual machines) and Virtual Private Clouds (VPCs) on Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP). Terraform enables infrastructure as code (IaC), facilitating automation and simplification of the infrastructure provisioning process across multiple cloud providers.

Prerequisites:
Before using the Terraform configurations provided in this repository, ensure you have the following prerequisites

Terraform: Install Terraform by following the instructions provided here.

AWS Account: Create an AWS account if you haven't already.

Azure Subscription: Create an Azure account and subscription if you haven't already.

GCP Account: Sign up for a GCP account if you haven't already.

Credentials and Access: Ensure you have appropriate credentials and access to the respective cloud platforms for provisioning resources.

Service Account Key: For GCP, generate a service account key and download the JSON key file.

Getting Started:
Follow the steps below to get started with provisioning instances and VPCs on AWS, Azure, and GCP using Terraform:
Clone the Repository: Clone this repository to your local machine.

git clone https://github.com/D-singh121/multicloud-instance-vpc-project.git
Navigate to the Directory: Change your working directory to the cloned repository.

cd terraform-multi-cloud-instances-vpcs

Provide Credentials and Configuration:

For AWS:
Ensure your AWS credentials are configured either via environment variables, AWS CLI configuration, or AWS shared credentials file.

For Azure:
You can authenticate using the Azure CLI or by setting the environment variables ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_SUBSCRIPTION_ID, and ARM_TENANT_ID.

For GCP:
Place the service account key JSON file downloaded earlier in the gcp directory.
Initialize Terraform: Run terraform init to initialize the working directory and download the required providers and modules.

terraform init
Review and Modify Configuration: Review the Terraform configuration files (aws/, azure/, gcp/) to customize the instance and VPC specifications according to your requirements.

Plan and Apply: Use terraform plan to review the execution plan and terraform apply to apply the changes and provision the infrastructure.

To deploy the project:
terraform plan
terraform apply


Follow On-Screen Instructions: Terraform will prompt you for any necessary inputs during the execution. Follow the on-screen instructions to provide the required information.

