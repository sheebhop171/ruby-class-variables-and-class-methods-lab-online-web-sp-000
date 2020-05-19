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
      #iterate over genres array
    @@genres.each_key do |key|
      # populate new hash with key/value pairs
      new_hash << key
      # check if hash already contains key of particular genres
      if new_hash.has_key?(key)
      # if yes, increment the value of that key by one
        key.count + 1
      # else create new key/value pair
    else new_hash << [:key, value\
      end
    end
  end

  def artist_count

  end

end
