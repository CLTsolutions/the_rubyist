# Method Types

## Initialize

Executes every time a new instance of the class is created.

## Instance

Defined inside a class and intended for use by all instances of the class
(and by any instances of any subclass of the class).

## Setter

Allow for changing object's state.

Use setter method with an argument and set the appropriate
instance variable to that argument.

```ruby
def price(amount)
  @price = amount
end
```

### Syntactic Sugar

#### For calling setter methods

Instead of `ticket.price=(63.00)` can do `ticket.price = 63.00`.

Intent is  is to allow you to write method calls that look like assignments.

Whole thing is method call:\
`ticket` is receiver.\
`price=` is method.\
`63.00` is single argument

## Singleton (Class Method)

_See [reference](/sample_code/chap_three/ticket.rb)._

Defined for one particular object.
Commonly known as a _Class Method_ of the class on which it's defined.

Idea is you send a message to the object that's the class
rather than to one of the class's instances.

```ruby
def ticket.price
```

### Purpose

Some operations pertaining to a class can't be performed
by individual instances of that class (like the `new` method)

```ruby
Ticket.new
```

## Overriding Methods

Usually used when inheriting from a class ([_inheritance_](/docs/inheritance.md)).

When overriding a method, the new version takes precedence.

```ruby
class C
  def m
    puts 'First definition of method m'
  end

  def m
    puts 'Second definition of method m'
  end
end

C.new.m # Second definition of method m
```
