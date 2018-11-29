class Scraper

  def self.scrape_rt
    html = open ('http://www.eregulations.com/massachusetts/fishing/saltwater/commonly-caught-species/')
    doc = Nokogiri::HTML(html)
    #makes a string in an array

    list_objs = doc.css('.Basic-Graphics-Frame')
      #scrapes site further
    list_objs.each.with_index do |fish, i| 
      fish_name = fish.css('h3').text
        #grabs just the fish name
      is_fish_name_empty = fish_name.to_s.empty?
        #within the code there is few without descriptions  
      if !is_fish_name_empty
          fish_description = fish.css('p')[0].text  
        Fish.new(fish_name, fish_description)
        end
      end
    end
end