param(
  [string] [Parameter(Mandatory = $true)] $projectName,
  [string] [Parameter(Mandatory = $true)] $location,
  [string] [Parameter(Mandatory = $true)] $environmentType
)

$rgname = $projectName + '-rg-' + $environmentType + '-' + $location

Write-host "##########################################################"

az account set --subscription $subscription

az group create \
  --name $rgname \
  --location $location