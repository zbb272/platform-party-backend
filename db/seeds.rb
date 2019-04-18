# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "JSON"
Level.destroy_all
Block.destroy_all
Score.destroy_all
Game.destroy_all

test_game = Game.create(name: "Test Game")
blank_level = Level.create(name: "Blank Level", startPositionX: 0, startPositionY: 0)
blank_level.scores << Score.create(value: 0)
blank_level.blocks << Block.create(x: 0, y: 100, width: 100, height: 5, style: "orange", status: "platform")

test_level = Level.create(name: "Test Level", startPositionX: 30, startPositionY: 400)
test_level.scores << Score.create(value: 0)

test_level.blocks << Block.create(x: 0, y: 650, width: 150, height: 50, style: "black", status: "platform")
test_level.blocks << Block.create(x: 300, y: 550, width: 50, height: 150, style: "black", status: "platform")
test_level.blocks << Block.create(x: 550, y: 500, width: 50, height: 200, style: "black", status: "platform")
test_level.blocks << Block.create(x: 950, y: 500, width: 100, height: 200, style: "black", status: "platform")
test_level.blocks << Block.create(x: 1125, y: 325, width: 75, height: 25, style: "black", status: "platform")
test_level.blocks << Block.create(x: 750, y: 225, width: 50, height: 25, style: "black", status: "platform")
test_level.blocks << Block.create(x: 450, y: 225, width: 50, height: 25, style: "black", status: "platform")
test_level.blocks << Block.create(x: 0, y: 250, width: 180, height: 15, style: "limegreen", status: "goal")
coin1_movement = JSON.generate({color: "gold", dx: -1, dy: 1, maxX: 20, minX: -20, maxY: 40, minY: 0})
test_level.blocks << Block.create(x: 420, y: 350, width: 25, height: 25, style: "mover#{coin1_movement}", status: "coin")
coin2_movement = JSON.generate({color: "blue", dx: -1, dy: 1, maxX: 20, minX: -20, maxY: 40, minY: 0})
test_level.blocks << Block.create(x: 763, y: 275, width: 25, height: 25, style: "mover#{coin2_movement}", status: "doubleJump")
coin3_movement = JSON.generate({color: "gold", dx: 1, dy: 0, maxX: 100, minX: 0, maxY: 0, minY: 0})
test_level.blocks << Block.create(x: 600, y: 75, width: 25, height: 25, style: "mover#{coin3_movement}", status: "coin")
#config: {color: "red", dx: 1, dy: 0, maxX: 100, minX, maxY maxY: y, simultaneous: 0}

test_level2 = Level.create(name: "Test Level 2", startPositionX: 1, startPositionY: 526)
test_level2.scores << Score.create(value: 0)
block_movt = JSON.generate({color: "black", dx: 1, dy: 0, maxX: 20, minX: -10, maxY: 0, minY: 0})
block_movt2 = JSON.generate({color: "black", dx: 1, dy: 0, maxX: 30, minX: -10, maxY: 0, minY: 0})
test_level2.blocks << Block.create(x: 0, y: 600, width: 300, height: 100, style: "black", status: "platform")
test_level2.blocks << Block.create(x: 8, y: 530, width: 25, height: 25, style: "blue", status: "dash")
test_level2.blocks << Block.create(x: 400, y: 600, width: 75, height: 100, style: "mover#{block_movt}", status: "platform")
test_level2.blocks << Block.create(x: 600, y: 600, width: 50, height: 100, style: "mover#{block_movt2}", status: "platform")
test_level2.blocks << Block.create(x: 800, y: 600, width: 40, height: 100, style: "mover#{block_movt}", status: "platform")
test_level2.blocks << Block.create(x: 950, y: 600, width: 220, height: 100, style: "black", status: "platform")

test_level2.blocks << Block.create(x: 0, y: 350, width: 300, height: 199, style: "black", status: "platform")
test_level2.blocks << Block.create(x: 400, y: 350, width: 75, height: 199, style: "mover#{block_movt}", status: "platform")
test_level2.blocks << Block.create(x: 600, y: 450, width: 50, height: 99, style: "mover#{block_movt2}", status: "platform")
test_level2.blocks << Block.create(x: 800, y: 450, width: 40, height: 99, style: "mover#{block_movt}", status: "platform")
test_level2.blocks << Block.create(x: 950, y: 500, width: 100, height: 49, style: "black", status: "platform")

test_level2.blocks << Block.create(x: 650, y: 350, width: 550, height: 25, style: "black", status: "platform")
test_level2.blocks << Block.create(x: 50, y: 250, width: 600, height: 25, style: "black", status: "platform")
test_level2.blocks << Block.create(x: 650, y: 250, width: 25, height: 100, style: "black", status: "platform")
test_level2.blocks << Block.create(x: 600, y: 150, width: 25, height: 25, style: "limegreen", status: "goal")

test_level3 = Level.create(name: "Test Level 3", startPositionX: 1, startPositionY: 1)
test_level3.scores << Score.create(value: 0)

test_level3.blocks << Block.create(x: 0, y: 150, width: 50, height: 500, style: "black", status: "platform")

test_level3.blocks << Block.create(x: 200, y: 0, width: 100, height: 300, style: "black", status: "platform")
test_level3.blocks << Block.create(x: 400, y: 0, width: 25, height: 200, style: "black", status: "platform")
test_level3.blocks << Block.create(x: 250, y: 400, width: 25, height: 25, style: "blue", status: "wallJump")
test_level3.blocks << Block.create(x: 400, y: 300, width: 25, height: 200, style: "black", status: "platform")
long_blocK = JSON.generate({color: "black", dx: 0, dy: 1, maxX: 0, minX: 0, maxY: 75, minY: 0})
long_blocK2 = JSON.generate({color: "red", dx: 0, dy: 1, maxX: 825, minX: 0, maxY: 75, minY: 0})
test_level3.blocks << Block.create(x: 600, y: 0, width: 25, height: 400, style: "mover#{long_blocK}", status: "platform")
test_level3.blocks << Block.create(x: 300, y: 0, width: 100, height: 100, style: "black", status: "platform")
test_level3.blocks << Block.create(x: 800, y: 0, width: 25, height: 200, style: "black", status: "platform")
test_level3.blocks << Block.create(x: 800, y: 300, width: 25, height: 200, style: "black", status: "platform")
test_level3.blocks << Block.create(x: 800, y: 150, width: 25, height: 70, style: "mover#{long_blocK2}", status: "enemy")
test_level3.blocks << Block.create(x: 1000, y: 300, width: 100, height: 50, style: "limegreen", status: "goal")
test_level3.blocks << Block.create(x: 500, y: 50, width: 25, height: 25, style: "gold", status: "coin")
test_level3.blocks << Block.create(x: 700, y: 50, width: 25, height: 25, style: "gold", status: "coin")
test_level3.blocks << Block.create(x: 700, y: 50, width: 25, height: 25, style: "gold", status: "coin")
test_level3.blocks << Block.create(x: 950, y: 400, width: 25, height: 25, style: "gold", status: "coin")

test_game.levels << test_level
test_game.levels << test_level2
test_game.levels << test_level3
