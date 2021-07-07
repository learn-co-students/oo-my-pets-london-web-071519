require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :dogs, :cats
  @@all = []

    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
      @cats = []
      @dogs = []
    end

    def say_species
      "I am a #{@species}."
    end

    def self.all
      @@all
    end

    def self.count
      @@all.count
    end

    def self.reset_all
      self.all.clear
    end

    def buy_dog(name)
      Dog.new(name, self)  
    end

    def buy_cat(name)
      Cat.new(name, self)
    end
    
    def walk_dogs
      self.dogs.each{|dog| dog.mood = "happy"}
    end

    def feed_cats
      self.cats.each{|cat| cat.mood = "happy"}
    end
    
    def sell_pets
      self.cats.each{|current_cat|  
        current_cat.mood = "nervous"
        current_cat.owner = nil
     }
      self.dogs.each{|current_dog|
        current_dog.mood = "nervous"
        current_dog.owner = nil
     }
    # The self.cats/dogs arrays contain the object references to the data stored in cat/dog.rb.
    # Therefore we need to clear them as the owner no longer owns any pets

      self.cats.clear
      self.dogs.clear
    end

    def list_pets
      "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
    end
end