print"Enter a number: ";
$n=<STDIN>;
$temp=$n;
$s=0;
while($n>0)
{
$rem=$n%10;
$s=($s*10)+$rem;
$n=int($n/10);
}
if($temp==$s)
{
print"$temp is a palindrome";
}
else
{
print"$n is not a palindrome";
}

