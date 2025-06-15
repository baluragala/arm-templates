param storageAccountName string
param location string
param storageSku string
param storageKind string

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageSku
  }
  kind: storageKind
  properties: {
    supportsHttpsTrafficOnly: true
  }
}

output id string = storageAccount.id
output primaryEndpoint string = storageAccount.properties.primaryEndpoints.blob
