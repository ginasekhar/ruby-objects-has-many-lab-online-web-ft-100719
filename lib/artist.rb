class Artist
  attr_accessor :name
  
  @songs = []
  @@songs_to_artists_count = 0
 
  def initialize(name)
    @name = name
  end
 
  def add_song(song)
    song.artist = self
    @@songs_to_artists_count +=1 
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @@songs_to_artists_count +=1 
  end
 
  def self.song_count
    @@all.size 
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
end