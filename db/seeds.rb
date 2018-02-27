# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@genre1 = Genre.create(name: "Alt Rock")
@genre2 = Genre.create(name: "Indie Rock")
@artist1 = Artist.create(name: "Imagine Dragons", bio: "Velour, Vegas, everywhere now")
@artist2 = Artist.create(name: "Passion Pit", bio: "whatever")
@song= Song.create(name: "It's Time", artist_id: @artist1.id, genre_id: @genre1.id)
