# class Ticket
#   def event
#     "Can't really be specified yet..."
#   end
# end

# ticket = Ticket.new
# puts ticket.event # Can't really be specified yet..
#
# class C
#   def m
#     puts 'First definition of method m'
#   end
#
#   def m
#     puts 'Second definition of method m'
#   end
# end
#
# C.new.m
#
# puts Time.new.strftime('%m-%d-%y')
#
# ticket = Object.new
# def ticket.price
#   117.50
# end

# ===========================
# EXAMPLE WITH GETTER METHODS
# ===========================
# class Ticket
#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end

#   # getters to return instance variables
#   def venue
#     @venue
#   end

#   def date
#     @date
#   end
# end

# th = Ticket.new('Town Hall', '11/12/13')
# cc = Ticket.new('Convention Center', '12/13/14')
# fg = Ticket.new('Fairgrounds', '13/14/15')
# puts "We've created two tickets." # We've created two tickets.
# puts "The first is for a #{th.venue} event on #{th.date}." # The first is for a Town Hall event on 11/12/13.
# puts "The second is for an event on #{cc.date} at #{cc.venue}." # The second is for an event on 12/13/14 at Convention Center.

# ===========================
# EXAMPLE WITH SETTER METHODS
# ===========================
# class Ticket
#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end

#   # setter method
#   def set_price(amount)
#     @price = amount
#   end

#   def price
#     @price
#   end
# end

# ticket = Ticket.new('Town Hall', '11/12/13')
# ticket.set_price(63.00)
# puts "The ticket costs $#{"%.2f" % ticket.price}." # format price to two decimal places using Ruby's sprintf
# ticket.set_price(72.50)
# puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."

# class Ticket
#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end

#   def price=(amount) # adding intelligence to method to ensure data correctness
#     if (amount * 100).to_i == amount * 100
#       @price = amount
#     else
#       puts 'The price seems malformed.'
#     end
#   end
# end

# =======================
# EXAMPLE WITH ATTRIBUTES
# =======================
# class Ticket
#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end

#   # setter method
#   def price=(price)
#     @price = price # read/write
#   end

#   # getters to return instance variables
#   def venue
#     @venue
#   end

#   def date
#     @date
#   end

#   def price
#     @price
#   end
# end

# #
# class Ticket
#   attr_reader :venue, :date, :price

#   attr_writer :price

#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end
# end

class Ticket
  attr_reader :venue, :date
  attr_accessor :price # both a reader/writer method

  # attr :price, true

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end

# ================
# SINGLETON METHOD
# ================
# # goes to class Ticket, not to a particular ticket (instance)
# def Ticket.most_expensive(*tickets)
#   tickets.max_by(&:price)
# end

# th = Ticket.new('Town Hall', '11/12/13')
# cc = Ticket.new('Convention Center', '12/13/14')
# fg = Ticket.new('Fairgrounds', '13/14/15')
# th.price = 12.55
# cc.price = 10.00
# fg.price = 18.00
# highest = Ticket.most_expensive(th, cc, fg)
# puts "The highest-priced ticket is the one for #{highest.venue}."
# # The highest-priced ticket is the one for Fairgrounds.

# =========
# CONSTANTS
# =========
class Ticket
  VENUES = ['Convention Center', 'Fairgrounds', 'Town Hall']

  # Can access constant inside class's instance or methods
  # def initialize
  #   if VENUES.include?(venue)
  #     @venue = venue
  #   else
  #     raise ArgumentError, "Unkown venue #{venue}"
  #   end
  # end
end

puts "We've closed the class definition."
puts 'So we have to use the path notation to reach the constant.'
puts 'The venues are:'
puts Ticket::VENUES # Double colon allows access to the constant outside class definition

venues = Ticket::VENUES # Convention Center, Fairgrounds, Town Hall
venues << 'High School Gym'
puts Ticket::VENUES # Convention Center, Fairgrounds, Town Hall, High School Gym
