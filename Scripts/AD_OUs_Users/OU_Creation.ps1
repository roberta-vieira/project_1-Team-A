# Description> This script is used for creating OU and the users in the respective OUs.

# Import active directory module for running AD cmdlets
Import-Module activedirectory

# Store the data from the CSV file that contains OU information
$ous = Import-Csv ".\import_ou.csv" -Delimiter ';'

Write-Output "`nCreating OUs in Active Directory"
Write-Output $ous

# Loop through each line of the CSV line and creation of OU in AD
foreach ($ou in $ous){
    $name = $ou.name
    $path = $ou.path

    New-ADOrganizationalUnit -Name $name -Path $path -ProtectedFromAccidentalDeletion $False

}


