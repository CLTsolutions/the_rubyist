# Basic Input/Output Methods

## Puts vs Print

- `puts`
  - Adds a newline to the end of the string it prints out.
  - Provided the string doesn't end in one already.
  - Short for " put (that is, print) string"
- `print`
  - Prints out the string you ask it to and then stops.
  - Doesn't automatically jump to the next line.

## Gets

- `gets`
  - Get a line of keyboard input
  - Can assign the input line directly to a variable
  - Example:
    > `string = gets`

## Rake Task

- `rake`
  - Reads and executes tasks defined in a file (a Rakefile).
  - Example:
    > `$ rake admin:clean_tmp`
