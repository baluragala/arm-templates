param storageAccountName string = 'msa${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location
param storageSku string = 'Standard_LRS'
param storageKind string = 'StorageV2'

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

output storageAccountId string = storageAccount.id
output storageAccountPrimaryEndpoint string = storageAccount.properties.primaryEndpoints.blob
