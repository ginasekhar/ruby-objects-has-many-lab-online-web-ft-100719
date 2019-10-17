class Song
  attr_accessor :artist, :name, :genre
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.song_count
    @@all.size 
  end
end