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
    @@genres.inject(Hash.new(0)) { |count, g| count[g] += 1 ;count}
  end
  
end