# AD_OUs_Users Scripts

This folder contains PowerSHell scripts and supporting CSV files used to automate the creation of Organizational Units (OUs)
and users in Active Directory.

## Contents

- `OU_Creation.ps1`: Creates the required OUs under the main OU `DataFort Users`.
- `User_Creation.ps1`: Creates user accounts based on department and places them in the correct OU.
- `import_ou.csv`: List of OUs to create.
- `import_users.csv`: User account data, including name, job tile, department and location in the organizational structure.

## Prerequisites

Before running these scripts:

- The server must already have been promoted to a **Domain Controller**.
- The domain **must** be named 'datafort.local'.
- Run the scripts in **PowerShell as Administrator**.
- The CSV files must be in the **same directory** as the scripts being executed.
- If running PowerShell scripts for the first time, you may need to enable script execution by running the following command:

  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

## Execution Order

- Run 'OU_Creation.ps1' to create the Organizational Units first.
- Then run the 'User_Creation.ps1' to create and assign users to their respective department OUs.

## Notes

- Both scripts use `Import-Csv` and assume a semicolon-separated format (`;`). Ensure the CSV files are correctly formatted before running the scripts.
- All users are created with a default secure password that must be changed at first login. This enforces individual credential security without manual
password distribution.
