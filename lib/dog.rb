class Dog
  attr_accessor :mood
  attr_reader :Dog
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end