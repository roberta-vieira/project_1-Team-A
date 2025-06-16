# Domain Controller Configuration  
**Date:** 2025-05-08  
**Operating System:** Windows Server 2019  
**Hostname:** WIN-KV11C3FBMUB  

## 1. Technical Specifications  
- **IP Address:** 10.0.2.15  
- **DNS Server:** 127.0.0.1 (localhost)  
- **Domain Name:** datafort.local  
- **Forest Functional Level:** Windows Server 2016 *(default for WS2019)*  

## 2. Implementation Steps  
1. Installed and promoted to Domain Controller using AD DS Configuration Wizard  
2. Verified promotion with:  
   ```powershell
   Get-ADDomain | FL Name,DomainMode,DNSRoot
   
<!--## 3. User Organization and CSV Structure
Users are created using a PowerShell script that reads from a structured CSV file: `/Scripts/UserList.csv`.

The organizational structure within Active Directory is organized under a main Organizational Unit (OU) named `DataFort Users`.<br>
Each department is then represented by a sub-OU within this main OU. Users are assigned to the corresponding sub-OU according to their departments from the information provided in the document `datafort-organizational chart.pdf`. -->


## . Evidence  
### Screenshots:  
- [x] **DC Promotion Verification**  
  ![DC Promotion Success](https://github.com/roberta-vieira/project_1-Team-A/blob/7a7c9890b3a509a54bda8cd65ce00ca0231b6b0e/Documentation/Screenshots/DC-promotion-verification.png) 
  *Successful promotion dialog and AD DS installation*  
