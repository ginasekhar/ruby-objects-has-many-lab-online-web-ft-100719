class Song
  attr_accessor :artist, :name, :genre
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
 def add_song_by_name(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
end