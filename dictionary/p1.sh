declare -A dice
q=0
w=0
e=0
r=0
t=0
s=0
for (( i=1;i<60;i++ ))
do
 a=$((1+RANDOM%6))
 if [[ $a -eq 1 ]]
 then
  q=$((q+1))
 elif [[ $a -eq 2 ]]
 then
  w=$((w+1))
 elif [[ $a -eq 3 ]]
 then
  e=$((e+1))
 elif [[ $a -eq 4 ]]
 then
  r=$((r+1))
 elif [[ $a -eq 5 ]]
 then
  t=$((t+1))
 elif [[ $a -eq 6 ]]
 then
  s=$((s+1))
 fi
if [[ q -eq 10 || w -eq 10 || e -eq 10 || r -eq 10 || t -eq 10 || s -eq 10 ]]
then
 break;
fi
done

dice[1]="$q"
dice[2]="$w"
dice[3]="$e"
dice[4]="$r"
dice[5]="$t"
dice[6]="$s"

echo "The stored values in Dictionary are ${dice[@]}"

