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
SOME_NEGATIVES="-10 -3 -5 -99"
    SMALL_COMB=$(export ARGS="$(shuf -i 1-10 | xargs)")
      BIG_COMB=$(export ARGS="$(shuf -i 1-100 | xargs)")
	 HUGE_COMB=$(export ARGS="$(shuf -i 1-500 | xargs)")

      ERROR1=$(./../../$NAME $SMALL_COMB $SOME_NEGATIVES | grep "Error" | wc -l)
      ERROR2=$(./../../$NAME $BIG_COMB $SOME_NEGATIVES | grep "Error" | wc -l)
      ERROR3=$(./../../$NAME $HUGE_COMB $SOME_NEGATIVES | grep "Error" | wc -l)

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
