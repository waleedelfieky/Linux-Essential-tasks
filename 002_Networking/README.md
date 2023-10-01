# Network Topology 

![1](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/91628b39-735e-450a-a96f-b157a43aa2ca)

# getting local IP for Linux machine using `ifconfig command`
![2](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/ff1270fa-a221-4069-8796-3e64cde27239)

```
ip is 192.168.1.19
```
# getting local IP for windows machine using `ipconfig command`
![3](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/8012599b-aef1-4a4c-8da7-eee7ef719fb0)
```
extracted lcoal ip is 192.168.1.18
```
in order to ping a windows machine you need first to enable this feature from firewall because most properly it's disabled
to enable it check on file and printer sharing or a statement include ICMP which is the protocol used with ping 

![4](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/17c86a42-cc9d-4796-90fb-81a3a4ec3d60)

### now we done the setup 
for ping windows from linux machine just write 
```
ping <ip_address>
```
![5](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/2a2e89fe-49f2-40b9-aea8-ef7d5883a4e4)

now terminal emulator outing a string to me that proves that the packets is now being sent and the time is shown 
# but what is going ? what is this command ? let's take a look at wire shark to get out what it exactly do 

![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/6c061b33-1d64-4050-8aa6-a5f716dea797)


# line 1
here we will find something interested source IP which is `192.168.1.19` which is the IP of `Linux machine` and Destination IP `192.168.1.18` which is the `windows machine` and the protocol used is `ICMP` in info section something interested is appearing here which is the word `request` ? what happened let's move to the next line
# line 2
here we will find something interested source IP which is `192.168.1.18` which is the IP of `windows machine` and Destination IP `192.168.1.19` which is the `linux machine` and the protocol used is `ICMP` in info section something interested is appearing here which is the word `reply` ? 
# Conclusion
first line linux machine make request to windows machine and then the windows replay to this request 
# when we down interface 
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/9b1fbf3b-9495-45d0-ab27-6b6d3447284a)

# request is go out and no response is coming  
