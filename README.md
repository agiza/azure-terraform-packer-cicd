This is Azure Terraform / Packer CI/CD - Sample with step by step example

# Step 1
git clone this repo
# Step 2
Login to Azure and Create Azure Service principal 
https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest

# Step 3 
Create a Resource group in your Azure Subscription
eg. az group create -l westus -n MyResourceGroup

# Step 4
Create a SSH Public and Private Key Pair 
https://docs.microsoft.com/en-us/azure/virtual-machines/linux/mac-create-ssh-keys

# Step 5
export following Variables:

export TF_VAR_client_id=\<your client ID from Azure Serice Principal from Step2>

export TF_VAR_client_secret=\<your client key from Azure Service Principal from Step2>

export TF_VAR_tenant_id=\<your tenant id from Azure Service Principal from Step2>

export TF_VAR_subscription_id=\<your client subscription id from Step2>

export TF_VAR_location=\<your desised azure location>

export TF_VAR_resource_group_name=\<your azure resource group from Step3>

export TF_VAR_ssh_key_path=\<local path to ssh public key from step 4 /home/user/ssh_pub.key>

# Step 6 
terraform init 
# Step 7

For ubuntu image run

./deploy.sh 
 
For CentOS image run 

centos-tf/deploy-centos.sh