class LsuTigersRosterApp::Player
  
  @@all = []
  
  attr_accessor :name, :position
  
  def self.create(name, position)
    p = LsuTigersRosterApp::Player.new 
    p.name = name 
    p.position = position
    p.save 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
    self 
  end 
  
  def info 
    puts <<-INFO
    Name: #{name}
    Position: #{position}
    INFO
  end 
  
end 
  
  