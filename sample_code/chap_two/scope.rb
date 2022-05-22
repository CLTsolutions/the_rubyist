def say_goodbye
  x = 'Goodbye'
  puts x
end

def start_here
  x = 'Hello'
  puts x
  say_goodbye
  puts "Let's check whether x remained the same."
  puts x
end

start_here

# str = 'Hello'
# abc = str
# puts abc

str = 'Hello'
abc = str
str.replace('Goodbye')
puts str
puts abc
def say_goodbye2
  str = 'Hello'
  abc = str
  str.replace('Goodbye')
  puts str
  puts abc
end

say_goodbye2

def change_string(str)
  str.replace('New string content!')
end

s = 'Original string content!'
change_string(s)
puts s # 'New string content!'

# To prevent object from being changes, can use dup or freeze
# s = 'Original string content!'
# s.freeze
# change_string(s)
