
class Artist 
  attr_accessor :name
  
  @@all = []
@@songs = []
  @@song_count = 0
  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    @@songs
  end
  def add_song(song)
    @@songs << song
    song.artist = self
    song
  end

  
  def save
    @@all<< self
    self
  end
  
  def self.all
    @@all
  end
  
  def self.create 
    s = self.new 
    
    s.save 
    s
  end 
 
  def self.create_by_name(name)
    s = self.new 
    s.name = name
    s.save 
    s
  end
 
  def self.new_by_name(name)
    s = self.new
    s.name = name
    s
  end 
  def self.find_or_create_by_name(name)
      if @name == nil
        return nil
      else
        Artist
      end
      
end

def print_songs
    self.songs.each {|song| puts song.name} 
   end
end
 
