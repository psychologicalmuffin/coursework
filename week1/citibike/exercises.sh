#!/bin/bash
#
# add your solution after each of the 10 comments below
#

# count the number of unique stations
cut -d, -f5 201402-citibike-tripdata.csv | sort | uniq | wc -l
#ans: 330
#should i also count end stations and compare with results to see if any were not included?

# count the number of unique bikes
cut -d, -f12 201402-citibike-tripdata.csv | sort | uniq | wc -l
#ans: 5700

# extract all of the trip start times
cut -d, -f2 201402-citibike-tripdata.csv


# count the number of trips per day
cut -d, -f2 201402-citibike-tripdata.csv | cut -d ' ' -f1 | sort | uniq -c
#12771 "2014-02-01
  13816 "2014-02-02
   2600 "2014-02-03
   8709 "2014-02-04
   2746 "2014-02-05
   7196 "2014-02-06
   8495 "2014-02-07
   5986 "2014-02-08
   4996 "2014-02-09
   6846 "2014-02-10
   8343 "2014-02-11
   8580 "2014-02-12
    876 "2014-02-13
   3609 "2014-02-14
   2261 "2014-02-15
   3003 "2014-02-16
   4854 "2014-02-17
   5140 "2014-02-18
   8506 "2014-02-19
  11792 "2014-02-20
   8680 "2014-02-21
  13044 "2014-02-22
  13324 "2014-02-23
  12922 "2014-02-24
  12830 "2014-02-25
  11188 "2014-02-26
  12036 "2014-02-27
   9587 "2014-02-28
      1 "starttime"

# find the day with the most rides
cut -d, -f2 201402-citibike-tripdata.csv | cut -d ' ' -f1 | sort | uniq -c | sort -nr
# 13816 "2014-02-02

# find the day with the fewest rides
cut -d, -f2 201402-citibike-tripdata.csv | cut -d ' ' -f1 | sort | uniq -c | sort -n
# 876 "2014-02-13

# find the id of the bike with the most rides
cut -d, -f12 201402-citibike-tripdata.csv | sort | uniq -c | sort -n
#130 "20837"

# count the number of riders by gender and birth year

# count the number of trips that start on cross streets that both contain numbers (e.g., "1 Ave & E 15 St", "E 39 St & 2 Ave", ...)

# compute the average trip duraction
