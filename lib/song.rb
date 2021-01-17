class Song
    attr_accessor :name, :artist
    
    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def artist=(artist)
        artist.songs.push(self)
        @artist = artist
    end

    def self.all
        @@all
    end

    def artist_name
        if @artist == nil
            return nil
        end
        return artist.name
    end

end