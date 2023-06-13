clear
dbfile="data"

while true
do
echo "============================"
echo "=EMPLOYEE MANAGEMENT SYSTEM="
echo "===== AVAILABLE CHOICES ====="
echo "1 - View all Employee Details="
echo "2 - Add an Employee          ="
echo "3 - View Employee            ="
echo "4 - Remove an Employee       ="
echo "5 - Update Employee details  ="
echo "6 - Count of employees       ="
echo "7 - Exit                     ="
echo "=============================="
echo -n "Enter your choice :"
read choice

case $choice in

1)
sh viewAllEmployees.sh
;;

2)
sh addEmployee.sh
;;

3)
sh getEmployeeDeatils.sh
;;

4)
sh removeEmployee.sh
;;

5)
sh UpdateEmployee.sh
;;

6)
sh getNumberofEmp.sh
;;

7)
	exit
;;

*)
	echo "Invalid choice"
;;
esac

done
