class Cult

    attr_reader :name, :founding_year, :location, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year  ## May not need to initalize with this
        @slogan = slogan  ## May not need to initialize with this
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self)
    end

    def cult_population
        BloodOath.all.select {|bo| bo.cult.name == @name}.count
        # {|name| if name == @name
        # name.length end}
    end

    def self.find_by_name(cult_name)
        Cult.all.filter {|cults| cults.name == cult_name}
    end

    def self.find_by_location(cult_location)
        Cult.all.select {|loc| loc.location == cult_location}
    end

    def self.find_by_founding_year(year)
        Cult.all.select {|cults| cults.founding_year == year}
    end
end

