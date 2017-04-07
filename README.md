# tournament
# this is a postgresql database which handels swiss game with a python module 

# Tournament files:

 - tournament.py:  this is a python module which allow you to connect with database and provides some functionalities for the game
 - tournament.sql: this sql file contains the database structure and creating it
 - tournament_test.py: contains a number of test functions

# how to run the module and create the database

1. Initialize the database(from vagrant):
  -`psql`
  -'\i tournament.sql`

2. import tournament module in your project and work on it

# to get Vargant follow this link https://www.vagrantup.com/