# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

User.create!(username: "RyanJ", email: "Ryan@test.com", password: "password")
User.create!(username: "Test", email: "Test@test.com", password: "password")

# Game.create!(name: "League of Legends", box_art: "https://cdn-ascope-prod.global.ssl.fastly.net/static/images/boxart_league_of_legends_300x400.jpg")
# Game.create!(name: "Fire Emblem", box_art: "https://i.imgur.com/r6zf5QD.jpg")
# Game.create!(name: "World of Warcraft", box_art: "https://cdna.artstation.com/p/assets/covers/images/033/185/106/medium/cole-eastburn-cole-eastburn-boxart-thumbnail.jpg?1608676953")
# Game.create!(name: "Rocket League", box_art: "https://www.mobygames.com/images/covers/l/562438-rocket-league-nintendo-switch-front-cover.jpg")

# Genre.create!(genre_name: "RPG")
# Genre.create!(genre_name: "Adventure")
# Genre.create!(genre_name: "Sports")
# Genre.create!(genre_name: "Multiplayer")

# GameGenre.create!(game_id: 1, genre_id: 4)
# GameGenre.create!(game_id: 2, genre_id: 1)
# GameGenre.create!(game_id: 3, genre_id: 2)
# GameGenre.create!(game_id: 4, genre_id: 3)
# game = Game.find_by(id: 1)
# game.genres << Genre.find_by(id: 4)

# Favorite.create!(user_id: 1, game_id: 3, rating: 5, review: "Best MMORPG on the market!")
# Favorite.create!(user_id: 1, game_id: 4, rating: 4, review: "Very fun but very hard.")
# Favorite.create!(user_id: 2, game_id: 1, rating: 3, review: "Super addicting, but a lot of toxic people online.")
# Favorite.create!(user_id: 2, game_id: 2, rating: 5, review: "Best DS game I've ever played, love the progress of your heroes.")
