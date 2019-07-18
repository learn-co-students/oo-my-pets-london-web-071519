require 'pry'

class Owner
  # code goes here

  attr_reader :name, :species
  attr_accessor :cats, :dogs

  @@owners = []

  def initialize(name) 
    @name = name
    @species = "human"
    @@owners << self

    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners = []
  end

  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.cats.each do |each_cat| 
      each_cat.mood = "nervous"
      each_cat.owner = nil
    end

    self.dogs.each do |each_dog| 
      each_dog.mood = "nervous"
      each_dog.owner = nil
    end

    self.cats.clear
    self.dogs.clear
    
  end

  def list_pets
    cats_num = self.cats.count
    dogs_num = self.dogs.count
     "I have #{dogs_num} dog(s), and #{cats_num} cat(s)."
  end

end