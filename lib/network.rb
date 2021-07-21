class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    require "pry"; binding.pry
    characters = shows.map { |show| show.characters  }
  end
end
