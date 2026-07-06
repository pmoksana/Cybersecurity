## **Lab Document Enterprise Cybersecurity Issues** 

## **Objectives** 

## **Part 1: Record your assessment of Athena's cybersecurity issues.** 

## **Part 2: Record the different types of assets owned by Athena.** 

## **Part 3: List the threats for each asset type.** 

## **Part 4: Recommend mitigation techniques to address each threat.** 

**Note** : Vulnerabilities, threats, and mitigation techniques. 

## **Scenario** 

Athena Learning Incorporated is an educational service provider. Athena has two major lines of business: course content creation and online learning services. Athena creates learning content and hosts learning content. Athena also provides internet sales services that enable its partners to charge their students to attend their courses. 

Athena employs about 100 people in its headquarters office, and about 5 people each in its London and Singapore offices. Because it provides content and delivery services globally, Athena must comply with diverse privacy and security standards. 

Athena serves as custodian for its own content and content that belongs to its partners. That content includes text, graphic, video, and interactive assets. This content is the essential intellectual property of the company. It also manages student account information including student registration, authentication, records, and payment information. Athena manages its own SQL databases, some of which are connected to web portals. 

The Athena network consists of mostly MS Windows and Apple IOS clients with a mix of Microsoft and Linux servers to store business and employee records, learning content assets, and financial information, including customer data. The hosts include various PC brands and models of varying age. Different versions of operating systems are in use. Athena uses cloud services to deliver courses to the public, but must house assembled courses on the internal network for creation and editing. When the courses become available, they are mirrored to the cloud. Employees are permitted to use their personal phones and tablets for work. In addition, some employees work from home, but require full network access to do so. Athena also hosts its own DNS, email, and intranet services. 

Athena employees use common office application software, custom applications, and tools that have been created internally. 

Athena provides access to parts of its internal network to its partners through a secure web portal. Clients are able to preview their course content and deliver course assets to Athena for assembly in the Athena learning management system. Students interact with the cloud-managed learning platform through their web account logins. 

In this lab, you will apply your knowledge of cybersecurity threats and mitigation techniques to a corporate setting. You will read about a business, classify its assets, and then list the potential vulnerabilities and threats that the business faces. Finally, you will recommend threat mitigation measures for the threats that you identify. 

## **Required Resources** 


**Goal - Document Enterprise Cybersecurity Issues** 

## **Instructions** 

## **Part 1: Record your assessment of Athena's cybersecurity issues.** 

Study the **Scenario** above about Athena Learning Incorporated. Focus on identifying the data, software, hardware, and network assets that need to be protected to ensure that company is not impacted by various types of threats that have been discussed in the course so far. 

Use the tables below to record your answers. 



### **Information / Data Assets**

| **Information/Data Assets** | **Threats** | **Mitigation** |
| :--- | :--- | :--- |
| **Student Account & Payment Info** (Registration, authentication, financial records) | Data breach, identity theft, financial fraud, PCI-DSS non-compliance penalties. | Implement strong AES-256 encryption for data at rest and TLS 1.3 for data in transit. Enforce strict Multi-Factor Authentication (MFA) for student accounts. Move to a tokenized, third-party payment gateway to minimize PCI scope. |
| **Intellectual Property** (Text, graphic, video, and interactive course assets) | Unauthorized copying, digital piracy, corporate espionage, ransomware encryption. | Implement robust Digital Rights Management (DRM) and watermarking. Establish strict Access Control Lists (ACLs) based on the principle of least privilege. Implement automated, immutable offline backups to counter ransomware. |
| **Business & Employee Records** (HR files, corporate financial data, emails) | Insider threats, data leaks, targeted spear-phishing campaigns. | Implement Data Loss Prevention (DLP) software to monitor and block unauthorized data exfiltration. Conduct mandatory, regular security awareness training for all employees. |
| **SQL Database Content** (Structured data connected to web portals) | SQL Injection (SQLi) attacks, database dropping, unauthorized data modification. | Use parameterized queries and prepared statements. Regularly patch and update database management systems (DBMS). Conduct routine vulnerability scanning and database activity monitoring. |

---

### **Software Assets**

| **Software Assets** | **Threats** | **Mitigation** |
| :--- | :--- | :--- |
| **Custom & Internally Created Tools** (In-house applications used by employees) | Exploitation of undocumented software vulnerabilities, zero-day attacks. | Establish a Secure Software Development Lifecycle (SSDLC). Perform regular static and dynamic application security testing (SAST/DAST) and code reviews. |
| **Varying Operating System Versions** (Mix of older/newer MS Windows, Linux, macOS/iOS) | Exploitation of unpatched OS vulnerabilities, system compromise. | Implement a centralized Patch Management System (e.g., WSUS, SCCM, or MDM solutions) to enforce regular updates. Phase out and upgrade End-of-Life (EOL) operating systems. |
| **Cloud Learning Platform & Web Portals** (Public-facing course delivery and partner portals) | Distributed Denial of Service (DDoS), credential stuffing, web application vulnerabilities (OWASP Top 10). | Deploy a Web Application Firewall (WAF) and Cloud DDoS protection services (e.g., Cloudflare, AWS Shield). Enforce rate-limiting and account lockout policies. |
| **Office Application Software** | Macro-based malware, malicious attachments, software-based exploits. | Disable macros by default via Group Policy. Ensure endpoint security software scans all application processes in real-time. |

---

### **Physical Assets**

