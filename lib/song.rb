class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name,artist,genre)
    @name = name
    @genre = genre
    @artist = artist
    
    @@count += 1
    
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
end