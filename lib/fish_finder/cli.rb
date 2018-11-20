require 'pry'
class Cli
  
  def run
    fish_list = []
    puts "Did you catch a fish off the coast of New England? What type do you think? Please pick from this commonly caught list..."
    #1 greet user and explain 
    html = open ('http://www.eregulations.com/massachusetts/fishing/saltwater/commonly-caught-species/')
     doc = Nokogiri::HTML(html)



      doc.css(".Basic-Graphics-Frame").text.strip
      #makes a string- 
        list_objs = doc.css('h3').text.split
        #parse string to make a more exact list
        
        #fish_list << list_objs
          
        list_objs.each.with_index do |fish, i|
            puts "#{i}. #{fish}"
           end
     #fish_name = doc.css(".Basic-Graphic-Frame").text 
    

  end
  
end