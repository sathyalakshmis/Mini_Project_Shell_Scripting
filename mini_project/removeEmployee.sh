dbfile=data
echo "===================================="
echo "	   DELETE EMPLOYEE INFORMATION"	
echo "===================================="
echo -n "Enter employee no. :"
read no
total=`cat $dbfile | grep -cwi $no`
if [ $total -gt 0 ]
then
	totalrecords=`cat $dbfile | wc -l`
	i=1
	while [ $i -le $totalrecords ]
	do
		record=`cat $dbfile | head -$i | tail -1`
		findrecord=`echo $record | grep -wci $no`
		if [ $findrecord -eq 0 ]
		then
			echo "$record" >> "tempdata"
		fi
		i=`expr $i + 1`			
	done
	
	mv "tempdata" "data"
	
	echo "Employee with id $no deleted."
	
elif [ $total -eq 0 ]
then
	echo "No record found for this id"

fi	
