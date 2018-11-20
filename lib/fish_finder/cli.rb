class Cli
  
  def run
    puts "Welcome to New England Fish Id"

    html = open ('http://www.eregulations.com/massachusetts/fishing/saltwater/commonly-caught-species/')
     doc = Nokogiri::HTML(html)
     fish_name = doc.css(".Basic-Graphic-Frame").text 
     binding.pry

  end
  
end