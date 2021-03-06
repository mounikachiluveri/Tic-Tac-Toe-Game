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

              function assignSymbol(){
                                   assign=$((RANDOM%2))
                                   if (($assign==1))
                                   then
                                           playerSymbol='X'
                                           computerSymbol='O'
                                   else
                                           playerSymbol='O'
                                           computerSymbol='X'
                                   fi

                                  echo -e "\nPlayer 1 = $playerSymbol"
                                  echo -e "Computer = $computerSymbol"

                                   }
assignSymbol
toss
resetBoard

        function updatedBoard() {

                               for (( i=0,j=0;j<$row;i=$(($i+3)),j++ ))
                               do
                                           echo -e "\t${board[i]} | ${board[i+1]} | ${board[i+2]}"
                                                if (($j!=$(($row-1))))
                                                then
                                                       echo -e "\t---------"
                                                 fi
                               done
                               }

         function playerInput() {

                         echo -e "\nPlayers 1's Turn:"
                         while ((1))
                         do
                              read -p "Select shell number: " shellNumber
                              if (( ($shellNumber<1) || ($shellNumber>9)))
                              then
                                     echo "Invalid, input 1...9"
                              elif (($shellNumber!=${board[$shellNumber-1]}))
                              then
                                     echo -e "Invalid: Shell is already occupied, choose again"

                              else
                              break
                              fi
                        
done
                               board[$shellNumber-1]=$playerSymbol
                               updatedBoard
                    }
playerInput


