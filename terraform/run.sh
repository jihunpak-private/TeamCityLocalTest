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