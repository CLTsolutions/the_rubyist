# ticket object should be able to provide data about itself

# When asked it should provide the following info about itself:
# '01/02/03'
# 'Town Hall'
# 'Author's reading'
# 'Mark Twain'
# 'Second Balcony, row J, seat 12'
# 5.50

ticket = Object.new # generic obj

def ticket.date
  '01/02/03'
end

def ticket.venue
  'Town Hall'
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  'Mark Twain'
end

def ticket.seat
  'Second Balcony, row J, seat 12'
end

def ticket.price
  5.50
end

# print 'This ticket is for: '
# print ticket.event + ', at '
# print ticket.venue + ', on '
# puts ticket.date + '.'
# print 'The performer is '
# puts ticket.performer + '.'
# print 'The seat is '
# print ticket.seat + ', '
# print 'and it costs $'
# puts '%.2f.' % ticket.price

# Less wordy than above using string interpolation and concatenation
puts "This ticket is for: #{ticket.event}, at #{ticket.venue}." \
     "The performer is #{ticket.performer}." \
     "The seat is #{ticket.seat}, " \
     "and it costs $#{'%.2f.' % ticket.price}"

# Is a ticket sold or not? Could write below
# def ticket.availability_status
#   'sold'
# end

# asking ticket object if its available
def ticket.available?
  false
end

if ticket.available?
  puts "You're in luck!"
else
  puts 'Sorry--that seat has been sold.'
end

print 'Information desired: '
request = gets.chomp
if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts 'No such information available'
end
