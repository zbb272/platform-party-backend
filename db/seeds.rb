# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Level.destroy_all
Block.destroy_all
Score.destroy_all
blank_level = Level.create(name: "Blank Level", startPositionX: 0, startPositionY: 0)
blank_level.scores << Score.create(value: 0)
blank_level.blocks << Block.create(x: 0, y: 100, width: 100, height: 5, style: "orange", status: "platform")

test_level = Level.create(name: "Test Level", startPositionX: 30, startPositionY: 400)
test_level.scores << Score.create(value: 0)

test_level.blocks << Block.create(x: 0, y: 600, width: 150, height: 100, style: "black", status: "platform")
test_level.blocks << Block.create(x: 300, y: 500, width: 50, height: 200, style: "black", status: "platform")
test_level.blocks << Block.create(x: 500, y: 450, width: 75, height: 250, style: "black", status: "platform")
test_level.blocks << Block.create(x: 1000, y: 450, width: 100, height: 250, style: "black", status: "platform")
test_level.blocks << Block.create(x: 800, y: 350, width: 150, height: 10, style: "black", status: "platform")
test_level.blocks << Block.create(x: 875, y: 300, width: 150, height: 10, style: "black", status: "platform")
test_level.blocks << Block.create(x: 700, y: 250, width: 150, height: 10, style: "black", status: "platform")
test_level.blocks << Block.create(x: 500, y: 250, width: 150, height: 10, style: "black", status: "platform")
test_level.blocks << Block.create(x: 250, y: 125, width: 150, height: 10, style: "black", status: "platform")

test_level2 = Level.create(name: "Test Level 2", startPositionX: 30, startPositionY: 400)
test_level2.scores << Score.create(value: 0)

test_level2.blocks << Block.create(x: 0, y: 600, width: 1000, height: 100, style: "brown", status: "platform")
test_level2.blocks << Block.create(x: 1000, y: 200, width: 150, height: 500, style: "brown", status: "platform")
test_level2.blocks << Block.create(x: 0, y: 200, width: 100, height: 10, style: "brown", status: "platform")
test_level2.blocks << Block.create(x: 300, y: 250, width: 100, height: 10, style: "brown", status: "platform")
test_level2.blocks << Block.create(x: 500, y: 250, width: 100, height: 10, style: "brown", status: "platform")

test_level3 = Level.create(name: "Test Level 3", startPositionX: 1, startPositionY: 1)
test_level3.scores << Score.create(value: 0)

test_level3.blocks << Block.create(x: 0, y: 150, width: 50, height: 500, style: "orange", status: "platform")

test_level3.blocks << Block.create(x: 200, y: 0, width: 100, height: 300, style: "orange", status: "platform")
test_level3.blocks << Block.create(x: 400, y: 0, width: 5, height: 200, style: "orange", status: "platform")
test_level3.blocks << Block.create(x: 400, y: 300, width: 5, height: 200, style: "orange", status: "platform")
test_level3.blocks << Block.create(x: 600, y: 50, width: 5, height: 400, style: "orange", status: "platform")
test_level3.blocks << Block.create(x: 300, y: 0, width: 100, height: 100, style: "orange", status: "platform")
test_level3.blocks << Block.create(x: 800, y: 0, width: 5, height: 200, style: "orange", status: "platform")
test_level3.blocks << Block.create(x: 800, y: 300, width: 5, height: 200, style: "orange", status: "platform")
test_level3.blocks << Block.create(x: 1000, y: 300, width: 100, height: 200, style: "orange", status: "platform")
