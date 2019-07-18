require 'pry'

class Owner
  
  attr_accessor :cats, :dogs, :cat_name
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name, self)
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end 
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end 
  end

  def walk_dog(dog_name)
    dog_name = Dog.new(dog_name, self)
  end

  def sell_pets
    @cats.clear
    @dogs.clear
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end

# binding.pry
# 0