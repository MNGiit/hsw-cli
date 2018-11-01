class Scraper
  
  BASE_URL = "https://www.howstuffworks.com/"

  def self.hsw
    Nokogiri::HTML(open(BASE_URL))
  end
  
  def self.create_articles_from_carousel
    amount = self.hsw.css(".carousel-item").length
    doc = self.hsw
    amount.times do |i|
      title = doc.css(".carousel-item")[i].css("h3").text
      link = doc.css(".carousel-item")[i].css("a").attribute('href').value #this way works, use .each to get all of them
      blurb = doc.css(".carousel-item")[i].css(".d-none").text
      Articles.new(title, blurb, link)
    end
    
  end
  
  def self.go_to(address = "https://health.howstuffworks.com/mental-health/sleep/disorders/why-people-fall-asleep-movie-theaters.htm")
    Nokogiri::HTML(open(address))
  end
  
  def self.add_content_to_article(article)
      doc = self.go_to(article.url)
      article.content = doc.css(".infinite-item").css("p").text
  end

end