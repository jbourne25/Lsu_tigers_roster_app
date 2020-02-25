class LsuTigersRosterApp::Player
  
  @@all = []
  
  attr_reader :name, :position
  
  def initialize(name, position)
    @name = name
    @position = position
  end
  
  def self.create(name, position)
    p = LsuTigersRosterApp::Player.new(name, position)
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
  
  