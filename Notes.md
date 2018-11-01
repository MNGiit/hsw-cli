  #from scraper.rb
  #def print_articles_from_carousel
  #  amount = @doc.css(".carousel-item").length
  #  
  #  amount.times do |i|
  #    puts i+1
  #    puts doc.css(".carousel-item")[i].css("h3").text
  #    puts doc.css(".carousel-item")[i].css("a").attribute('href').value #this way works, use .each to get all of them
  #    puts doc.css(".carousel-item")[i].css(".d-none").text
  #    puts ""
  #  end
  #end
  
    #def show
  #  Articles.all
  #end
  
  #below are old methods
  #def search
  #  hsw.css("#module-features").css("div")
  #end
  
  #def titles
    #doc.css(".carousel-item")[0].css("h3").text
    
    #@doc.css(".carousel-item").css("h3").map {|item| item.text}
    
    #@doc.css(".carousel-item")[0]
    
    #code below is either outdated due to site change or needs another method
    #@doc.css(".title").text #returns all the titles jumbled together
    #@doc.css(".title").map { |item| item.text} #returns an array of titles
    
    #needs instance method search
    #search.css(".title").map { |item| item.text} #uses instance method "search"
  #end
  
  #def blurbs
  #  search.css(".blurb").map { |item| item.text}
  #end
  
  #def get_urls
    #x.doc.css(".carousel-item")[0].css("a").attribute('href').value #this way works, use .each to get all of them
    
    #x.doc.css(".carousel-item").css("a").text #this way also gets titles of articles
    #x.doc.css(".carousel-item").css("a").map { |item| item.attribute('href').value} #gets a lot of links
    #x.doc.css(".carousel-inner").map {|item| item.css(".carousel-item").text} #doesn't put them in an array
    
    #code below is either outdated due to site change or needs another method to work
    #hsw.css("#module-features").css("a").map { |item| item.attribute('href').value }
  #end
  
  #def url_duplicate_remover
  #  get_urls.uniq
  #end
  
  #def add_urls
  #  url_duplicate_remover.reject.with_index { |element, index| index >=1 && index <= 2 }
  #end
  
      #just add content line 58, 59
  #def self.add_content_to_article(article)
    #if article.content == nil
    #  puts "Downloading article, please wait."
    #  puts ""
      #doc = self.go_to(article.url)
      #article.content = doc.css(".infinite-item").css("p").text
    #else
    #  puts "Article was downloaded before."
    #  puts ""
    #  article.content
    #end
  #end
  
  
  ########################################################
  ########################################################
  #from cli.rb
    #def scrape_for_featured_articles
  #  @scraped = Scraper.new
  #end
  
  #def scrape_selected_article(selected)
  #  Scraper.add_content_to_article(selected) if selected.content == nil
  #end
  
  #def ask_user_to_pick_article
  #  "Please enter a number between 1 to 5."
  #end
  
    #def ask_user_read_another
  #  puts ""
  #  puts "Want to read another article? Enter 1 to see the list again. Enter anything else to quit."
  #end
  
  #def pick_another_article?
  #  puts ""
  #  puts "Want to read another article? Enter 1 to see the list again. Enter anything else to quit."
  #  number = convert_to_i(get_user_input)
  #  print_articles if number == 1
  #  pick_article if number == 1
  #end
  
    #def print_selected_article(input)
    #Scraper.add_content_to_article(Articles.all[input-1]) if Articles.all[input-1].content == nil
    #puts Articles.all[input-1].content
    #puts scrape_selected_article(Articles.all[input-1])
  #end