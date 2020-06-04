# PHASE 2
def convert_to_int(str)
    begin
      num = Integer(str)
    rescue ArgumentError
    puts "Cannot convert to Integer. Please ensure you pass a valid numeric string"
    ensure
      num ||= 0
    end
    num
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"].freeze

class CoffeeError < StandardError
  def message
    puts "i've had too much coffee, need fruit. Please try again."
  end
end

class FruitError < StandardError
  def message
    puts "that isn't fruit."
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == 'coffee'
    raise CoffeeError
  else
    raise FruitError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue CoffeeError => e
    puts e.message
    retry
  rescue FruitError => e
    puts e.message
  end
end  

# PHASE 4

class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    raise ArgumentError.new("name cannot be blank") if name.empty?

    @yrs_known = yrs_known.to_i
    raise ArgumentError.new("can't be best friends yet") if yrs_known.to_i < 5

    @fav_pastime = fav_pastime
    raise ArgumentError.new("fave pasttime cannot be blank") if fav_pastime.empty?
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end