echo "Enter the Number:"
read num
tnum=$num
temp=0
sum=0

while test $num -gt 0
do
   temp=$(($num % 10))          
   temp=`echo $temp^3 | bc`
   sum=$((expr $sum +  $temp)) 
   num=$((expr $num / 10))
done                                      

if test $sum -eq $tnum           
then
echo "Entered no $tnum is Armstrong number"
else
echo "Entered no $tnum is Not an armstrong number"
fi
