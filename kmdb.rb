# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

  Movie.destroy_all
  Person.destroy_all
  Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!


# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# -- Movies

puts "There are #{Movie.all.count} movies."

values = { title: "Batman Begins",
        year_released: "2005",
        rated: "PG-13",}   

BatmanBegins = Movie.new(values)
BatmanBegins.save

values = { title: "The Dark Knight",
        year_released: "2008",
        rated: "PG-13",}   

Dark_Knight = Movie.new(values)
Dark_Knight.save

values = { title: "The Dark Knight Rises",
        year_released: "2012",
        rated: "PG-13",}   

DarkKnight = Movie.new(values)
DarkKnight.save

puts "There are #{Movie.all.count} movies."

# -- People

puts "There are #{Person.all.count} people."

values = { name: "Christian Bale"}
ChristianBale = Person.new(values)
ChristianBale.save

values = { name: "Michael Caine"}
MichaelCaine = Person.new(values)
MichaelCaine.save

values = { name: "Liam Neeson"}
LiamNeeson = Person.new(values)
LiamNeeson.save

values = { name: "Katie Holmes"}
KatieHolmes = Person.new(values)
KatieHolmes.save

values = { name: "Gary Oldman"}
GaryOldman = Person.new(values)
GaryOldman.save

values = { name: "Heath Ledger"}
HeathLedger = Person.new(values)
HeathLedger.save

values = { name: "Aaron Eckhart"}
AaronEckhart = Person.new(values)
AaronEckhart.save

values = { name: "Maggie Gyllenhaal"}
MaggieGyllenhaal = Person.new(values)
MaggieGyllenhaal.save

values = { name: "Tom Hardy"}
TomHardy = Person.new(values)
TomHardy.save

values = { name: "Joseph Gordon-Levitt"}
JosephGL = Person.new(values)
JosephGL.save

puts "There are #{Person.all.count} people."

# -- Roles

puts "There are #{Role.all.count} roles."

values = { character_name: "Bruce Wayne"}
BruceWayne = Role.new(values)
BruceWayne.save

values = { character_name: "Alfred"}
Alfred = Role.new(values)
Alfred.save

values = { character_name: "Ra's Al Ghul"}
RasAlGhul = Role.new(values)
RasAlGhul.save

values = { character_name: "Rachel Dawes"}
RachelDawes = Role.new(values)
RachelDawes.save

values = { character_name: "Commissioner Gordon"}
CommGordon = Role.new(values)
CommGordon.save

values = { character_name: "Joker"}
Joker = Role.new(values)
Joker.save

values = { character_name: "Harvey Dent"}
HarveyDent = Role.new(values)
HarveyDent.save

values = { character_name: "Bane"}
Bane = Role.new(values)
Bane.save

values = { character_name: "John Blake"}
JohnBlake = Role.new(values)
JohnBlake.save

values = { character_name: "Selina Kyle"}
SelinaKyle = Role.new(values)
SelinaKyle.save

puts "There are #{Role.all.count} roles."


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
