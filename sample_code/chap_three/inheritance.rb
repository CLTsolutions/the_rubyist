class Publication
  attr_accessor :publisher
end
class Magazine < Publication
  attr_accessor :editor
end

mag = Magazine.new
mag.publisher = 'David A. Black'
mag.editor = 'Joe Smith'
puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}."
# Mag is published by David A. Black, and edited by Joe Smith.

class Ezine < Magazine # has both 'publisher' and 'editor' attributes
end

class Person
  def species
    'Homo sapiens'
  end
end

class Rubyist < Person
end

david = Rubyist.new
puts david.species # Homo sapiens

class C
end

class D < C
end
puts D.superclass # C
puts D.superclass.superclass # Object
