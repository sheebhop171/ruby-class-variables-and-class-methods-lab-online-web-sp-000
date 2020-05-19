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

  def genre_count(genre, name)
      if genre[name]
        genre[name] << name
      else 
        genre[name] = [name]
  end

    def add_student(name, grade)
      if roster[grade]
        roster[grade] << name
      else
        roster[grade] = [name]
      end
  end

  end

  def artist_count

  end

end
