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
      new_hash = Hash[@@genres.map {|genre| [genre, 1]}]
      binding.pry
      if new_hash.has_key?
        new_hash[:genre] = genre
      end
  end

  def artist_count

  end

end
