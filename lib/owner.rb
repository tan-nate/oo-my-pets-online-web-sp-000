class Owner
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
  end
end