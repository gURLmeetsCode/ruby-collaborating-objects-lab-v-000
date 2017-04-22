class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = [] # you want the songs array to be activated each time a new artist is created so that you can store their song
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all #exposes the class variable
    @@all
  end

  def save # saves into the class variable array
    self.class.all << self
    self
  end

  def self.find_or_create_by_name(artist_name)
    self.all.detect{|x| x.name == artist_name} ?  self.all.detect{|x| x.name == artist_name} : self.new(name)
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
