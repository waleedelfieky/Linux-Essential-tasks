###################################################################################################
######################################## Coded By waleed sharkawy #################################
######################################## V2 Todolist bash script ##################################
############################################## 30/10/2023 #########################################
###################################################################################################
#load saved tasks
#!/bin/bash
################################################ main tasks file  #########################################
PATH_OF_FILE=$(pwd)/tasks.txt
file_content=$(cat $PATH_OF_FILE)
########################################### completed tasks file  #########################################
PATH_OF_COMPLETED_FILES=$(pwd)/completed.txt
###########################################################################################################
############################################# late tasks file  ############################################
PATH_OF_LATE_FILES=$(pwd)/late.txt
late_file_content=$(cat $PATH_OF_FILE)
###########################################################################################################
main_window()
{
echo -e "\e[31mPress any key to return back to main window\e[0m"

while true
do
    # Check for user input
    read -t 1 -n 1 key

    # If a key is pressed, exit the loop
    if [ -n "$key" ]; then
        echo "Key pressed. Exiting the loop."
        break
    fi

    # Your code here (this is where you can place your loop logic)
done
}
###########################################################################################################
###########################################################################################################

#those are functions that will be used later on
######################################### ADD Task #############################################
Add_Task()
{
clear
echo -e "\e[33madding task in format <task> <optional due data>\e[0m"
read new
echo $new >> $PATH_OF_FILE
echo -e "\e[34mtask is added succesfully\e[0m"

}
##############################################################################################
######################################### List_Task ##########################################
List_Task()
{
clear
echo -e "\e[33mlisting tasks in progress\e[0m"
#load tasks again
file_content=$(cat $PATH_OF_FILE)
#loop to each line
myvar=1
while IFS= read -r line; do
    if [[ $line != *"completed"* ]]; 
    then
    echo "======================="
    echo -e "\e[31m$myvar - $line\e[0m"
    myvar=$((myvar+1))
    fi
done <<< "$file_content"

}
##############################################################################################
#################################### Mark_Complete_Task ######################################
Mark_Complete_Task()
{
clear
echo "please choice the task number"
List_Task
read task_number
sed -i "${task_number}s/$/ "completed"/" $PATH_OF_FILE


}
##############################################################################################
####################################### Remove_Task ##########################################
Remove_Task()
{
clear
echo "removing task"
echo "please choice the task number"
List_Task
read task_number
sed -i "${task_number}d" "$PATH_OF_FILE"
}
##############################################################################################
#######################################show_complete##########################################
show_complete()
{
clear
echo -e "\e[33mlisting completed tasks in progress\e[0m"
#load tasks again
file_content=$(cat $PATH_OF_FILE)
#loop to each line
myvar=1
while IFS= read -r line; do
    if [[ $line = *"completed"* ]]; 
    then
    echo "======================="
    echo -e "\e[31m$myvar - $line\e[0m"
    myvar=$((myvar+1))
    fi
done <<< "$file_content"
}
##############################################################################################
############################## move to completed file ########################################

move_to_completed_file()
{
clear
myvar=1
while IFS= read -r line; do
    if [[ $line = *"completed"* ]]; 
    then
    echo " moving $line to complete file in progress"
    sleep 1
    echo $line >> $PATH_OF_COMPLETED_FILES
    sed -i "$myvar d" tasks.txt
    myvar=$((myvar-1))
    fi
myvar=$((myvar+1))
done <<< "$file_content"   
}

##############################################################################################
############################## move to late file #############################################

move_to_late_file()
{
clear
myvar=1
while IFS= read -r line; do
    if [[ $line != *"completed"* ]]; 
    then
    echo " moving $line to late file in progress"
    sleep 1
    echo $line >> $PATH_OF_LATE_FILES
    sed -i "$myvar d" tasks.txt
    myvar=$((myvar-1))
    fi
myvar=$((myvar+1))
done <<< "$file_content"   
}
##############################################################################################
################################## show late tasks ###########################################
show_late_tasks()
{
clear
echo -e "\e[33mlisting tasks in progress\e[0m"
#load tasks again
late_file_content=$(cat $PATH_OF_LATE_FILES)
#loop to each line
myvar=1
while IFS= read -r line; do
echo "======================="
echo -e "\e[31m$myvar - $line\e[0m"
myvar=$((myvar+1))
done <<< "$late_file_content"
}
######################################## mark late as complete ###############################
mark_late_as_complete()
{
clear
late_file_content=$(cat $PATH_OF_LATE_FILES)
myvar=1
while IFS= read -r line; do
echo " moving $line to complete file in progress"
sleep 1
echo $line >> $PATH_OF_COMPLETED_FILES
myvar=$((myvar+1))
done <<< "$late_file_content" 
rm $PATH_OF_LATE_FILES
touch $PATH_OF_LATE_FILES
}
##########################################Dashboard ##########################################
Dashboard()
{
welcome_message="
                                              _ _   _ _  _ _ 
                    \    /\    /   /\   |    |     |    |    \  
                     \  /  \  /   /__\  |    |---  |--- |     |
                      \/    \/   /    \ |_ _ |_ _  |_ _ |_ _ /
                                   Welcome to My simple To-Do list script"

# Clear the screen
clear

# Print the welcome message with colors
echo -e "\e[31m$welcome_message\e[0m"  # Red text

echo -e "\e[32m                  ========Please choice option=====\e[0m"
echo -e "\e[31m                  ============= Today =============\e[0m"
echo -e "\e[32m                  =    1- Add task                =\e[0m"
echo -e "\e[32m                  =    2- List tasks              =\e[0m"
echo -e "\e[32m                  =    3- Mark task as complete   =\e[0m"
echo -e "\e[32m                  =    4- Remove task             =\e[0m"
echo -e "\e[32m                  =    5- Show completed tasks    =\e[0m"
echo -e "\e[31m                  ====== move tasks of the day ====\e[0m"
echo -e "\e[33m                  =    6- Move to complete file   =\e[0m"
echo -e "\e[33m                  =    7- Move to late file       =\e[0m"
echo -e "\e[33m                  =================================\e[0m"
echo -e "\e[33m                  =    8- Show late tasks         =\e[0m"
echo -e "\e[33m                  =    9- Mark late as complete   =\e[0m"
echo -e "\e[33m                  =================================\e[0m"
echo -e "\e[31m                  =    q- Quit                    =\e[0m"
echo -e "\e[31m                  =================================\e[0m"

read choice
case $choice in
    1) Add_Task;;
    2) List_Task;;
    3) Mark_Complete_Task;;
    4) Remove_Task;;
    5) show_complete;;
    6) move_to_completed_file;;
    7) move_to_late_file;;
    8) show_late_tasks;;
    9) mark_late_as_complete;;
    q) echo "exiting "  
       exit 1;;
    *) echo "wrong choice please run script again " 
       exit 1;;
    esac

}
###################################################################################################
############################################code main##############################################
while true
do
Dashboard
main_window
done
