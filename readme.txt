Swiss Tournament - Final Project for Intro to Relational Databases Course

This project developed a database and tables to enable registration, scorekeeping, ranking, and swiss pairing of players for a tournament. All players are to play 4 rounds matched with players of similar winning success.

DATABASE: tournament
TABLES:
  players (registration)
  match (record of match)
  Player_Stats (individual registrants winning and ranking stats)
  SwissPairs (pairing of individual players for a match determined by Player_Stats ranks)

BUILT WITH:
  Atom Text Editor
  Pyschopg2 PostgreSQL Adaptor
  python

MATCHING STEPS:
1) Player is registered via registerPlayer function.
  a) (Automatically via inputPlayerStandings function) Player is automatically added to Player_Stats table

2) When match is reported via reportMatch function:
   a) the match, winner and loser is input into the match table
   b) (Automatically via the adjustWinnerStats function run once with winner and once with loser) the win/loss/addition of match played updates Player_Stats table.

3) Players are matched via swissPairings function.
Ranking is checked
Players are added in that order to a list called pair_list.
The Swiss_Pairs table is populated from this list

Other functions included:
  countPlayers (which counts the number of registered players and is used in denominator for matching pairs)
  seeRegisteredPlayers (which lists the registered players)
  deleteSwissPairs to delete the data in Swiss_Pairs table
  deletePlayers to delete data in players and Player_Stats tables
  deleteMatches to delete data in matches table
  show_Swiss_Pairs to list the Swiss Pairs

TESTING
  Tests were performed via the tournament_test.py file provided by the Udacity Intro to Relational Databases course.  Tested for:
  Correct deletion of data when prompted
  Correct listing of players and data in tables
  Correct matching of players

Authors
  Maji Tharpe
