require "active_support/all"

class Coffee
  attr_accessor :name, :type, :number
  def initialize
    @name = name
    @type = type
    @number = number
  end
  
  def order
    loop do
      puts "This is a simple coffee shop, how can I help you today?"
      puts "1. I'd like to order a cup of coffee"
      puts "2. Can I get a recommendation?"
      puts "3. I'm good, goodbye~ EXIT coffee shop"
      puts "Choose an option:"
      option = gets.chomp.to_i
      case option
      when 1
        place_order
      when 2
        help
      when 3
        puts "Ok, goodbye and have a nice day!"
        break
      else
       puts "Please pick an option listed"
      end
    end
  end
  
  def place_order

    puts "How would you like your coffee? Iced or hot?"
    puts "1. Hot coffee please"
    puts "2. Iced coffee please"
    puts "Please choose an option:"
    puts "\n"
    option = gets.chomp.to_i
    case option
    when 1
      puts "A hot coffee will be $2.00"
      order_number
    when 2
      puts "A iced coffee will be $2.00"
      order_number
    else 
      puts "Please choose hot or iced"
      place_order
    end
  end

  def order_number
    puts "How many orders of coffee would you like?"
    self.number = gets.chomp
    puts "\n"
    puts "You would like to order #{@number}"
    puts "\n"
    cost
  end

  def cost(a, b)
    coffee = 2.0
    a = coffee.to_i
    b = number.to_i
    total = a * b
    puts "\n"
    puts "Your order will cost you $#{total} dollars"
    puts "\n"
    name_order
  end

  def name_order
   
    puts "May I have a name for the order?"
    self.name = gets.chomp.capitalize
    puts "\n"
    puts "Order for #{@name} is ready!"
    puts "Please enjoy your coffee~"
    puts "\n"
  end



  def help
    recommendation = ["hot coffee", "iced coffee"]
    puts "\n"
    puts "I recommend a nice #{recommendation.sample}"
    puts "\n"
    order
  end 

end
