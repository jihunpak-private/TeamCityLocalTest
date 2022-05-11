## How to run the sciprt

You shoud change `client_certificate_path`, the path to `.pfx` file in `secrets.tfvars`.

You can find `service-principal.pfx` in `../Secrets/`.


```
> terraform apply -var-file 'secrets.tfvars' -var-file 'production.tfvars' -auto-approve
```