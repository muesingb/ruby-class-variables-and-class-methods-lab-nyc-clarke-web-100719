class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
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
        Hash[@@genres.collect {|genre| [genre, @@genres.count(genre)] }]
    end

    def self.artist_count
        Hash[@@artists.collect {|artist| [artist, @@artists.count(artist)] }]
    end
end