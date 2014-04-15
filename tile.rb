class Tile

  def initialize()
    @marker = " "
  end

  def place_piece(marker)
    @marker = marker
  end

  def render()
    print @marker
  end
end