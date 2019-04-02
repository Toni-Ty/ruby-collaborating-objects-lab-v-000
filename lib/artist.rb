class Artist


attr_accessor :name, :songs
  @@all = []

def initialize(name)
  @name = name
  @songs = []
end

def self.find_or_create_by_name(artist_name)
  artist_found = self.all.find { |artist| artist.name = artist_name}
  if artist_found
    artist_found
  else
    new_artist = self.new(artist_name)
    artist_name.save
    new_artist
  end
end

def add_song(song)
  @songs << song
  song
end

def print_songs
  @songs
end



end


class Artist

  attr_accessor :name, :songs
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self #saves the artist name to the all array
  end

  def self.all
    @@all #displays the all array
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
