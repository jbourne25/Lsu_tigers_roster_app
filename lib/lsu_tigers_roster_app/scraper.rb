class LsuTigersRosterApp::Scraper 
  
  def scraper_roster
    doc = Nokogiri::HTML(open("https://www.footballdb.com/college-football/teams/fbs/lsu/roster"))
    player_docs =  doc.css('div.tr')
  
    player_docs.each do |player_doc|
      name = player_doc.css('div.rostercell_name b a').text
      position = player_doc.css('div.rostercell_pos')[0].text
      LsuTigersRosterApp::Player.create(name, position)
    end
    
  end
end