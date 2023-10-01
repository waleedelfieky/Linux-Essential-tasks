###################################################################################################
######################################## Coded By waleed sharkawy #################################
######################################## V1 Todolist bash script ##################################
############################################## 30/10/2023 #########################################
###################################################################################################
#load saved tasks
PATH_OF_FILE=/media/waleed/Materials/Courses/Notes_Area/StudyingNotes/LINUXAssignments/001_Shell/tasks.txt
file_content=$(cat $PATH_OF_FILE)
###########################################################################################################

#!/bin/bash
#those are functions that will be used later on
######################################### ADD Task #############################################
Add_Task()
{
echo "adding task in format <task> <optional due data>"
read new
echo $new >> $PATH_OF_FILE
echo "task added succesfully"
}
##############################################################################################
######################################### List_Task ##########################################
List_Task()
{
echo "listing tasks in progress"
#load tasks again
file_content=$(cat $PATH_OF_FILE)
#loop to each line
myvar=1
while IFS= read -r line; do
    if [[ $line != *"completed"* ]]; 
    then
    echo "======================="
    echo "$myvar - $line"
    echo "======================="
    myvar=$((myvar+1))
    fi
done <<< "$file_content"
}
##############################################################################################
#################################### Mark_Complete_Task ######################################
Mark_Complete_Task()
{
echo "please choice the task number"
List_Task
read task_number
sed -i "${task_number}s/$/ "completed"/" $PATH_OF_FILE

}
##############################################################################################
#######################################Remove_Task ###########################################
Remove_Task()
{
echo "removing task"
echo "please choice the task number"
List_Task
read task_number
sed -i "${task_number}d" "$PATH_OF_FILE"
}
##############################################################################################
##########################################Dashboard ##########################################
Dashboard()
{
echo "                  ========Please choice option====="
echo "                  =    1- add task                ="
echo "                  =    2- list tasks              ="
echo "                  =    3- mark task as complete   ="
echo "                  =    4- remove task             ="
echo "                  ================================="

read choice
case $choice in
    1) Add_Task;;
    2) List_Task;;
    3) Mark_Complete_Task;;
    4) Remove_Task;;
    *) echo "wrong choice please run script again " 
       exit 1;;
    esac

}
###################################################################################################
############################################code main##############################################
Dashboard
