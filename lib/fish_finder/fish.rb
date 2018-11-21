class Fish
  attr_accessor :name, :description

  @@all = []

  def initialize(name, description)
    @name = name
   @@all << self
   @description = description
 
  end


  def self.all
    @@all
  end

end