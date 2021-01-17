class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all.push(@songs)
    end

    def add_song(song)
        if song.artist != self
            song.artist = self
        end
        @songs.push(song)
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        @songs.push(song)
    end

    def self.song_count
        temp = @@all.select{|song, artist| song.class == Song}
        return temp.length
    end

end