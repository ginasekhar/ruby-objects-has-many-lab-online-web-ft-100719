class Song
  attr_accessor :artist, :name, :genre
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
 add_song_by_name(name)
 
  def self.all
    @@all
  end
end