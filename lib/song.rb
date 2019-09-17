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
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.genre_count
    counts = {}
    @@genres.each { |g| counts[g] += 1 }
  end
  
end