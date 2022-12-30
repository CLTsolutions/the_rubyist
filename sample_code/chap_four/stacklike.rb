module Stacklike
  def stack
    @stack ||= [] # array preserved in instance variable
  end

  def add_to_stack(obj)
    stack.push(obj)
  end

  def take_from_stack
    stack.pop
  end
end
