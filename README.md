# **DataFort Solutions - Secure IT Infrastructure Implementation**  
**Course:** Code For All - Intensive Cybersecurity Course #2 (ICC-02)  
**Team:** [Your Team Name]  
**Date:** 15/05/2025 

---

## **📌 Project Overview**  
This project implements a secure IT infrastructure for DataFort Solutions, including:

- Active Directory domain controller setup
- Network Access Control with FreeRADIUS
- Security policy enforcement
- Workstation standardization
- Custom network monitoring tools
- Secure file transfer solution

---

## **✅ Project Deliverables**  

### **1. Active Directory Implementation**  
- Domain controller configuration (Documentation/DC_Setup.md)  
- Organizational Unit (OU) structure mirroring company hierarchy  
- PowerShell script for automated user creation (`/Scripts/UserCreation.ps1`)  

### **2. Network Access Control**  
- FreeRADIUS captive portal implementation  
- AD integration for authentication  
- Access policies following least privilege principle  

### **3. Security Policies**  
- GPOs for password complexity requirements  
- Device control policies (USB restrictions)  
- Logon/logoff auditing  

### **4. Workstation Standardization**  
- Company-branded wallpaper deployment  
- Screenshots in `/Documentation/Workstation_Standardization/`  

### **5. Custom Network Tooling**  
- Python network monitoring tool (`/Tools/NetworkMonitor.py`)  
- GitHub repository: [link-to-your-repo]  

### **6. Secure File Server**  
- FileZilla FTP server configuration  
- Documentation in `/Documentation/FileZilla_Setup.md`  

### **7. Reporting**  
- Client report: `/Documentation/Client_Report.pdf`  
- Presentation slides: `/Documentation/Project_Presentation.pptx`  

---

## **🛠️ Technical Implementation**  

``powershell
# Example: Verify AD user creation
Get-ADUser -Filter * | Select Name,Enabled

# Example: Test FreeRADIUS authentication
radtest username password localhost 0 testing123

---

## **📂 Repository Structure**
/  
├── AD_Config/            # Active Directory setup files
├── FreeRADIUS/           # NAC configuration  
├── GPO_Backups/          # Exported Group Policy Objects  
├── Tools/                # Custom network tools  
│   └── NetworkMonitor.py  
├── Documentation
│   ├── DC_Setup.md/
│   ├── Workstation_Standardization/  
│   ├── Client_Report.pdf  
│   └── Network_Diagrams/  
├── Scripts/              # Automation scripts  
└── README.md             # This file

---

## **⚠️ Important Notes**  
*(No README.md)*  
- [Credenciais padrão](Documentation/SECURITY_NOTES.md) devem ser alteradas em produção  
- Testado apenas em Windows Server 2019  

## **🔜 Next Steps**  
*(Link para arquivo detalhado)*  
Veja o [ROADMAP.md](Documentation/ROADMAP.md) para o plano de implementação futura.  
