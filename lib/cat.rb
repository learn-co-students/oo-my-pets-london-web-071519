class Cat
  # code goes here
attr_reader :name
attr_writer
attr_accessor :mood, :owner
@@all = []

  def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    @@all << self
    @owner.cats << self
  end

  def self.all
    @@all
  end

end