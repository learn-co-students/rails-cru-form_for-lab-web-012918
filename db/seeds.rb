# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "Kanye", bio: "rap god")
Artist.create(name: "Adele", bio: "english")
Genre.create(name: "Rap")
Genre.create(name: "Pop")
Song.create(name: "Hello", artist_id: 2, genre_id: 2)
Song.create(name: "Stronger", artist_id: 1, genre_id: 1)
