# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
test_level = Level.create(name: "Test", startPositionX: 30, startPositionY: 600)

test_level.blocks << Block.create(x: 0, y: 600, width: 150, height: 600, style: "black", status: "platform")
test_level.blocks << Block.create(x: 300, y: 500, width: 50, height: 500, style: "black", status: "platform")
test_level.blocks << Block.create(x: 500, y: 450, width: 75, height: 450, style: "black", status: "platform")
test_level.blocks << Block.create(x: 1000, y: 450, width: 100, height: 450, style: "black", status: "platform")
test_level.blocks << Block.create(x: 800, y: 350, width: 150, height: 10, style: "black", status: "platform")
test_level.blocks << Block.create(x: 875, y: 300, width: 150, height: 10, style: "black", status: "platform")
test_level.blocks << Block.create(x: 700, y: 250, width: 150, height: 10, style: "black", status: "platform")
test_level.blocks << Block.create(x: 500, y: 250, width: 150, height: 10, style: "black", status: "platform")
test_level.blocks << Block.create(x: 250, y: 125, width: 150, height: 10, style: "black", status: "platform")
