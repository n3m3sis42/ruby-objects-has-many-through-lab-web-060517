require "pry"

# NOTE: This is the "single source of truth" version of this code.
#       I'm not sure this was the best solution, but it was the best
#       implementation I could come up with that passed the test and
#       stored all the song/artist/genre data under the Song class.

class Artist
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs = Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
    songs
  end

  def genres
    songs.map{|song| song.genre}
  end

end
