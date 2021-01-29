class Genre
  attr_accessor :name
  
  @@all = [] 
  
  def inititalize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
end 