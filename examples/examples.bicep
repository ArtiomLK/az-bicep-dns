targetScope = 'resourceGroup'
// ------------------------------------------------------------------------------------------------
// Deployment parameters
// ------------------------------------------------------------------------------------------------
param location string = resourceGroup().location
// Sample tags parameters
var tags = {
  project: 'bicephub'
  architecture: 'alz'
  env: 'dev'
}

var dns_list = [
  'domain1.com'
  'domain2.com'
  'domainN.com'
  'public.${location}.azmk8s.io'
]

// ------------------------------------------------------------------------------------------------
// DNS Deployment Examples
// ------------------------------------------------------------------------------------------------
module DNSDeployment '../main.bicep' = {
  name: 'DNSDeployment'
  params: {
    tags: tags
    dns_list: dns_list
  }
}
