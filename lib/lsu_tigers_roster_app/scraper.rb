require 'pry'
class LsuTigersRosterApp::Scraper 
  
  def scraper_roster
    
    doc = Nokogiri::HTML(open("https://www.footballdb.com/college-football/teams/fbs/lsu/roster"))
    #binding.pry
    player_docs =  doc.css('div.tr')
    player_docs.each do |player_doc|
    name = player_doc.css('div.rostercell_name b a').text
    position = player_doc.css('div.rostercell_pos')[0].text
   
   
   
    # player_docs = doc.css("").text 
    # player_docs.each do |player_doc|
    
    # name = player_doc.css("sidearm-roster-player-name p").text 
    # position = player_doc.css("sidearm-roster-player-position-long-short.hide-on-small-down").text 
  
    LsuTigersRosterApp::Player.create(name, position)
  end 
  end
end 