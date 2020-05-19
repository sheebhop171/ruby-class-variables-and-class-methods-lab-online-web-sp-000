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
    # new_hash = {}
      #iterate over genres array
      #binding.pry
      new_hash = Hash[@@genres.map {|genre| [genre, 1]}]

      # populate new hash with key/value pairs
      if new_hash.has_key?(genre)
        genre.size + 1
      # check if hash already contains key of particular genres
      # else create new key/value pair
    end
  end

  def artist_count

  end

end
