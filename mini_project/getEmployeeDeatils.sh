dbfile=data

echo "===================================="
echo "	 FIND EMPLOYEE INFORMATION"	
echo "===================================="
echo -n "Enter employee no. :"
read no
total=`cat $dbfile | grep -cwi $no`
if [ $total -gt 0 ]
then
	record=`cat $dbfile | grep -wi $no`
	
	emp_no=`echo $record | cut -d "|" -f1`
	emp_name=`echo $record | cut -d "|" -f2`
	emp_add=`echo $record | cut -d "|" -f3`
	emp_age=`echo $record | cut -d "|" -f4`
	emp_gen=`echo $record | cut -d "|" -f5`
	emp_desg=`echo $record | cut -d "|" -f6`
	emp_sal=`echo $record | cut -d "|" -f7`
	
	echo "Employee No. :" $emp_no
	echo "Employee Name :" $emp_name
	echo "Employee Address :" $emp_add
	echo "Employee Age :" $emp_age
	echo "Employee Gender :" $emp_gen
	echo "Employee Designation :" $emp_desc
	echo "Employee salary :" $emp_sal
	elif [ $total -eq 0 ]
	then
		echo "No record found for this id"
fi
