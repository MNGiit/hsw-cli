class CommandLineInterface
  
  attr_accessor :scraped
  
  def initialize
    Scraper.create_articles_from_carousel
  end

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
  
  def greetings
    puts "Greetings! Below are articles currently featured on howstuffworks.com!"
    puts ""
  end
  
  def print_articles
    count = 1
    
    Articles.all.each do |article|
      puts count
      puts article.title
      number = article.title.length
      title_line = ""
      number.times {title_line += "-"}
      puts title_line
      #binding.pry
      puts article.blurb
      puts ""
      count+=1
    end
  end

  def get_user_input
    gets.strip
  end
  
  def convert_to_i(input)
    input.to_i
  end
  
  def print_selected_article(input)
    Scraper.add_content_to_article(Articles.all[input-1]) if Articles.all[input-1].content == nil
    puts Articles.all[input-1].content
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

end