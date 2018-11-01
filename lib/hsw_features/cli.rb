class CommandLineInterface
  
  attr_accessor :scraped
  
  def initialize
    Scraper.create_articles_from_carousel
  end
  
  def greetings
    puts "Greetings! Below are articles currently featured on howstuffworks.com!"
    puts ""
  end
  
  def print_articles
    count = 1
    
    Articles.all.each do |article|
      puts count
      puts article.title
      puts article.blurb
      puts ""
      count+=1
    end
  end

  #def scrape_for_featured_articles
  #  @scraped = Scraper.new
  #end
  
  #def scrape_selected_article(selected)
  #  Scraper.add_content_to_article(selected) if selected.content == nil
  #end
  
  #def ask_user_to_pick_article
  #  "Please enter a number between 1 to 5."
  #end
  
  def get_user_input
    gets.strip
  end
  
  def convert_to_i(input)
    input.to_i
  end
  
  def print_selected_article(input)
    Scraper.add_content_to_article(Articles.all[input-1]) if Articles.all[input-1].content == nil
    puts Articles.all[input-1].content
    #puts scrape_selected_article(Articles.all[input-1])
  end
  
  def valid_input?(input)
    input.between?(1, 5)
  end
  
  def validating_loop(input)
    valid_input?(input) == true ? print_selected_article(input) : pick_article
  end
  
  def pick_article
    puts ""
    puts "Please enter a number between 1 to 5."
    user_input = get_user_input
    input = convert_to_i(user_input)
    validating_loop(input)
  end

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
  
  def run
    continue = true
    greetings
    while continue == true
      print_articles
      pick_article
      puts ""
      puts "Want to read another article? Enter 1 to see the list again. Enter anything else to quit."
      number = convert_to_i(get_user_input)
      continue = false if number != 1
    end
  end
  
end