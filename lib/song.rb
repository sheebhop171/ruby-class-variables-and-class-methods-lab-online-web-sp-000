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
    binding.pry
    new_hash = Hash[@@genres.map {|genre| [genre, genre.size]}]
      #if new_hash.has_key?(genre)
      #  genre.size + 1
  end

  def artist_count

  end

end
