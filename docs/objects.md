# Objects

[Basic Object Reference File](/sample_code/chap_two/object.rb)

_The knowledge necessary for the program to do anything useful resides in the object._

## Intro

_The whole universe of a Ruby program consist of objects and the messages that are sent to them._

- The bulk of the design, logic, and action revolves around objects
- They are often handled via __variables__ that represent them.
- Every object is an example or __instance__ of a particular class
- The behavior of individual objects is determined at least to some extent
  by the __method definitions__ present in the object's class

### Ruby Objects

Ruby differs from other OOP languages because the real action is with individual objects.
Every object has the potential to "learn" behaviors (methods its class didn't teach it).

When writing Ruby, main activity is:

  1. Creating objects
  2. Endowing those objects with abilities
  3. Asking objects to perform actions

## Messages

- You send objects messages
  - Most correspond to names of methods that you're asking the object to execute
- An object responds to a message if the object has a method defined whose name corresponds to the message.

## Methods

- Methods get knowledge from objects
- Specifies what you want object to be able to do

Objects are "born" with certain innate abilities (use code below to see available methods)

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

If you dup a frozen object, the clone isn't frozen.

```ruby
s = 'Original string content!'
change_string(s.dup)
puts s # Original string content!'
```

### Freezing

Prevents object from undergoing any further change.

If you clone a frozen object, the clone is frozen.

```ruby
s = 'Original string content!'
s.freeze
change_string(s) # RuntimeError: can't modify frozen string
```
