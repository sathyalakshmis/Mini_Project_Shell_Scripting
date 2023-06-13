dbfile=data 

echo "===================================="
echo "	 MODIFY EMPLOYEE INFORMATION"	
echo "===================================="
echo -n "Enter employee no. :"
read no
total=`cat $dbfile | grep -cwi $no`
if [ $total -gt 0 ]
then
	record=`cat $dbfile | grep -wi $no`
	echo "================================================="
	echo "	   ENTER EMPLOYEE INFORMATION FOR ID : $no"	
	echo "================================================="
	echo -n "Enter employee name :"	
	read name
	echo -n "Enter employee address :"	
	read add
	echo -n "Enter employee age :"	
	read age
	echo -n "Enter employee gender :"	
	read gen
	echo -n "Enter employee designation :"	
	read desc
	echo -n "Enter employee salary :"	
	read sal	
	
	updatedrecord="$no|$name|$add|$age|$gen|$desc|$sal"
	
	#updates=$(`cat $dbfile` | sed s/$record/$updatedrecord/g)
	
	totalrecords=`cat $dbfile | wc -l`
	
	i=1
	while [ $i -le $totalrecords ]
	do
		record=`cat $dbfile | head -$i | tail -1`
		findrecord=`echo $record | grep -wci $no`
		if [ $findrecord -eq 0 ]
		then
			echo "$record" >> "tempdata"
		else
			echo "$updatedrecord" >> "tempdata"				
		fi
		i=`expr $i + 1`			
	done
	mv "tempdata" "data"
	echo "Record updated successfully"
else
	echo "Record with this id not found"
fi			
