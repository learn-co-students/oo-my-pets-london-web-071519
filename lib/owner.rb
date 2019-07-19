class Owner
 
  attr_reader :name, :species 

  @@all = []  

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
  end 

  def name
    @name
  end 

    def say_species
      "I am a #{self.species}." 
    end 

  def self.all 
    @@all 
  end 

  def self.count
    @@all.count 
  end 

  def self.reset_all 
    @@all.clear 
  end 

end