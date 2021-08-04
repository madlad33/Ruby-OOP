class Gear
    attr_reader :chainring, :cog, :rim, :tire
    
    def initialize(chainring,cog,rim,tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire    
    end
    
    def gear_inches
    ratio * wheel.diameter
    end
    
    def ratio
        chainring/cog.to_f
    end

    def wheel
    @wheel ||= Wheel.new(rim,tire)
    end
    
    end
    
    class Wheel
    attr_reader :tire, :rim
    
    def initialize(rim,tire)
    @rim = rim
    @tire = tire
    end
    
    def diameter 
    rim + (tire*2)
    end
    
    end
    # Improved the dependency b/w Gear and Wheel by minimizing coupling.
    # Used isolated method to create a new instance of wheel class.
    puts Gear.new(52,11,26,1.5).gear_inches