| **Physical Assets** | **Threats** | **Mitigation** |
| :--- | :--- | :--- |
| **Headquarters & Regional Offices** (London and Singapore office facilities) | Unauthorized physical access, theft of local storage devices, social engineering (tailgating). | Implement physical security controls including biometric/badge access control, CCTV monitoring, and visitor logs. Secure server rooms with dedicated locks and environmental controls. |
| **Internal Servers** (On-premises infrastructure housing assembled courses and records) | Hardware failure, physical theft, localized ransomware propagation. | Enforce full-disk encryption (FDE) on all servers. Keep servers in restricted access server racks. Maintain redundant hardware setups (RAID, UPS) and offsite backups. |
| **Employee Endpoints** (Varying brands/models of PCs, laptops, and workstations) | Hardware theft, malware infection via USB drives, unauthorized local modifications. | Deploy an Endpoint Detection and Response (EDR) solution. Disable unused USB ports via policy. Enforce full-disk encryption (e.g., BitLocker/FileVault) on all corporate devices. |
| **BYOD Devices** (Personal employee phones and tablets used for work) | Data leakage via unmanaged apps, malware introduction to the corporate network, lost/stolen personal devices. | Implement a Mobile Device Management (MDM) or Mobile Application Management (MAM) solution. Require containerization to separate corporate data from personal data, and enable remote-wipe capabilities for corporate data. |

---

### **Network Assets**

| **Network Assets** | **Threats** | **Mitigation** |
| :--- | :--- | :--- |
| **Internal Creation/Editing Network** (LAN where courses are assembled before cloud mirroring) | Lateral movement of malware, insider network sniffing, unauthorized internal access. | Implement network segmentation using Virtual Local Area Networks (VLANs). Deploy internal firewalls to isolate the development/creation network from general office traffic. |
| **Remote Access Infrastructure** (VPNs or portals allowing full access for remote workers) | Credential theft, man-in-the-middle (MitM) attacks, compromised home networks pivoting into corporate LAN. | Implement a Zero Trust Network Access (ZTNA) model or secure VPNs that strictly require MFA. Perform device posture checks (host checking) to ensure remote devices meet security compliance before granting access. |
| **Self-Hosted Services** (In-house hosted DNS, Email, and Intranet) | DNS spoofing/poisoning, phishing/spam delivery, intranet defacement, network downtime. | Secure DNS using DNSSEC. Implement robust email security protocols including SPF, DKIM, and DMARC to prevent spoofing. Protect the Intranet behind strict authentication and a WAF. |
| **Partner Web Portal** (Extranet access point for external content partners) | Cross-Site Scripting (XSS), broken object-level authorization, partner account compromise. | Enforce strict role-based access control (RBAC). Conduct regular penetration testing on the partner portal. Audit partner activity logs continuously. |



## **Part 2: Record the different types of assets owned by Athena.** 

From the information in the **Scenario** , and your knowledge of business in general, fill in the first columns of each table with the relevant assets that are owned by Athena. You should have at least three entries in each table. 

The different types of assets are defined as follows: 

- = **Information/Data Assets** - any data that is used by the company, in any of the three states of data. This data could be Athena’s business data, Athena’s learning content, student sales and learning data, or partner data. 

- = **Software Assets** - any software that is used by Athena, including commercial business applications, operating systems, server software, database software, and custom software. 

- = **Physical Assets** - the physical devices, equipment, and other property that are used by Athena in the course of their business. 

- = **Network Assets** - the types of networks and network connections that are hosted or used by Athena in the course of its business. 

## **Part 3: Understanding Threats vs. Vulnerabilities**

### **What is the difference between a threat and a vulnerability?**

*   **Vulnerability:** A weakness, flaw, or gap in an organization's security posture, software, hardware, or processes that *could* be exploited by a malicious actor. *(Example: An unpatched operating system, a weak password, or an open port on a firewall).*

*   **Threat:** Any potential occurrence or event (malicious or accidental) that has the capability to exploit a vulnerability and cause harm, data loss, or asset damage. *(Example: A hacker, a piece of ransomware, a phishing email, or a natural disaster).*

> **Summary:** A vulnerability is the *hole in the fence*, while a threat is the *intruder* looking for a hole to climb through.

---

## **Reflection Answers**

### **1. Why is it useful to categorize assets when identifying threats and mitigation techniques?**
Categorizing assets (into Data, Software, Physical, and Network) allows security teams to systematically analyze an organization without missing critical components. Different types of assets face entirely different risks and require completely different defense mechanisms:
*   You cannot apply a patch management policy (Software mitigation) to a building door (Physical asset). 
*   By grouping them, an organization can accurately assign defensive priorities, align the right technical experts to the right problems, and ensure holistic coverage across the entire infrastructure.

### **2. Do some threats have the same or similar mitigation measures? Why is it important to note this?**
**Yes**, many distinct threats share identical or overlapping mitigation strategies. For example, enforcing Multi-Factor Authentication (MFA) simultaneously mitigates credential stuffing, phishing, and unauthorized remote access. Similarly, regular data backups mitigate both a ransomware attack and a local hardware failure. 

**Why it is important to note:** 
Recognizing these overlaps helps an organization achieve **defense-in-depth** efficiently. It allows security teams to maximize their Return on Investment (ROI) by identifying "high-leverage" controls—security measures that solve multiple problems at once, saving time, budget, and administrative overhead.

### **3. What have you learned about the application of knowledge of cybersecurity threats and mitigation techniques to the context of a simulated organization?**
Applying cybersecurity concepts to a simulated organization like Athena Learning highlights that security is never a "one-size-fits-all" solution; it must align tightly with business operations. 

For Athena, their business model creates specific risks: global branches introduce compliance issues, hosting external partners opens up perimeter risks, and a Bring Your Own Device (BYOD) policy clashes with the need to protect intellectual property. Security cannot simply shut down these convenient business features; instead, it must adapt dynamically—using tools like network segmentation, cloud mirroring, and MDM containerization—to enable business growth while keeping risk at an acceptable level. 


 All rights reserved. Cisco Public 

 Oksana F, cybersecurity analyst with Cisco



