print "Enter two numbers \n" ;
$firstnumber = <STDIN> ;
$secondnumber = <STDIN> ;
$result = div($firstnumber, $secondnumber) ;
print "Result is $result,Remainder:$remainder \n" ;

sub div
{
    ($a,$b) = @_ ;
    $result =int($a / $b) ;
    $remainder = $a % $b;
    return $result;
    return $remainder;
}
