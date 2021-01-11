class Genre
    attr_accessor :name

   @@all = []
    
    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs #has many songs
        Song.all.select {|song| song.genre == self}
    end

    def artists #has many artists, through songs
        songs.map {|song| song.artist}
    end
end