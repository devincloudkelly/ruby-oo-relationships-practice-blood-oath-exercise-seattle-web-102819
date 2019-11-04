class BloodOath

    attr_reader :follower, :cult, :initiation_date

    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        @initiation_date = Time.new.strftime("_%F_")
        @@all << self
    end

    def self.all
        @@all
    end

    def initiation_date
        @initiation_date
    end
    

end