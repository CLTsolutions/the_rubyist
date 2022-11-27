obj = Object.new # created obj and want it to talk

# Must first tell it how to talk.
# Do this by defining method (below)

# 'obj' is object which method belongs
# 'talk' is method name
def obj.talk
  # both puts are method body
  puts 'I am an object.'
  puts '(Do you object?)'
end

# obj knows how to talk (defined above)
# Ask obj to talk (below)
obj.talk

# The object understands and responds to the message 'talk'
