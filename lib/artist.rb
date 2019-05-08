class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

def songs
  Song.all.filter{self.name}
end


  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song)
    newsong = Song.new(song)
    newsong.artist = self
  end

  def self.song_count
     Song.all.count
  end

end
