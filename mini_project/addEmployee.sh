dbfile=data

echo "You have to Add Employee to the database"

echo "===================================="
echo "  ENTER EMPLOYEE INFORMATION"	
echo "===================================="
echo -n "Enter employee no. :"
read no

echo -n "Enter employee name :"	
read name

echo -n "Enter employee city :"	
read city

echo -n "Enter employee age :"	
read age

echo -n "Enter employee gender :"	
read gen

echo -n "Enter employee designation :"	
read desc

echo -n "Enter employee salary :"	
read sal

record="$no|$name|$city|$age|$gen|$desc|$sal"

echo $record >> $dbfile

echo "===================================="
echo "    EMPLOYEE ADDED SUCCESSFULLY"	
echo "===================================="
