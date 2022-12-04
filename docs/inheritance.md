# Inheritance

A downward-chaining relationship between two classes
(a superclass and subclass). One class "inherits" from another,
and the instances of the subclass acquire behaviors
defined in the methods of the superclass.

_See [inheritance](/sample_code/chap_three/inheritance.rb)._

```ruby
class Publication
  attr_accessor :publisher
end
class Magazine < Publication # Magazine is a subclass of Publication
  attr_accessor :editor # Magazine inherits 'publisher' from Publication
end

mag = Magazine.new
mag.publisher = 'David A. Black'
mag.editor = 'Joe Smith'
puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}."
# Mag is published by David A. Black, and edited by Joe Smith.
```

## Single Inheritance

A convenient way to get two or more classes to share method definitions.

Every class can have only one super class.
However, this does not mean it's restrictive
because Ruby provides [modules](/docs/modules.md).

Standard Technique for creating a generic object.
Object class is at the top of the inheritance chart.
_See this [reference](/sample_code/chap_three/inheritance.rb)_.

```ruby
object = Object.new
```
