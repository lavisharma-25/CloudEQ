What is Terraform?

Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently. It is a IAC Tool which comes under Provision Tools. HashiCorp Configuration Language (HCL) to use Terraform. Terraform can manage infrastructure on multiple cloud platforms.


REQUIREMENTS

We have created two file for this Terraform Configuration such are main.tf and variable.tf

I. main.tf includes below resources :

1. "local_file" resource used to create a local file in our system. And we have used various arguments such as filename, content and file_permission.

a. filename: The path to the local file, which is constructed using the file_path and file_name variables.

b. content: The content of the local file, which is provided by the file_contents variable.

c. file_permission: The file_permission argument determines the permissions to be set on the local file being created. We have selected 

2. "output block" used to provide a variety of values to be displayed after applying the configuration.


II. variables.tf includes variables which includes name of the file, content of the file and permissions for that file.

WORKNG

1. To run this Terraform Configuration, we need to open terminal and type first command "terraform init" which is used to initialize terraform and download required packages. And it also create ".terraform.lock.hcl" file (contains hashes (encrypted data) and local file resource version of terraform require to run program) and .terraform folder (contains required packages). ".terraform.lock.hcl" file is maintained automatically by "terraform init".

2. On terminal, now run command "terraform validate", it will validate syntax error of configuration.

3. Next step is to run "terraform plan" command : The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. It compare actual state with desired state.

4. Now run command "terraform apply" : The terraform apply command executes the actions proposed in a Terraform plan.
 "terraform apply -auto-approve" : "-auto-approve" option to instruct Terraform to apply the plan without asking for confirmation.

Note : terraform.tfstate file - maintains what we are creating. it helps us to know what is actual state
Note : terraform.tfstate.backup file - maintain 1 previous state


