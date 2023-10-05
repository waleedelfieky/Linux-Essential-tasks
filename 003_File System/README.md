# making two partation in usb using gparted

![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/33b87c1a-c15d-4ab0-99c0-4cbf0960fb4d)

![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/2c801c08-4b3e-4d7c-a21f-5c1f5ba107a7)
# click on apply operations
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/fd4276aa-ceea-4e2a-80bf-62c114c43cca)

# linux don't see it
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/6bfdfd57-408f-4ce5-ab41-038b6c69361b)

# mount two partation 
## get the path of device driver for 2 partations you can get it from gparted too 
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/6caec551-eaf4-48d1-9019-d3f4e10f81ca)
## mount partations on /mnt folder
```
sudo mount /dev/sdb1 /mnt
```

```
sudo mount /dev/sdb2 /mnt/part1
```

# add some files 
```
touch /mnt/part1/file{1..10}
```
```
touch /mnt/part2/file{1..10}
```
