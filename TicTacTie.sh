#!/bin/bash -x
echo -e "\n Welcome to Tic-Tac-Toe game.\n"
echo -e "Player vs Computer\n"
row=3
column=3
numberOfShell=$(($row*$column))
function resetBoard(){

        board=( 1 2 3 4 5 6 7 8 9 )
        for (( i=0,j=0;j<$row;i=$(($i+3)),j++ ))
        do
               echo -e "\t${board[i]} | ${board[i+1]} | ${board[i+2]}"
                  if (($j!=$(($row-1))))
                  then
                     echo -e "\t---------"
                  fi
        done
}
resetBoard
function toss(){

        checkToss=$((RANDOM%2))

        if (($checkToss == 1 ))
        then
               echo -e "\nPlayer 1 plays First\n"
               playerChance=1
        else
               echo -e "\nComputer plays First\n"
               playerChance=0
        fi
}
toss

