class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

def self.create
  song = Song.new
  song.save
  song
end

def self.new_by_name(song_name)
  song = self.new
  song.name = song_name
end

def create_by_name(song)
  song = self.new
  song.save
end

def self.find_by_name(song)
  self.all.detect{ | song | song.name == song}
end

def self.find_or_create_by_name(song)
  find_by_name(song) || create_by_name(song)
  song
end

def self.alphabetical
  self.all.sort_by{ | song | song.name}
end

# def self.new_from_filename(song)
#     split_song = song.split(" - ")
#     song_name = split_song(0)
#
#       name = song_name[0]
#
#       artist_name = name.split(".mp3")
#              = song[1]
#
#       song = self.new
#       song.name = name
#       song.artist_name = artist_name
#       song
#     end
# end

def save
    self.class.all << self
end

def self.create_from_filename(song)
  song = self.new
  song.new_from_filename
  song.save
end

def self.destroy_all
  self.all.clear
end

end
