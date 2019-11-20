class MP3Importer
  attr_accessor :path
  
  @@files = []
  
  def initialize(path)
    @path = path
  end
  
  def files 
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
  end
  files
end
  
  
  
  
end