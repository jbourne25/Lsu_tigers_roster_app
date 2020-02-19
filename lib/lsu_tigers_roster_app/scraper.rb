require 'pry'
class LsuTigersRosterApp::Scraper 
  
  def scraper_roster
    
    doc = Nokogiri::HTML(open("https://www.lsusports.net/sports/football/roster/2019.com"))
    binding.pry
    player_docs = doc.css(".sidearm-roster-players-container").text 
    player_docs.each do |player_doc|
    
    name = player_doc.css("sidearm-roster-player-name p").text 
    position = player_doc.css("sidearm-roster-player-position-long-short.hide-on-small-down").text 
  
    Player.create(name, position)
  end 
  end
end 