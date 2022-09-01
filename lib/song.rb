require 'pry'

class Song


    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end 

    def self.count 
        @@count
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.artist_count
        @@artists.tally
    end

    def self.genre_count
        @@genres.tally

    end

end 



binding.pry
# lib/song.rb
# s1 = Song.new("Needles & Pins", "The Searchers", "60s pop")
# s2 = Song.new("Tití Me Preguntó", "Bad Bunny", "reggaeton")
# s3 = Song.new("Go Outside", "Cults", "indie")
# s4 = Song.new("yo perreo sola", "Bad Bunny", "reggaeton")