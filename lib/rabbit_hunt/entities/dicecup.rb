module RH
  class DiceCup < Entity
    attr_accessor :diceArray

    def initialize
      @diceColor = ["r", "r", "r", "y", "y", "y", "y", "g", "g", "g", "g", "g", "g"]
    end

    def randomizeColor
      randomizeRoll = []
      3.times {colorArray.push(@diceArray[rand(12)])}
      randomizeRoll
    end

  end
end
