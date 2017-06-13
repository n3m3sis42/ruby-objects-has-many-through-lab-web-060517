require "pry"

# NOTE: This is the "single source of truth" version of this code.
#       I'm not sure this was the best solution, but it was the best
#       implementation I could come up with that passed the test and
#       stored all the song/artist/genre data under the Song class.

class Song
  attr_accessor :name, :genre, :artist
  @@all_songs = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    @genre.add_song(self)
    @@all_songs << self
  end

  def self.all
    @@all_songs
  end

end
