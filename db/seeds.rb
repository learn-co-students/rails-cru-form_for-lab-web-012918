# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artist_a = Artist.create(name: 'AAA', bio: 'AAAAAAAAAAAAAAAAAA')
artist_b = Artist.create(name: 'BBB', bio: 'BBBBBBBBBBBBBBBBBB')
artist_c = Artist.create(name: 'CCC', bio: 'CCCCCCCCCCCCCCCCCC')

genre_x = Genre.create(name: 'X')
genre_y = Genre.create(name: 'Y')

song_1 = Song.create(name: 'SSS')
song_2 = Song.create(name: 'TTT')
