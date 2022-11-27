# Methods

In Ruby much like mathematical functions: input goes in, the wheels turn, and a result comes out. To feed input to a Ruby method, call the method with one or more args.

## Parameters

> The variables listed in the method definition (_formal parameters_)

## Arguments

> Values supplied to the method when it's called.

Common to say `Arguments` to distinguish between `Parameters` and `Arguments`

### Argument Types

#### Required

When calling method, must supply correct number of arguments.

```ruby
def m(a, b, c)

m(1, 2, 3) # a= 1, b = 2, c = 3
```

#### Optional

It's possible to write method allowing any number of args.\
To do this, put an asterisk in front of a single argument name.

```ruby
def m(*a)

m(1, 2, 3) # a = [1, 2, 3]
```

#### Default-valued

If an argument isn't supplied, the variable corresponding to the argument receives the default value.

```ruby
def default_args(a, b, c = 1)
  puts 'Values of variables: ', a, b, c
end

default_args(3, 2)
# Values of variables:
# 3
# 2
# 1

default_args(4, 5, 6)
# Values of variables:
# 4
# 5
# 6
```

- `*` in front of a single argument means the method will allow any number args
- Can also supply default value for arguments
- Optional arguments (argument sponge) must occur in the middle
  - Argument sponge cannot be to the left of any default value

##### Example

```ruby
def obj.multi_args(*x)
  puts 'I can take zero or more arguments!'
end
```

The `*x` notation means that when you call the method, you can supply any number of args.

#### Mixing Argument Types

```ruby
def two_or_more(a, b, *c)
  puts 'I require two or more arguments!'
  puts 'And, sure enough, I got: '
  p a, b, c
end

two_or_more(1, 2, 3, 4, 5)

# I require two or more arguments!
# And, sure enough, I got
# 1
# 2
# [3, 4, 5]
```

#### Mixing different elements

```ruby
def mixed_args(a, b, *c, d)
  puts 'Arguments:'
  p a, b, c, d
end

mixed_args(1, 2, 3, 4, 5)
# Arguments:
# 1
# 2
# [3, 4]
# 5
```

## Return Values

Ruby code is made up of expressions, each of which evaluates to a particular value. Every method call is an expression. When you call a method, the call evaluates to something (the method's _return value_).

- `return` keyword makes return values explicit
- `return value` is the result of calling a method
- Every method has a return value even if it's just `nil`
