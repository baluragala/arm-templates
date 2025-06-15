ARM Templates:
---

$schema - refers to rules version
paramaters - place holders which needs to be filled upon using this template
resources - this is the most important part in template - which actually defines the resource to be created

az deployment sub create \  
  --location eastus \
  --template-file rg-template.json \
  --parameters @rg-params.json


Bicep - DSL ( Domain Specific Langauge )

Why?
Simplified Syntax
Modularity
Automatic Dependency Management
Type Saftey
Azure CLI / Powershell Integration

Concepts:
-------
Resources - Seen
Parameters
Variables
Outputs
Modules


Modules Plan:
------------
1) modules/storageAccount.bicep => this contains template to create SA

2) root.bicep => refer to modules/storageAccount.bicep