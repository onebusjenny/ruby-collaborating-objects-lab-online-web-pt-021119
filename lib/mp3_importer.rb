class Mp3_importer
  attr_accessor :filepath
  
  def initialize (filepath)
    @filepath = filepath
    @files = Dir.entries(path).grep(/.*\.mp3/)
  end

   def import
    @files.each {|file| Song.new_by_filename(file)}
  end
end
    
 