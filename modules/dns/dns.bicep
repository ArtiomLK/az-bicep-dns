param tags object
param dns_n string

resource dnsZone 'Microsoft.Network/dnsZones@2018-05-01' = {
  name: dns_n
  location: 'global'
  tags: tags
}
