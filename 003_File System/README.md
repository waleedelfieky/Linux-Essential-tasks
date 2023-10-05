# making two partation in usb using gparted

![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/33b87c1a-c15d-4ab0-99c0-4cbf0960fb4d)

![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/2c801c08-4b3e-4d7c-a21f-5c1f5ba107a7)
# click on apply operations
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/fd4276aa-ceea-4e2a-80bf-62c114c43cca)


# mount two partation 
## get the path of device driver for 2 partations you can get it from gparted too 
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/6caec551-eaf4-48d1-9019-d3f4e10f81ca)
## mount partations on /media/waleed directory
```
sudo mkdir /media/waleed/part1
sudo mount /dev/sdb1 /media/waleed/part1
```

```
sudo mkdir /media/waleed/part2
sudo mount /dev/sdb2 /media/waleed/part2
```
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/2dedd184-2c07-4ff5-91eb-a2cdc47fb588)


# add some files 
```
sudo touch /media/waleed/file/part1/{1..10}
```
```
sudo touch /media/waleed/ile/part2/{1..10}
```

![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/ed1021d6-72e3-44e6-9840-29b2deddac78)


# rebooting system 
# mount point is deleted
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/25e20232-ff77-492a-b496-d41374f54361)

# to make it presist add those line in fstab 
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/7cb8e574-bbb6-46ec-a9ae-030cb7105356)

 #reboot 
# now they are automatically mounted to those directories
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/a751705b-1002-4ef4-a426-9694079db24b)

