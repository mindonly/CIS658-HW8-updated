#!/usr/local/bin/zsh

# add users
http :3000/users fname='Bruce' lname='Wayne' email='bw@batcave.net' thumbnail='batman.png'
http :3000/users fname='Clark' lname='Kent' email='ck@dailyplanet.net' thumbnail='superman.gif'
http :3000/users fname='Peter' lname='Parker' email='pp@nyc.net' thumbnail='spidey.png'
http :3000/users fname='Wade' lname='Wilson' email='ww@deadpool.net' thumbnail='merc.jpg'

# modify Clark Kent's email
http PATCH :3000/users/2 email='ck@metropolis.net'

# delete Peter Parker
http DELETE :3000/users/3
