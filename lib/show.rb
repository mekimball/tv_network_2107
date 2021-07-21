require './lib/character'

class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.first.salary + characters.last.salary
  end

  def highest_paid_actor
    if characters.first.salary > characters.last.salary
      return characters.first.actor
    else
      return characters.last.actor
    end
  end

  def actors
    actors = []
    actors << characters.first.actor
    actors << characters.last.actor
  end
end
