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
  binding.pry

  def self.count
    @@count
  end

  def self.artists
    @@unique_artists=[]
    @@artists.map do |name|
      @@unique_artists << name if !@@unique_artists.include?(name)
    end
    @@unique_artists
  end

  def self.genres
    @@unique_genres=[]
    @@genres.map do |category|
      @@unique_genres << category if !@@unique_genres.include?(category)
    end
    @@unique_genres
  end

  