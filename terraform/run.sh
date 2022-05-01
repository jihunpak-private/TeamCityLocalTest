set -e
set -x

#az logout

export ARM_SUBSCRIPTION_ID="bffb5be7-cc13-43b6-90d9-38964ec0b45b"
export ARM_CLIENT_ID="3d2c0db3-8c19-45dc-91d3-ded255847b5a"
export ARM_CLIENT_SECRET="hcF8Q~WNAH4YNx_wiyN97pXYzuNLuOAPPA3Rsb7v"
export ARM_TENANT_ID="c12007a4-882b-4381-b05a-b783431570c7"
export TF_VAR_object_id="bbf07fa3-6d0d-4501-b176-ce13f3dcfc13"

az account list
az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID

terraform init
terraform validate
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve

# export ARM_SUBSCRIPTION_ID="9a8e1a59-ab84-49af-a717-7f2582116098"
# #export ARM_CLIENT_ID="d107e0b1-ff40-4628-992a-4b9b1662851c"
# #export ARM_CLIENT_SECRET="mcs7Q~KntigfARk121chbLvTkv57hDymUG4M5"
# #export ARM_TENANT_ID="c12007a4-882b-4381-b05a-b783431570c7"

# #az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID
# az login -u {USER_ACCOUNT} -p {USER_PASSWORD}
# az account set --subscription $ARM_SUBSCRIPTION_ID

# ### import variable
# export TF_VAR_object_id="a0c672d0-9f8c-4cb4-8423-8406dacabe4f"

### create resource using terraform script
#terraform init
#terraform validate
#terraform import module.add_redirect_urls.azuread_application.ad $TF_VAR_object_id
#terraform plan
#terraform apply -auto-approve
#terraform output -json > output.json

### destroy resource using terraform script
#terraform plan -var="add_redirect_url_redirect_uris=[]"
#terraform apply -var="add_redirect_url_redirect_uris=[]" -auto-approve
#terraform state rm module.add_redirect_urls.azuread_application.ad 
#terraform destroy -auto-approve