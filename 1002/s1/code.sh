#1/bin/bash

pdftotext -layout result_CHN.pdf result.txt


grep --no-group-separator -A3 "CHN18CS" result.txt>cs.txt

tr '\n' ' '<cs.txt>cs2.txt
sed 's/\t//g' cs2.txt>cs3.txt
awk '{$1=$1;print}' cs3.txt>cs4.txt
sed 's/CHN/\nCHN/g' cs4.txt>cs5.txt
tr ',' ' '<cs5.txt>cs6.txt

sed -i 's/(O)/ 10/g' cs6.txt
sed -i 's/(A+)/ 9/g' cs6.txt
sed -i 's/(A)/ 8.5/g' cs6.txt
sed -i 's/(B+)/ 8/g' cs6.txt
sed -i 's/(B)/ 7/g' cs6.txt
sed -i 's/(C)/ 6/g' cs6.txt
sed -i 's/(P)/ 5/g' cs6.txt
sed -i 's/(F)/ 0/g' cs6.txt
sed -i 's/(FE)/ 0/g' cs6.txt
sed -i 's/(I)/ 0/g' cs6.txt
sed -i 's/(Absent)/ 0/g' cs6.txt

awk '{print $1,$3,$5,$7,$9,$11,$13,$15,$17,$19
    }' cs6.txt >cs8.txt  

awk '{
	sum = 0
	flag = 0
	fail = 0
	var=2
      while(var<=NF)
	{	
		if($var == 0) 
		{
			flag = 1
			fail = fail + 1
		}
		sum += $var
                var++
	}
	cgpa = sum/9
	if (flag == 0) {	
	 	printf("%s CGPA:%0.2f\n",$1,cgpa)
	}
	if (flag == 1) {
		printf("%s Failed in %d\n",$1,fail)
	}
}' cs8.txt >cs7.txt




join students.txt cs7.txt > s1_cgpa.txt

rm cs.txt
rm cs2.txt
rm cs3.txt
rm cs4.txt
rm cs5.txt
rm cs6.txt
rm cs7.txt
rm cs8.txt

