class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)
# new_instance = Song.new_by_filename(file_name)
name = Song.new(filename)

end

end
