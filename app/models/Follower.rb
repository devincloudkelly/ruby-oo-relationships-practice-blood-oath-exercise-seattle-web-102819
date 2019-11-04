class Follower

attr_reader :name, :age, :life_motto

@@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        BloodOath.all.select do |bo| 
            if bo.follower.name == @name
                bo.cult
            end
        end
    end

    def join_cult(cult_inst)
        BloodOath.new(self, cult_inst)
    end

    def self.of_a_certain_age(age_num)
        arr = Follower.all.select do |fllwr|
            fllwr.age >= age_num
        end
        arr.map {|f| f.name}
    end

    

end