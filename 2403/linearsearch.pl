
@array = (1,4,18,9,5,23,78); 
$n = $#array; 
print "Enter an integer search key: ";
 $searchKey = <STDIN> ;

$found = 0;

for ( $i = 0; $i <$n;++$i ) {

   if ( $array[ $i ] == $searchKey ) {
      $index = $i+1;   
      $found = 1;    
   }
}

if ( $found ) {     
   print "Found $searchKey \t at position $index \n";
}
else {              
   print "$searchKey not found ";
}
