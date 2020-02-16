class LsuTigersRosterApp::CLI
  
  def call
    #Scraper.new.scrape_roster
    puts "Welcome to the LSU Tigers Roster App."
    main_menu
  end 
  
  def main_menu
    puts "What would you like to do?"
    puts ""
    puts "1. List players"
    puts "2. Exit"
    puts nil 
    input = gets.strip 
    
    if input == "1"
      list_players 
      elsif input == "2"
      byebye 
    else 
      wrong_input 
      main_menu
    end 
  end
  
  def wrong_input
    puts "That's not an option, please try again."
  end 
  
  def list_players
    puts nil
    #Player.all.each.with_index(1){ |p, i| puts "#{i}. #{p.name}"}
    player_list_menu 
  end 
  
  def player_list_menu
    puts "select a player to see their info"
    puts "or type 'exit' to leave site, or 'menu' to start over."
    
    input = gets.strip 
    index = input.to_i -1
    if input == "menu"
      main_menu
    elsif input == "exit"
      byebye
    elsif index.between?(0, Player.all.length)
      display_player(index)
    else 
      wrong_input
      player_list_menu
    end 
  end 
  
  def display_player(index)
    player = Player.all[index]
    puts player.info 
    
    display_player_menu
  end 
  
  def display_player_menu
    puts "What would you like to do now?"
    puts "1. Back to player list"
    puts "2. Back to main menu"
    puts "3. Exit"
    
    input = gets.strip 
    if input == "1"
      list_players
    elsif input == "2"
      main_menu
    elsif input == "3"
      byebye
    else 
      wrong_input
      display_player_menu
    end 
  end 
end 