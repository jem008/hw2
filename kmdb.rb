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

# Note - here I generated them using the command line, because when I tried generating them in the kmdb.rb file, the models wouldn't create.
# I used the below code in the command line to create the models:
# rails generate model Movie
# rails generate model Person
# rails generate model Role


# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# -- People

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
JosephGordonLevitt = Person.new(values)
JosephGordonLevitt.save

values = { name: "Anne Hathaway"}
AnneHathaway = Person.new(values)
AnneHathaway.save

values = { name: "Christopher Nolan"}
ChristopherNolan = Person.new(values)
ChristopherNolan.save

# -- Movies

values = { title: "Batman Begins",
        year_released: "2005",
        rated: "PG-13",
        director_id: ChristopherNolan.id}   

Batman_Begins = Movie.new(values)
Batman_Begins.save

values = { title: "The Dark Knight",
        year_released: "2008",
        rated: "PG-13",
        director_id: ChristopherNolan.id}   

Dark_Knight = Movie.new(values)
Dark_Knight.save

values = { title: "The Dark Knight Rises",
        year_released: "2012",
        rated: "PG-13",
        director_id: ChristopherNolan.id}   

Dark_Knight_Rises = Movie.new(values)
Dark_Knight_Rises.save

# -- Roles

values = { character_name: "Bruce Wayne",
            movie_id: Batman_Begins.id,
            actor_id: ChristianBale.id}
BruceWayne_BB = Role.new(values)
BruceWayne_BB.save

values = { character_name: "Alfred",
            movie_id: Batman_Begins.id,
            actor_id: MichaelCaine.id}
Alfred_BB = Role.new(values)
Alfred_BB.save

values = { character_name: "Ra's Al Ghul",
            movie_id: Batman_Begins.id,
            actor_id: LiamNeeson.id}
RasAlGhul = Role.new(values)
RasAlGhul.save

values = { character_name: "Rachel Dawes",
            movie_id: Batman_Begins.id,
            actor_id: KatieHolmes.id}
RachelDawes_BB = Role.new(values)
RachelDawes_BB.save

values = { character_name: "Commissioner Gordon",
            movie_id: Batman_Begins.id,
            actor_id: GaryOldman.id}
CommGordon_BB = Role.new(values)
CommGordon_BB.save

values = { character_name: "Bruce Wayne",
            movie_id: Dark_Knight.id,
            actor_id: ChristianBale.id}
BruceWayne_DK = Role.new(values)
BruceWayne_DK.save

values = { character_name: "Joker",
            movie_id: Dark_Knight.id,
            actor_id: HeathLedger.id}
Joker = Role.new(values)
Joker.save

values = { character_name: "Harvey Dent",
            movie_id: Dark_Knight.id,
            actor_id: AaronEckhart.id}
HarveyDent = Role.new(values)
HarveyDent.save

values = { character_name: "Alfred",
            movie_id: Dark_Knight.id,
            actor_id: MichaelCaine.id}
Alfred_DK = Role.new(values)
Alfred_DK.save

values = { character_name: "Rachel Dawes",
            movie_id: Dark_Knight.id,
            actor_id: MaggieGyllenhaal.id}
RachelDawes_DK = Role.new(values)
RachelDawes_DK.save

values = { character_name: "Bruce Wayne",
            movie_id: Dark_Knight_Rises.id,
            actor_id: ChristianBale.id}
BruceWayne_DKR = Role.new(values)
BruceWayne_DKR.save

values = { character_name: "Commissioner Gordon",
            movie_id: Dark_Knight_Rises.id,
            actor_id: GaryOldman.id}
CommGordon_DKR = Role.new(values)
CommGordon_DKR.save

values = { character_name: "Bane",
            movie_id: Dark_Knight_Rises.id,
            actor_id: TomHardy.id}
Bane = Role.new(values)
Bane.save

values = { character_name: "John Blake",
            movie_id: Dark_Knight_Rises.id,
            actor_id: JosephGordonLevitt.id}
JohnBlake = Role.new(values)
JohnBlake.save

values = { character_name: "Selina Kyle",
            movie_id: Dark_Knight_Rises.id,
            actor_id: AnneHathaway.id}
SelinaKyle = Role.new(values)
SelinaKyle.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

all_movies = Movie.all
all_people = Person.all
all_roles = Role.all

for movie in all_movies
    director = Person.where({id: movie.director_id})[0]
    puts "#{movie.title}      #{movie.year_released}      #{movie.rated}      #{director.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

for role in all_roles
    movie = Movie.where({id: role.movie_id})[0]
    actor = Person.where({id: role.actor_id})[0]
    puts "#{movie.title}      #{actor.name}             #{role.character_name}"
end


