# Ruby Identifiers

## Variables

_Often described as labels or names for objects._

### Local

`first_name`

- Have limited scope
- Start with lowercase letter or an underscore
- Consist of letters, underscores, and/or digits
- Convention is snake case versus camel case
- Come into being through:
  1. Explicit Assignment
  2. Binding of method args to method parameters

### Instance

`@first_name`

- Serve the purpose of storing information for individual objects
- Used to memoize data returned from method
- Always start with `@`

### Class

`@@class_variable`

- Store information per class hierarchy
- Follow same rules as instance variables
- Start with `@@`

### Global

`$population`

- Start with `$`

### Constants

`FirstName` or `FIRST_NAME`

- Begin with uppercase letter
- Convention is to use camel case or all caps underscore separated

### Reference

Variables in Ruby don't hold object values. They contain references to objects.
They have a many-to-one relationship with their objects.

```ruby
str = 'Hello'
abc = str
```

`str` doesn't contain `'Hello'`. `str` contains a reference to `'Hello'`.

The variable on the left (`abc`) receives a copy of the reference stored in the variable on the right (`str`).
Both variables now reference the same object.

#### Reassignment

```ruby
str = 'Hello'
abc = str
str = 'Goodbye'
puts str # 'Goodbye'
puts abc # 'Hello'
```

Second assignment to `str` gives `str` a reference to a different string object.
`str` and `abc` part company at that point.
`abc` still refers to the old string (the one whose contents are `'Hello'`),
but `str` now refers to a different string (a string whose contents are `'Goodbye'`).

_See page 57 for dog ('Fido' and 'Rover') example._

## Keywords

`def`, `class`, `if`, `_FILE_`

- Predefined, reserved terms associated with specific programming tasks and context.

## Method names

- Don't call attention to themselves
- Blend into the texture of a program as an expression that provides a value
