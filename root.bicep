param location string = resourceGroup().location

module devStorage 'modules/storageAccount.bicep' = {
  name: 'devStorageDeployment'
  params: {
    storageAccountName: 'devstorage${uniqueString(resourceGroup().id)}'
    location: location
    storageSku: 'Standard_LRS'
    storageKind: 'StorageV2'
  }
}

module prodStorage 'modules/storageAccount.bicep' = {
  name: 'prodStorageDeployment'
  params: {
    storageAccountName: 'prodstorage${uniqueString(resourceGroup().id)}'
    location: location
    storageSku: 'Standard_GRS'
    storageKind: 'StorageV2'
  }
}

output devStorageId string = devStorage.outputs.id
output prodStorageEndpoint string = prodStorage.outputs.primaryEndpoint
