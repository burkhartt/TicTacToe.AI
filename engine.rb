require_relative 'tile.rb'
require_relative 'player.rb'

class Engine
  def initialize(height, width)
    @grid = Array.new(height) { Array.new(width) { Tile.new } }
    @player_1 = Player.new('X')
    @player_2 = Player.new('O')
    @current_player = @player_1
  end

  def make_move(x, y)
    marker = @current_player.marker
    @grid[x][y].place_piece(marker)  
    turn_finished()
  end

  def did_player_1_win()

  end

  def render()
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |tile, index|
        tile.render()
        if index < 2
          print "|"
        end
      end
      if row_index < 2
        print "\n------\n"
      end
    end
    puts ""
  end

  private

  def turn_finished()
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end
end