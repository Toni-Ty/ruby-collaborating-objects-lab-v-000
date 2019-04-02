class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path
  @filenames = Dir.entries(path).grep(/.*\.mp3/)
end

def files
  @filenames
end

def import
  @filenames.each { |filename| Song.new_by_filename(filename)}
end
















end
