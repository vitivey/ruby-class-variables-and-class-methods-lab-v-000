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
    @@artists.each do |artist_name|
      @@artists.delete(artists_name) if @@artists.select{|x| x == artist_name}.size > 1
    end
  end

  def self.genres
    @@genres
  end

  def self.genre_count
  end

  def self.artist_count
  end

end
