require 'pry'
class Cli

  def run
    
    puts "Did you catch a fish off the coast of New England? What type do you think? Please pick from this commonly caught list..."
    Scraper.scrape_rt
    
    Fish.all.each.with_index(1) do | fish, i|
      puts "#{i}. #{fish.name}"
        
    end
    menu
  end

  def menu
    puts "Please pick from this commonly caught fish list:"
    input = gets.chomp
    if input.to_i == 0 || input.to_i > Fish.all.length
      puts "invalid choice, please choose again"
    else 
    fish = Fish.all[input.to_i - 1]
    # options for user  
      puts "Here is some info: #{fish.description}"
    end
    menu
  end
  end
    
     
  



  
