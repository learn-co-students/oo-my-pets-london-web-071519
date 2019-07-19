class Dog
 #initializes with a name and an Owner
 attr_accessor :owner, :mood
 attr_reader :name

 @@all =[]

 #initializes with a nervous mood
 def initialize(name, owner)
   @name = name
   @owner = owner
   @mood = "nervous"
   @@all << self
   @owner.dogs << self
 end

 # knows all the cats
 def self.all
   @@all
 end

end