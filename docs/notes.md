# Basic Input/Output Methods

## Puts vs Print

- `puts` - adds a newline to the end of the string it prints out.
  - Provided the string doesn't end in one already.
  - Short for " put (that is, print) string"
- `print` - prints out the string you ask it to and then stops.
  - It doesn't automatically jump to the next line.

## Gets

- `gets` - Get a line of keyboard input
- Can assign the input line directly to a variable
  - Example: `string = gets`

## Rake Task

- `rake` - reads and executes tasks defined in a file (a Rakefile).
  - Example: `$ rake admin:clean_tmp`

# Ruby Identifiers

- `Variables`:
  - `Local`
    - Start with lowercase letter or an underscore
    - Consist of letters, underscores, and/or digits
    - Convention is snake case versus camal case
      - `first_name`
  - `Instance`
    - Serve the purpose of storing information for individual objects
    - Always start with `@`
      - `@first_name`
  - `Class`
    - Store information per class hierarchy
    - Start with `@@`
      - `@@class_variable`
  - `Global`
    - Start with `$`
      - `$population`
- `Contants`
  - Being with uppercase letter
  - Convention is to use camal case or all caps underscore separated
    - `FirstName` or `FIRST_NAME`
- `Keywords`
- `Method names`
  - Don't call attention to themselves
  - Blend into the texture of a program as an expression that provides a value

# Methods

## Arguments

_Common to say `Arguments` to distinguish between `Formal` and `Arguments`_

- Types:

  - Required
    ```ruby
    def m(a, b, c)
    ```
  - Optional
    ```ruby
    def m(*a)
    ```
  - Default-valued
    ```ruby
    def m(a = 1)
    ```

- `*` in front of a single argument means the method will allow any number args
- Can also supply default value for arguments
- Optional arguments (argument sponge) must occur in the middle
  - Argument sponge cannot be to the left of any default value

### Formal

- The variables listed in the method definition

### Arguments

- Values supplied to the method when it's called.

## Return Values

- `return value` is the result of calling a method
- Every method has a return value even if it's just `nil`

# Local Variables
- Have limited scope

# Colons

_For now, think of them as strings (will study more in Ch 8)_

- Elements starting with colons are symbols.

# Self

- Default object
- In the topmost level of a class definition body, `self` is the object itself
- There is always a `self` defined when program is running

# Double Colons

- Allows access to constant outside of class definition

# Or-Equals Operator

`||=`

- Conditionally sets a value
- Sets the variable to the specified value

# Classes

- Define clusters of behavior or functionality.
- Every object is an instance of exactly one class.
- Example:
  - `String` is a class.
  - Every time a string is created, it creates an instance of the class `String`
