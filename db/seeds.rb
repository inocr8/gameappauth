# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.delete_all

g1 = Game.create!(name: "Big John Bananarammar")
g2 = Game.create!(name: "Street Fighter")
g3 = Game.create!(name: "Knotts Landing Crosses")