require 'pry'

class Owner

  @@all = []

  #can have a name, name cannot be changed
  attr_reader :name, :species
  attr_accessor :cats, :dogs

  #intializes with species set to human, can't change species
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end

  #can say its species
  def say_species
    return "I am a #{@species}."
  end

  #.all returns all instances of Owner
  def self.all
    @@all
  end

  #.count returns number of owners
  def self.count
    @@all.length
  end

  #reset_all can reset all created owners 
  def self.reset_all
    @@all.clear
  end

  #can buy a cat that is an instance of the Cat class (FAILED - 1)
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self)
    # self.cats << new_cat
    # binding.pry
  end

  #can buy a dog that is an instance of the Cat class (FAILED - 1)
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self)
    # tommy.buy_cat("Garfield")
  end

  #walks the dogs which makes the dogs moods happy
  def walk_dogs
    self.dogs.each{|dog|
    dog.mood = "happy"
    }
  end

 #feeds the catss which makes the cats moods happy
  def feed_cats
    self.cats.each{ |cat|
  cat.mood = "happy"
  }
  end

  #can sell all its pets, which makes them nervous (FAILED - 1)
  def sell_pets
    self.cats.each{ |each_cat|
      each_cat.mood = "nervous"
      each_cat.owner = nil
    }
  
    self.dogs.each{ |each_dog|
      each_dog.mood = "nervous"
      each_dog.owner = nil
    }

    self.cats.clear
    self.dogs.clear
  end

  def list_pets
    return "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end


end


