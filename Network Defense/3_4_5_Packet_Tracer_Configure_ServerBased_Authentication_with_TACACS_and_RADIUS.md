## **Packet Tracer - Configure Server-based Authentication with TACACS+ and RADIUS** 

## **Addressing Table** 

|**Device**<br>~~0~~|**Interface**<br>~~ee~~|**IP Address**<br>~~ee~~|**Subnet Mask**<br>~~ee~~|**Default Gateway**<br>~~ee~~|**Switch Port**<br>~~ee~~|
|---|---|---|---|---|---|
|R1<br>_R1_<br>~~0~~|G0/1<br>~~ee~~<br>~~ee~~|192.168.1.1<br>~~ee~~<br>~~ee~~|255.255.255.0<br>~~ee~~<br>~~ee~~|N/A<br>~~ee~~<br>~~ee~~|S1 F0/1<br>~~ee~~|
||S0/0/0 (DCE)<br>~~ee~~<br>~~ee~~<br>~~es~~|10.1.1.2<br>~~ee~~<br>~~ee~~<br>~~ee~~|255.255.255.252<br>~~ee~~<br>~~ee~~<br>~~ee~~|N/A<br>~~ee~~<br>~~ee~~<br>~~ee~~|N/A<br>~~ee~~|
|R2<br>_R2_<br>_R2_<br>~~0~~<br>~~ee~~|G0/0<br>~~ee ~~<br>~~ee~~<br>~~es~~<br>~~es~~|192.168.2.1<br> ~~ee~~<br>~~ee ~~<br>~~ee~~<br>~~ee~~|255.255.255.0<br>~~ee~~<br> ~~ee~~<br>~~ee~~<br>~~es~~|N/A<br>~~ee~~<br>~~ee~~<br>~~ee~~<br>~~ee~~|S2 F0/2<br>~~ee~~|
||S0/0/0<br>~~es~~<br>~~es~~<br>~~es~~|10.1.1.1<br>~~ee ~~<br>~~ee~~<br>~~ee e~~|255.255.255.252<br> ~~ee~~<br>~~es~~<br>~~e~~~~**e**~~|N/A<br>~~ee~~<br>~~ee~~<br>~~ee~~|N/A|
||S0/0/1 (DCE)<br>~~es~~<br>~~es~~<br>~~ee~~|10.2.2.1<br>~~ee~~<br>~~ee e~~<br>~~ee~~|255.255.255.252<br>~~es~~<br>~~e~~~~**e**~~<br>~~e~~|N/A<br>~~ee~~<br>~~ee~~|N/A|
|R3<br>_R3_<br>~~ee~~<br>~~ee~~<br>~~ee~~|G0/1<br>~~es~~<br>~~ee~~<br>~~es~~|192.168.3.1<br>~~ee e~~<br>~~ee~~<br>~~ee~~|255.255.255.0<br>~~e~~~~**e**~~<br>~~e~~|N/A<br>~~ee~~|S3 F0/5|
||S0/0/1<br>~~es~~<br>~~ee~~<br>~~es~~<br>~~es~~|10.2.2.2<br>~~ee e~~<br>~~ee~~<br>~~ee~~<br>~~Gs~~|255.255.255.252<br>~~e~~~~**e**~~<br>~~e~~|N/A<br>~~ee~~|N/A|
|TACACS+ Server<br>~~ee~~<br>~~ee~~<br>~~ee~~<br>~~ee~~|NIC<br>~~es ~~<br>~~ee ~~<br>~~es~~<br>~~es~~<br>~~ee~~|192.168.2.2<br> ~~ee e~~<br> ~~ee ~~<br>~~ee~~<br>~~Gs~~<br>~~Gs~~|255.255.255.0<br>~~e~~~~**e** ~~<br> ~~e~~|192.168.2.1<br> ~~ee~~|S2 F0/6|
|RADIUS Server<br>~~ee~~<br>~~ee~~<br>~~ee~~<br>~~ee~~|NIC<br>~~es~~<br>~~es~~<br>~~ee~~<br>~~ee~~|192.168.3.2<br>~~ee~~<br>~~Gs~~<br>~~Gs~~<br>~~Gs~~|255.255.255.0|192.168.3.1|S3 F0/1|
|PC-A<br>~~ee~~<br>~~ee~~<br>~~ee~~<br>~~ee~~|NIC<br>~~es~~<br>~~ee~~<br>~~ee~~<br>~~**e**e~~|192.168.1.3<br>~~Gs~~<br>~~Gs~~<br>~~Gs~~<br>~~**es**~~|255.255.255.0|192.168.1.1|S1 F0/2|
|PC-B<br>~~ee~~<br>~~ee~~<br>~~ee~~|NIC<br>~~ee ~~<br>~~ee~~<br>~~**e**e~~<br>~~s~~|192.168.2.3<br> ~~Gs~~<br>~~Gs~~<br>~~**es**~~|255.255.255.0|192.168.2.1|S2 F0/1|
|PC-C<br>~~ee~~<br>~~ee~~|NIC<br>~~ee ~~<br>~~**e**e~~<br>~~s~~|192.168.3.3<br> ~~Gs~~<br>~~**es**~~|255.255.255.0|192.168.3.1|S3 F0/18|



