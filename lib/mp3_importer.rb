class MP3Importer
  attr_accessor :path
  

  def initialize(path)
    @path = path
  end
  
  def files 
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
  end
  files
end
  
  def import
    self.files.each do |file|
      array = file.split(" - ")
      artist = array[0].to_s 
      song = array[1].to_s 
      newartist = Artist.new(artist)
      newsong = Song.new(song)
      newsong.artist = newartist
  end
  
  
  
end