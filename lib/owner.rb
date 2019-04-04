class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    
  end
end