require_relative 'stacklike' # require takes a string argument and loads disk files
class Stack # noun naming convention for classes
  include Stacklike # naming convention are adjectives for modules
end

s = Stack.new # new Stack obj
s.add_to_stack('item one')
s.add_to_stack('item two')
s.add_to_stack('item three')
puts 'Objects currently on the stack:'
puts s.stack
taken = s.take_from_stack
puts 'Removed this object:'
puts taken
puts 'Now on stack:'
puts s.stack
