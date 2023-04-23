#!/bin/bash
characters=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z')
others=(1 2 3 4 5 6 7 8 9 0 '$' '%' '^' '&' '*' ';' '#' '@' '!' '(' ')')
declare password
function generatePass(){
    for((i=1;i<$1;i++))
    do
        randomChars=$(echo $(( $RANDOM % 25 + 1 )))
        specials=$(echo $(( $RANDOM % 21 + 1 )))
        password+=${characters[$randomChars]}
        password+=${others[$specials]}
    done
    echo $password
}
read -p "Enter the size of password you want: " PassSize
generatePass $PassSize