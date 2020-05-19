require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    new_hash = {}
    @@genres.each do |key, value|
      if @@genres.has_key?(key)
        new_hash[key] = value #increment value by 1
      else
      end
    end
  end

  def artist_count

  end

end
