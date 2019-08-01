class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
      @name = name 
     # @songs = []
      @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
    @@all << self
  end 
  
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    all.detect do |artist| 
    artist.name == name 
    end || new(name) 
=======
    all.detect { |artist| artist.name == name }
    || new(name) 
>>>>>>> 4f78f3957e5704d68c9f2b8d9bb00fa5500983a9
  end 
  
  def songs
    Song.all.select { |song| song.artist == self }
  end 
  
<<<<<<< HEAD
  def print_songs
    songs.each do |song|
      puts song.name
    end 
  end 
  
=======
>>>>>>> 4f78f3957e5704d68c9f2b8d9bb00fa5500983a9
end 