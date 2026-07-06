Lab - Determine the Encryption Algorithm to Use

# Objectives

Part 1: Secure Personal Data

Part 2: Secure Wireless Data

Part 3: Secure Corporate Data Between Sites

# Background / Scenario

The internet is used for a variety of reasons including work, play, entertainment, and more. There are multiple protocols, algorithms, and methods available to secure online access.

This lab includes three scenarios. In each scenario, you will complete some steps and then do some internet research to answer questions, including what is the best encryption algorithm for each scenario.

# Required Resources

\= A Windows PC with internet access

# Instructions

## Part 1: Secure Personal Data

In this scenario, you are a student using a shared computer. You would like to save some confidential information on this computer but you do not want others to access that data.

### Step 1: Create a text file

a. Open **File Explorer** by searching for it or by using the **Windows Key + E** keyboard combination.

b. Navigate to a working location and create a new folder with a name of your choice.

**Note**: To show file extensions, click **View** > **Options**. In the **Folder Options** window, click the **View** tab, and then uncheck **Hide extensions for known file types**.

c. Inside the folder, right click in the empty space and click **New** > **Text Document**.

d. Change the name to **File-1.txt**, and then double-click it to open the file.

e. Enter some text, such as "This is a test.", and then save and close the file.

### Step 2: Discuss how could you protect this file

Assume that you must somehow protect this file from being read, stolen, or altered.

#### Questions

How could you do that?

Type your answers here.

Which encryption algorithm (i.e., DES, 3DES, or AES) should you use if you were able to encrypt the file? Why?

Type your answers here.

### Step 3: Download and install 7-Zip

a. Search the internet for "7-Zip download" and download this free, open source compression program.

b. Install 7-Zip.

### Step 4: Inspect 7-Zip archive formats and encryption methods

a. From the **File Explorer** window, **right-click** your **File-1.txt** and select **7-Zip** > **Add to archive…**

b. In the dropdown menu next to Archive format:, choose the zip format.

c. 7-Zip provides two encryption methods for the **zip** format. **ZipCrypto** is one method.

#### Questions

What is the other method?

Type your answers here.

What are the differences between each method? (**Hint**: Refer to **Help**).

Type your answers here.

Which method should you use if you wanted to have the strongest encryption?

Type your answers here.

### Step 5: Compress and encrypt File-1

a. With the **Add to Archive** window still open, enter a password of your choice in the **Enter password** field.

b. Click **OK** to compress and encrypt the file. This creates a new archived file named **File-1.zip**.

c. To permanently delete the original file, click it and press **Shift-Delete**. You will be prompted to permanently delete the file. Click **Yes**.

### Step 6: Decrypt the encrypted and compressed File-1.zip

a. With **File Explorer** still open, right-click **File-1.zip**, and then choose **7-Zip** > **Extract Here**.

b. The **Enter password** window opens. Enter your password to decrypt **File-1.txt**, and then click OK.

c. Open the **File-1.txt** to verify that your original message is there.

## Part 2: Secure Wireless Data

In this scenario, you have a small homebased business providing IT support to local citizens. A new client has requested that you set them up with the best wireless access. Specifically, they have:

· A large three-story 5,000 square foot home.

· Multiple older and newer personal devices including smart phones, tablets, computers, smart televisions, Oculus 2, printer, and more.

· Four newer Wi-Fi 6 (802.11ax) enabled devices.

After some research, you decide to recommend the Linksys Atlas Pro 6, Dual-Band Mesh Wi-Fi 6 System 3-Pack system. This system should support the listed devices and provide the required wireless security.

Wi-Fi routers usually provide several security options to encrypt wireless data. Which encryption option should you use in this scenario?

### Step 1: Research the Linksys Wireless router

a. Search the internet for the "Linksys Atlas Pro 6, Dual-Band Mesh Wi-Fi 6 System". Your search will provide many possible links. However, choose the link provided by **linksys.com**.

b. Review the features of the router to see if it would meet the required specifications.

### Step 2: Research the Security Options

The Linksys Atlas system provides three security features.

#### Questions

What are the security features available with this system?

Type your answers here.

Which security option should these clients use?

Type your answers here.

## Part 3: Secure Corporate Data Between Sites

In this scenario, you are working for a small multi-site organization that is interconnected across the public internet. It is crucial that corporate data between the sites be secured as it travels over the internet.

Virtual Private Networks (VPNs) are commonly used between branch and central sites to secure data and guarantee origin authentication. The organization is using Cisco Integrated Series Routers (ISRs) to support site-to-site IPsec VPNs between sites. Internet Protocol Security or IPsec is a framework that lets you specify which encryption, authentication, and integrity mechanism to use.

In this part, you are tasked with recommending the best encryption and authentication algorithms to implement on the Cisco ISR 4321 using IOS XE 17. To do so, you will research various protocols supported by IPsec VPNs.

### Step 1: Research IPsec Encryption Algorithms

a. Perform an internet search on "Security for VPNs with IPsec Configuration Guide, Cisco IOS XE 17".

b. Choose the first link from **cisco.com** to open the **Book Table of Contents**.

c. Click the **Configuring Security for VPNs with IPsec** link.

d. Scroll down to the **Supported Standards** to answer the following questions.

#### Question

Which cryptographic encryption algorithms are supported by IPsec VPNs?

Type your answers here.

### Step 2: Research IPsec Authentication and Integrity Algorithms

#### Question

In the **Supported Standards** section, which hashing algorithms are used to authenticate data and verify integrity?

Type your answers here.

### Step 3: Recommend an Encryption and Authentication Algorithm

#### Question

To satisfy the needs of the corporation, which encryption algorithm and hashing algorithm should you recommend to ensure adequate protection for data traversing the internet?

Type your answers here.

End of document