## **Objectives** 

- = Configure server-based AAA authentication using TACACS+. 

- = Verify server-based AAA authentication from the PC-B client. 

- = Configure server-based AAA authentication using RADIUS. 

- = Verify server-based AAA authentication from the PC-C client. 

## **Background / Scenario** 

The network topology shows routers R1, R2 and R3. Currently, all administrative security is based on knowledge of the enable secret password. Your task is to configure and test local and server-based AAA solutions. 

You will configure router R2 to support server-based authentication using the TACACS+ protocol. The TACACS+ server has been pre-configured with the following: 

- Client: **R2** using the keyword **tacacspa55** 

- User account: **Admin2** and password **admin2pa55** 

Finally, you will configure router R3 to support server-based authentication using the RADIUS protocol. The RADIUS server has been pre-configured with the following: 

- Client: **R3** using the keyword **radiuspa55** 

 2017 - 2022 Cisco and/or its affiliates. All rights reserved. Cisco Public 

Page 1 of 3 

**Packet Tracer - Configure Server-based Authentication with TACACS+ and RADIUS** 

- User account: **Admin3** and password **admin3pa55** 

The routers have also been pre-configured with the following: 

- Enable secret password: **ciscoenpa55** 

- OSPF routing protocol with MD5 authentication using password: **MD5pa55** 

**Note** : The console and vty lines have not been pre-configured. 

**Note** : Newer IOS images use more secure encryption hashing algorithm; however, the IOS version currently supported in Packet Tracer uses MD5. Always use the most secure option available on your physical equipment. 

## **Part 1: Configure Server-Based AAA Authentication Using TACACS+ on R2** 

## **Step 1: Test connectivity.** 

- = Ping from **PC-A** to **PC-B** . 

- = Ping from **PC-A** to **PC-C** . 

- = Ping from **PC-B** to **PC-C** . 

## **Step 2: Configure a backup local database entry called Admin.** 

For backup purposes, configure a local username of **Admin2** and a secret password of **admin2pa55** . 

## **Step 3: Verify the TACACS+ Server configuration.** 

Click the TACACS+ Server. On the Services tab, click **AAA** . Notice that there is a Network configuration entry for **R2** and a User Setup entry for **Admin2** . 

## **Step 4: Configure the TACACS+ server specifics on R2.** 

Configure the AAA TACACS server IP address and secret key on **R2** . 

**Note** : The commands **tacacs-server host** and **tacacs-server key** are deprecated. Currently, Packet Tracer does not support the new command **tacacs server** . 

```
R2(config)# tacacs-server host 192.168.2.2
```

- `R2(config)#` **`tacacs-server key tacacspa55`** 

## **Step 5: Configure AAA login authentication for console access on R2.** 

Enable AAA on **R2** and configure all logins to authenticate using the AAA TACACS+ server. If it is not available, then use the local database. 

## **Step 6: Configure the line console to use the defined AAA authentication method.** 

Configure AAA authentication for console login to use the default AAA authentication method. 

## **Step 7: Verify the AAA authentication method.** 

Verify the user EXEC login using the AAA TACACS+ server. 

## **Part 2: Configure Server-Based AAA Authentication Using RADIUS on R3** 

## **Step 1: Configure a backup local database entry called Admin.** 

For backup purposes, configure a local username of **Admin3** and a secret password of **admin3pa55** . 

 2017 - 2022 Cisco and/or its affiliates. All rights reserved. Cisco Public 

Page 2 of 3 

**Packet Tracer - Configure Server-based Authentication with TACACS+ and RADIUS** 

## **Step 2: Verify the RADIUS Server configuration.** 

Click the RADIUS Server. On the Services tab, click **AAA** . Notice that there is a Network configuration entry for **R3** and a User Setup entry for **Admin3** . 

## **Step 3: Configure the RADIUS server specifics on R3.** 

Configure the AAA RADIUS server IP address and secret key on **R3** . 

**Note** : The commands **radius-server host** and **radius-server key** are deprecated. Currently Packet Tracer does not support the new command **radius server** . 

```
R3(config)# radius-server host 192.168.3.2
```

```
R3(config)# radius-server key radiuspa55
```

## **Step 4: Configure AAA login authentication for console access on R3.** 

Enable AAA on **R3** and configure all logins to authenticate using the AAA RADIUS server. If it is not available, then use the local database. 

## **Step 5: Configure the line console to use the defined AAA authentication method.** 

Configure AAA authentication for console login to use the default AAA authentication method. 

## **Step 6: Verify the AAA authentication method.** 

Verify the user EXEC login using the AAA RADIUS server. 

## **Step 7: Check results.** 

Your completion percentage should be 100%. Click **Check Results** to see feedback and verification of which required components have been completed. 

 2017 - 2022 Cisco and/or its affiliates. All rights reserved. Cisco Public 

Page 3 of 3 

