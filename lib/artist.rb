class Artist 
  attr_accessor :name
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(title, genre)
    Song.new(title, self, genre)
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def genres 
    Song.all.collect do |genre|
      genre_collection = songs.genre
    end 
    genre_collection
  end 
  
 
  
end 