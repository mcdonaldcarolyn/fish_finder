require 'pry'
class Cli

  def run
    
    puts "Did you catch a fish off the coast of New England? What type do you think? Please pick from this commonly caught list..."
   Scraper.scrape_rt
    #1 greet user and explain 
    # html = open ('http://www.eregulations.com/massachusetts/fishing/saltwater/commonly-caught-species/')
    # doc = Nokogiri::HTML(html)
    #  #makes a string in an array

    #   list_objs = doc.css('.Basic-Graphics-Frame')
    #   list_objs.each.with_index do |fish, i| 
    #     fish_name = fish.css('h3').text
    #     is_fish_name_empty = fish_name.to_s.empty?
    #     if !is_fish_name_empty
    #       fish_description = fish.css('p')[0].text  
      
    #       # fish_hash = {
    #       #   name: fish_name, 
    #       #   description:  fish_description
    #       #  }
    #       #  fish_list << fish_hash
    #        fish =  Fish.new(fish_name, fish_description)
    #       end
    #   end
      Fish.all.each.with_index(1) do | fish, i|
       # fish_id = fish_hash[:name]
        puts "#{i}. #{fish.name}"
        
      end
      menu
    end

      def menu
        puts "Please pick from this commonly caught fish list:"
      
        input = gets.chomp

       fish = Fish.all[input.to_i - 1]
       if quit
        exit
       elsif fish  
       puts "Here is some info: #{fish.description}"
       else
        puts "Invalid choice....please select again."  
      end
        menu
        
    end
  end
    
     
  



  #hash
  # key = fish name
  # value = string description


 




  # def get_fish_hash
  #   html = open ('http://www.eregulations.com/massachusetts/fishing/saltwater/commonly-caught-species/')
  #   doc = Nokogiri::HTML(html)
  #   items = doc.css(".Basic-Graphics-Frame")
  # end

  
