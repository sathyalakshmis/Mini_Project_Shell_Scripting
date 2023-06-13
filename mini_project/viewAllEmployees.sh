dbfile='data'

total=`cat $dbfile | wc -l`
echo "Total number of Employees: $total"

if [ $total -gt 0 ]
then 
	i=1
	while [ $i -le $total ]
	do 
	
	echo "===================================="
	echo "Employee - $i"
	echo "============="
	
	record=`cat $dbfile | head -$i | tail -1`
	emp_no=`echo $record | cut -d "|" -f1`
	emp_name=`echo $record | cut -d "|" -f2`
	emp_add=`echo $record | cut -d "|" -f3`
	emp_age=`echo $record | cut -d "|" -f4`
	emp_gen=`echo $record | cut -d "|" -f5`
	emp_desg=`echo $record | cut -d "|" -f6`
	emp_sal=`echo $record | cut -d "|" -f7`
	
	echo "Employee No. :" $emp_no
	echo "Employee Name :" $emp_name
	echo "Employee City :" $emp_add
	echo "Employee Age :" $emp_age
	echo "Employee Gender :" $emp_gen
	echo "Employee Designation :" $emp_desg
	echo "Employee salary :" $emp_sal
	
		i=`expr $i + 1`			
 	echo "===================================="
		
	done
fi
