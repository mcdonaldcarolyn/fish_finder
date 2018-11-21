class Scraper

  def self.scrape_rt
    html = open ('http://www.eregulations.com/massachusetts/fishing/saltwater/commonly-caught-species/')
    doc = Nokogiri::HTML(html)
     #makes a string in an array

      list_objs = doc.css('.Basic-Graphics-Frame')
      list_objs.each.with_index do |fish, i| 
        fish_name = fish.css('h3').text
        is_fish_name_empty = fish_name.to_s.empty?
        if !is_fish_name_empty
          fish_description = fish.css('p')[0].text  
      
          # fish_hash = {
          #   name: fish_name, 
          #   description:  fish_description
          #  }
          #  fish_list << fish_hash
           fish =  Fish.new(fish_name, fish_description)
          end
      end
    end
    def self.scrape_fish_descrip(name)
      
    
    end

  end