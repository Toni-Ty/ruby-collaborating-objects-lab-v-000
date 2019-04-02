class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)
# new_instance = Song.new_by_filename(file_name)
  song = filename.split(" - ")[1]
  artist = filename.split(" - ")[0]
  new_song = self.new(song)
  new_song_artist = artist
  new_song
end

def artists=(name)
end


end