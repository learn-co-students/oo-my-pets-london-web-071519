class Owner
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
    "I am a #{self.species}."
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    # binding.pry
    self.cats.each do |instance| 
    instance.mood = "nervous"
    instance.owner = nil
    end
    self.dogs.each do
    |instance| 
    instance.mood = "nervous"
    instance.owner = nil
    end
    self.cats.clear
    self.dogs.clear
  end
  def list_pets
    myCats = self.cats.count
    myDogs = self.dogs.count
    "I have #{myDogs} dog(s), and #{myCats} cat(s)."
  end
end