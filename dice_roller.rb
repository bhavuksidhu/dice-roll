class Dice
    def initialize(sides)
      @sides = sides
    end
  
    def roll
      rand(1..@sides)
    end
  end
  
  class DiceRoller
    def initialize(*dice)
      @dice = dice
    end
  
    def roll_all
      results = @dice.map { |die| die.roll }
      total = results.sum
      { results: results, total: total, description: description }
    end
  
    private
  
    def description
      @dice.map.with_index { |die, index| "Die #{index + 1}: #{die.instance_variable_get(:@sides)} sides" }.join(", ")
    end
  end
  