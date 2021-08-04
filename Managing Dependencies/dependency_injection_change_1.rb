class Gear
    attr_reader :chainring, :cog, :wheel
    
    def initialize(chainring,cog,wheel)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
    end
    
    def gear_inches
    ratio * wheel.diameter
    end
    
    def ratio
        chainring/cog.to_f
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
    # Used duckTyping here as anything with diameter can be used in gear class
    puts Gear.new(52,11,Wheel.new(26,1.5)).gear_inches