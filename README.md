# Compromised-IoT-Devices
This repository is created to show a sample of the data used in research work to identify compromised iot devices.

In this study we have applied 3 types of attacks which are known in the attacks of IoT devices (Mirai, UFOnet, RouterSploit).

We have used 6 IoT devices which are detailed in the following table:

|             Devices             |            Model           |
|:-------------------------------:|:--------------------------:|
| (1) Indoor Smart Home Camera    | Wyze Cam WYZEC             |
| (2) Outdoor Camera              | HOSAFE Outdoor Wifi Camera |
| (3) Home Router (1)             | TP-Link ACS1750            |
| (4) Home Router (2)             | D-Link AC1200              |
| (5) Smart Home Hub              | Phillips Hue Smart Hub     |
| (6) DVR Digital Video Recorder  | ANNKE DVR 8CH              |


We have collected two types of data (Network Traffic, Energy consumption). The metrics used in this work are detailed in the following table:

|     Tool      | Feature         | Description                                                                       |
|:-------------:|-----------------|-----------------------------------------------------------------------------------|
|     Wireshark | No. packets     | The number of packets in order of arrival                                         |
|               | Source          | The source address of a packet ( it can be either the IP or the MAC address)      |
|               | Destination     | The destination address of a packet ( it can be either the IP or the MAC address) |
|               | Protocol        |  The protocol type of a packet e.g., TCP, UDP, etc                                |
|               | Length          | The size of a packet in Bytes                                                     |
| Energy        |  Monitor Value  | The reading/measurement value in Amps                                             |



For each component, we collect the metrics in the attack state as well as in the normal state for a period of 30 minutes.

In the following figure, we explore the energy consumption in the normal state and for the compromised situation:



<p float="left">
  <img src="images/energy/archer.png" width="250" />
  <img src="images/energy/cctv.png" width="250" /> 
  <img src="images/energy/indoor.png" width="250" />
</p>


In the following we are going to show an example of the dataset with normal and with Mirai attack.
 
An example of data is provided in the folder dataset.



We did a statistical test P-value of Mann-Whitney U test and effect size.
The script is provided in the src folder.





## Reference

This work was published in QRS 2021:

<a href="https://bit.ly/3HdRqra" target="_blank">Link to the paper</a>


BibTex:

```yaml
@article{qrs2021-iot,
 author = {Fehmi Jaafer and Darine Ameyed and Amine Barrak and Mohamed Cheriet},
 title = {Identification of Compromised IoT Devices: Combined Approach Based on Energy Consumption
and Network Traffic Analysis},
 booktitle = {Proceedings of the 2021 IEEE International Conference on Software Quality, Reliability and Security (QRS)},
 year = {2021},
 month = {Decenber},
 address = {Hinan, China},
 notes = {To appear},
}

