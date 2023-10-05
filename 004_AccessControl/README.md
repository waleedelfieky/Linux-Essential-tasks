# Exercise 1: File Permissions and Ownership
## Create a directory called access_practice, Inside the directory, create a file named secret.txt.
```
mkdir access_practice
touch secret.txt
```
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/052b6b06-2a5c-44f3-925f-8579fbd2cbab)

# Set the file permissions to allow read and write access for the owner, and no access for group and others.
```
chmod 700 secret.txt
```
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/6787fba8-0e34-4b56-8cf4-639bc40a7640)

# Change the ownership of the file to a different user.
```
#create new user
adduser user1
```
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/623eee90-d7bb-4937-bccb-6fefb093e0a3)
## previous owner
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/8ed3e3e4-111f-40fe-94cb-ead462ab3269)

```
#change owner
chown user1 secret.txt
```
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/78c360e8-7038-4e34-ba12-83963c677fe9)

# Try accessing the file from the original and the different user accounts to observe the access permissions in action.

## trying from original
### he can see the file
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/d147ec87-886b-4e51-b456-7fa779e721ae)
### but he can't read or write or excute it or remove it (sudoers group could do it)
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/531e6922-c03a-4e39-b4c8-e72bf9e4450f)



# Exercise 2: User and Group Management
# Create a new user named user1.
```
useradd user1
```
# Create a new group named group1.
```
groupadd group1
```

![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/2d7a1549-c56d-41b9-817b-5549616091a7)

# Add user1 to group1.
```
sudo usermod -aG group1 user1
```

# Change the ownership of secret.txt to user1 and group1.

![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/db647b84-837a-4b96-9547-acb5d2a7e528)
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/dbf51ca2-f13e-48ab-93a9-34cb0418c8de)

# Set the file permissions to allow read and write access for the owner and the group.
![image](https://github.com/waleedelfieky/Moudule_one_tasks/assets/126036494/625dd0d8-60ae-4e88-9066-506cf8d4ce18)

# Test accessing the file both as user1 and a different user to understand group-based access control.
# file now could be access from anyone on the group or from the user that owns the file
