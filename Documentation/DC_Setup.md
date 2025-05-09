# Domain Controller Configuration  
**Date:** 2025-05-08  
**Operating System:** Windows Server 2019  
**Hostname:** WIN-KV11C3FBMUB  

## 1. Technical Specifications  
- **IP Address:** 10.0.2.15  
- **DNS Server:** 127.0.0.1 (self)  
- **Domain Name:** datafort.local  
- **Forest Functional Level:** Windows Server 2016 *(default for WS2019)*  

## 2. Implementation Steps  
1. Installed and promoted to Domain Controller using AD DS Configuration Wizard  
2. Verified promotion with:  
   ```powershell
   Get-ADDomain | FL Name,DomainMode,DNSRoot

## 3. Evidence  
### Screenshots:  
- [x] **DC Promotion Verification**  
  ![DC Promotion Success](Documentation/Screenshots/DC-promotion.verification)  
  *Successful promotion dialog and AD DS installation*  
