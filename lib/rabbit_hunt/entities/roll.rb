module RH
  class Roll < Entity

    def initialize
      @dicecup = RH::DiceCup::Entity.new
      @redDie = ["paws", "paws", "meat", "shot", "shot", "shot"]
      @yellowDie = ["paws", "paws", "meat", "meat", "shot", "shot"]
      @greenDie = ["paws", "paws", "meat", "meat", "meat", "shot"]
    end

    def randomizeSymbol
      colorArray = @dicecup.randomizeColor
      colorArray.each do |color|
        if color == "r"
          @redDie[rand(6)]
        elsif color == "y"
          @yellowDie[rand(6)]
        else
          @greenDie[rand(6)]
        end
      end

    end

  end
end
