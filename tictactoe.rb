require_relative 'engine.rb'

engine = Engine.new(3,3)
engine.make_move(1,1)
engine.make_move(2,1)
engine.make_move(0,1)

engine.render()
