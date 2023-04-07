targetScope = 'resourceGroup'
// ------------------------------------------------------------------------------------------------
// Deployment parameters
// ------------------------------------------------------------------------------------------------
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
