#!/bin/bash

#
#
#                                                        :::      ::::::::
#   push_swap_tester/repeated-argumet.sh               :+:      :+:    :+:
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
SOME_NEGATIVES="-10 -3 -5 -99"
    SMALL_COMB=$(export ARGS="$(shuf -i 1-10 | xargs)")
      BIG_COMB=$(export ARGS="$(shuf -i 1-100 | xargs)")
	 HUGE_COMB=$(export ARGS="$(shuf -i 1-500 | xargs)")

      ERROR1=$(./../../$NAME $SMALL_COMB $SOME_NEGATIVES  7 | grep "Error" | wc -l)
      ERROR2=$(./../../$NAME $SMALL_COMB $SOME_NEGATIVES  -99 | grep "Error" | wc -l)
      ERROR3=$(./../../$NAME $BIG_COMB $SOME_NEGATIVES 22 | grep "Error" | wc -l)
      ERROR4=$(./../../$NAME $BIG_COMB $SOME_NEGATIVES -3 | grep "Error" | wc -l)
      ERROR5=$(./../../$NAME $HUGE_COMB $SOME_NEGATIVES 444 | grep "Error" | wc -l)
      ERROR6=$(./../../$NAME $HUGE_COMB $SOME_NEGATIVES -5 | grep "Error" | wc -l)

if [ ${ERROR1} -ge 1 ]
then
	echo -e -n "${CYAN}Repeated Arguments:     $GREEN  [OK] $RESET"
else
	echo -e -n "${CYAN}Repeated Arguments:     $RED  [KO] $RESET"
fi

if [ ${ERROR2} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR3} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR4} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR5} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR6} -ge 1 ]
then
	echo -e "$GREEN[OK] $RESET"
else
	echo -e "$RED[KO] $RESET"
fi
