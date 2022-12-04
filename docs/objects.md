# Objects

[Basic Object Reference File](/sample_code/chap_two/object.rb)

_The knowledge necessary for the program to do anything useful resides in the object._

## Intro

_The whole universe of a Ruby program consist of objects
and the messages that are sent to them._

- The bulk of the design, logic, and action revolves around objects
- They are often handled via **variables** that represent them.
- Every object is an example or **instance** of a particular class
- The behavior of individual objects is determined at least to some extent
  by the **method definitions** present in the object's class

### Ruby Objects

Ruby differs from other OOP languages
because the real action is with individual objects.
Every object has the potential to "learn" behaviors
(methods its class didn't teach it).

When writing Ruby, main activity is:

1. Creating objects
2. Endowing those objects with abilities
3. Asking objects to perform actions

## Messages

- You send objects messages
  - Most correspond to names of methods that you're asking the object to execute
- An object responds to a message if the object has a method defined
  whose name corresponds to the message.

## Methods

- Methods get knowledge from objects
- Specifies what you want object to be able to do

Objects are "born" with certain innate abilities
(use code below to see available methods)

```ruby
p Object.new.methods.sort
```

## Duping and Freezing

Protects objects from being changed inside the methods where they are sent.

```ruby
def change_string(str)
  str.replace('New string content!')
end
```

### Duping

Duplicates an object

_If you dup a frozen object, the clone isn't frozen._

```ruby
s = 'Original string content!'
change_string(s.dup)
puts s # Original string content!'
```

### Freezing

Prevents object from undergoing any further change.

_If you clone a frozen object, the clone is frozen._

```ruby
s = 'Original string content!'
s.freeze
change_string(s) # RuntimeError: can't modify frozen string
```

## State

_See this [reference](/sample_code/chap_three/ticket.rb)._

Information and data associated with a particular object.

Set by the [initialize method](/docs/method_types.md#initialize).

Retrieved by [instance variables](/docs/instance_variables.md).

```ruby
def initialize(venue, date)
  @venue = venue
  @date = date
end
```

## Properties

### Attributes

_See table on page 77._

Property of object whose value can be read and/or written through the object.

Read/write terminology is equivalent to set/get terminology.

Attributes are implemented as reader and/or writer methods
wrapped around instance variables.
Or, if preferred, instance variables wrapped up in reader and/or writer methods.

#### Reader

The getters

Example below consolidates getters from [this example](/sample_code/chap_three/ticket.rb).

```ruby
class Ticket
  attr_reader :venue, :date, :price
end
```

#### Writer

The setters

Example below found in [this class](/sample_code/chap_three/ticket.rb).

```ruby
class Ticket
  attr_writer : price
end
```

#### Accessor

Combines reader/writer attributes and takes multiple accessor names.

```ruby
class Ticket
  attr_reader :venue, :date, :price

  attr_writer :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end
```

becomes

```ruby
class Ticket
  attr_reader :venue, :date
  attr_accessor :price # both a reader/writer method
  # ...etc
end
```

#### Plain `attr`

Can achieve `attr_accessor` functionality with plain `attr` method.
However, it must have a second argument as `true`
or it will just have the `reader` attribute.

```ruby
class Ticket
  attr_reader :venue, :date

  attr :price, true

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end
```
