require "pry" 

class Song 
  
  attr_accessor :name, :artist, :genre
   
  @@count = 0
  @@genres = []
  @@artists = []
    
  def initialize(name,artist, genre)
    @@count+=1
    @name = name
    @artist = artist
    @genre = genre
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
    genre_hash={}
    @@genres.each do |genre|
      unless genre_hash.keys.include?(genre)
        genre_hash[genre]=1
      else
        genre_hash[genre]+=1
      end
    end
    genre_hash
  end
  
  def self.artist_count
     artist_hash={}
    @@artists.each do |artist|
      unless artist_hash.keys.include?(artist)
        artist_hash[artist]=1
      else
        artist_hash[artist]+=1
      end
    end
    artist_hash
  end
  
end