# Classes

_See [reference file](/sample_code/chap_three/ticket.rb)._

A way to group behaviors (methods) into convenient bundles.
This allows for quickly creating many objects behaving essentially the same way.

- Define clusters of behavior or functionality.
- Every object is an instance of exactly one class.
- Named with constants

## Example

`String` is a class. Every time a string is created,
it creates an instance of the class `String`

## Instantiation

Classes exist for the purpose of launching the object into existence (_Instantiation_).
That is, of having objects created that are instances of the class.

_Reference instance methods [here](/docs/methods.md)._

```ruby
obj = Object.new
```

`new` method is a constructor (a method whose purpose is to manufacture
and return a new instance of the class).

## As Objects

Classes are special objects.
They're the only kind of objects with the power to spawn new objects (instances).

### Creating Class Objects

```ruby
class Ticket
 # your code here
end
```

and

```ruby
my_class = Class.new
```

## Calling Methods

To understand where classes get their methods,
think about where objects get their methods:

1. From their class
2. From the superclass and earlier ancestors of their class
3. From their own store of singleton methods

### Class vs Instance Methods

_See also [class methods](/docs/method_types.md#singleton-class-method)
and [instance methods](/docs/method_types.md#instance)._

A class object has its own methods, state, and identity.
**It doesn't share these things with instances of itself.**

## Constants

Used to preserve important data values in classes.

A constant defined in a class can be referred to from
inside the class's instance or class methods.
