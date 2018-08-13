require "pry"
class Song
attr_reader :name, :artist, :genre
@@count=0
@@artists=[]
@@genres=[]
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre

    @@artists << artist
    @@genres << genre
    @@count+=1
  end

  def self.count
    @@count
  end

  def self.artists
    i=0
    while i < @@artists.size
      @@artists.delete(@@artists[i]) if @@artists.select {|name| name == @@artists[i]}.size >1
      i+=1
    end
    @@artists
  end

  def self.genres
    @@unique_genres=[]
    @@genres.map do |category|
      @@unique_genres << category if !@@unique_genres.include?(category)
    end
    @@unique_genres
  end

  def self.genre_count
  end

  def self.artist_count
  end

end
