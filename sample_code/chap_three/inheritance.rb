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

class Ezine < Magazine
end

class Person
  def species
    'Homo sapiens'
  end
end

class Rubyist < Person
end

david = Rubyist.new
puts david.species

obj = Object.new

class C
end

class D < C
end
puts D.superclass
puts D.superclass.superclass
