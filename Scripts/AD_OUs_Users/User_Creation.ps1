# Import Active Directory modules to use AD cmdlets
Import-Module ActiveDirectory

# Import user data information from the CSV file into a variable
$users = Import-Csv ".\import_users.csv" -Delimiter ";"

# Default password for the users
$password = ConvertTo-SecureString "1Df@ultP@ssword!Team-A" -AsPlainText -Force

# Loop through each row to gather the user's information and create the AD account
foreach ($user in $users){

    Write-Output "User being created:"
    Write-Output $user

    $first_name = $user.'First Name'
    $last_name = $user.'Last Name'
    $job_title = $user.’Job Title’
    $department = $user.'Department'
    $OU_path = $user.'Organizational Unit'

    # Create a new AD user with the information from the CSV file
    New-ADUser -Name "$first_name $last_name" -GivenName $first_name -Surname $last_name -UserPrincipalName "$first_name.$last_name" -SamAccountName "$first_name.$last_name" -Title $job_title -Department $department -Path $OU_path -AccountPassword $password -ChangePasswordAtLogon $True -Enabled $True
}
