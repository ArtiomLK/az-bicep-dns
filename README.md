# Azure DNS Zone

[![DEV - Deploy Azure Resource](https://github.com/ArtiomLK/azure-bicep-dns/actions/workflows/dev.orchestrator.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicep-dns/actions/workflows/dev.orchestrator.yml)

## Deploy DNS from parameters

```bash
# download bicep deployment template file
curl -o dns-deployment.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicep-dns/main/main.bicep

# download bicep parameters file
curl -o dns-parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicep-dns/main/parameters/dns-parameters.json

az deployment group create \
--name 'dns-file-parameters-deployment' \
--resource-group 'rg-alz-dns' \
--subscription '########-####-####-####-############' \
--template-file dns-deployment.bicep \
--parameters @dns-parameters.json
```
