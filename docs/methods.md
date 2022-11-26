# Methods

In Ruby much like mathematical functions: input goes in, the wheels turn, and a result comes out. To feed input to a Ruby method, call the method with one or more args.

## Parameters

> The variables listed in the method definition (_formal parameters_)

## Arguments

> Values supplied to the method when it's called.

Common to say `Arguments` to distinguish between `Parameters` and `Arguments`

### Argument Types

#### Required

```ruby
def m(a, b, c)
```

#### Optional

```ruby
def m(*a)
```

#### Default-valued

```ruby
def m(a = 1)
```

- `*` in front of a single argument means the method will allow any number args
- Can also supply default value for arguments
- Optional arguments (argument sponge) must occur in the middle
  - Argument sponge cannot be to the left of any default value

## Return Values

Ruby code is made up of expressions, each of which evaluates to a particular value. Every method call is an expression. When you call a method, the call evaluates to something (the method's _return value_).

- `return` keyword makes return values explicit
- `return value` is the result of calling a method
- Every method has a return value even if it's just `nil`
