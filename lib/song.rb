class Song
attr_accessor :name, :genre, :artist

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
    @@count += 1
@name = name
@artist = artist
@genre = genre
@@genres << genre
@@artists << artist
end

def self.count
    @@count
end

def self.genres
    return @@genres.uniq
end

def self.artists
    @@artists.uniq
end

def self.genre_count
    h = Hash.new(0)
    @@genres.each{|v| h[v] += 1}
    h
end

def self.artist_count
    h = Hash.new(0)
    @@artists.each{|v| h[v] += 1}
    h
end










end