class Gear
    attr_reader :chainring, :cog, :rim, :tire, :wheel
    
    def initialize(chainring,cog,rim,tire)
    @chainring = chainring
    @cog = cog
    @wheel = Wheel.new(rim,tire)
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
    # Directly initialized gear with Wheel instance.
    puts Gear.new(52,11,26,1.5).gear_inches