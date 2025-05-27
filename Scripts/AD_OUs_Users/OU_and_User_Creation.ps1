Write-Output "
______      _       ______         _   
|  _  \    | |      |  ___|       | |  
| | | |__ _| |_ __ _| |_ ___  _ __| |_ 
| | | / _`  | __/  _` |  _/ _ \| '__| __|
| |/ / (_| | || (_| | || (_) | |  | |_ 
|___/ \__,_|\__\__,_\_| \___/|_|   \__|
                                                               
                                       "

Write-Output "              Menu Options`n
1. Creation of OUs on import_ou CSV file
2. Creation of users on import_users CSV file"

$user_option = Read-Host "`nPlease choose one of the previous menu options: "

if($user_option -eq '1'){
# Run script that creates the OUs
.\OU_Creation.ps1
}
elseif($user_option -eq '2'){
# Run the script that creates the users
.\User_Creation.ps1
}
else{
Write-Output "`nYou did not choose a valid menu option"
}
