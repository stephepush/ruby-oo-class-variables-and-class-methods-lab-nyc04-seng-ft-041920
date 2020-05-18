class Song

    @@count = 0
    @@artists = []
    @@genres = []
    #@@genre_count = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
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

    def self.genre_count
       #@@genres.tally
       #@@genres.group_by(&:itself).transform_values(&:count)
       @@genres.inject(Hash.new(0)) { |total, e| total[e] +=1 ; total}
    end

    def self.artist_count 
       # @@artists.tally
       #@@artists.group_by(&:itself).transform_values(&:count)
       @@artists.inject(Hash.new(0)) { |total, e| total[e] +=1 ; total}
    end

end
