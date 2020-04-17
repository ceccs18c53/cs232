#!/bin/bash
#Bash calculator
#----- function add --------
function funcAdd(){
	result=$(( $1 + $2));
	echo "$result";
}
#----- Subtraction ---------
function funcSubtr(){
	result=$(( $1 - $2));
	echo "$result";
}
#----- Multiplication ------
function funcMulti(){
	result=$(( $1 * $2));
	echo "$result";
}
#----- Divide --------------
function funcDiv(){
	result=$(( $1 / $2));
	echo "$result";
}
#----- Start main ----------
read -p "Enter first number  : " num1;
read -p "Enter operator (+,-,*,/): " operator;
read -p "Enter second number : " num2;

case $operator in
	'+') sum=$(funcAdd $num1 $num2) ;;
	'-') sum=$(funcSubtr $num1 $num2);;
	'*') sum=$(funcMulti $num1 $num2);;
	'/') if [ $num2 -eq 0 ]; then
			echo "Error: division by zero";
                         

		 else
			sum=$(funcDiv $num1 $num2);
		 fi;;
	* ) echo "Incorrect operator. Try (+,-,*,/)";
		exit 0;;
esac
echo "Result: $sum";
 
