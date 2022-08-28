#!/bin/bash

#
#
#                                                        :::      ::::::::
#   push_swap_tester/check-for-repeated-argumet.sh     :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2022/08/27 14:35:10 by acesar-l          #+#    #+#
#   Updated: 2022/08/28 01:39:41 by acesar-l         ###   ########.fr
#
#

	    NAME="push_swap"
  	    CYAN="\033[0;36m"
 	   GREEN="\033[0;32m"
   	     RED="\033[0;31m"
 	   RESET="\033[0m"
  SMALL_COMB="13 12 79 6 65 55 70 27 16 24 11 24"
  	BIG_COMB="13 12 79 6 65 55 70 27 16 24 11 64 84 28 95 40 82 74 58 85 56 25 96 
17 36 15 98 30 60 88 91 39 67 35 31 2 44 21 20 14 83 52 62 45 26 100 38 73 22 
72 63 99 19 77 53 34  9 76 7 92 75 57 69 48 18 97 89 78 47 54 3 4 71 61 94 59 
66 29 41 23 51 80 50 49 8 10 68 86 46 37 42 1 90 33 43 32 81 93 5 87 98"
	HUGE_COMB="13 12 79 6 65 55 70 27 16 24 11 64 84 28 95 40 82 74 58 85 56 25 96 
17 36 15 98 30 60 88 91 39 67 35 31 2 44 21 20 14 83 52 62 45 26 100 38 73 22 
72 63 99 19 77 53 34  9 76 7 92 75 57 69 48 18 97 89 78 47 54 3 4 71 61 94 59 
66 29 41 23 51 80 50 49 8 10 68 86 46 37 42 1 90 33 43 32 81 93 5 87 98"

      ERROR1=$(./../../$NAME $SMALL_COMB | grep "Error" | wc -l)
      ERROR2=$(./../../$NAME $BIG_COMB | grep "Error" | wc -l)
      ERROR3=$(./../../$NAME $HUGE_COMB | grep "Error" | wc -l)

if [ ${ERROR1} -ge 1 ]
then
	echo -e -n "${CYAN}Check Map with an Empty Line: $GREEN  [OK] $RESET"
else
	echo -e -n "${CYAN}Check Map with an Empty Line: $RED  [KO] $RESET"
fi

if [ ${ERROR2} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR3} -ge 1 ]
then
	echo -e "$GREEN[OK] $RESET"
else
	echo -e "$RED[KO] $RESET"
fi

