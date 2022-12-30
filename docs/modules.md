# Modules

Bundles of programming functionality like methods and constants similar to classes;
however, they don't have instances.
They can easily be grafted onto a class to
provide as many methods for objects as needed.

## Important Notes

- Encourage modular design by breaking larger components into smaller ones.
  - This lets you mix and match object behaviors.
- Bundles of methods and constants.
- Modules are a more basic structure, and classes are just a specialization.

## Naming Convention

Classes use nouns and modules use adjectives for their names.

## Stacklikeness

A stack is a data structure that operates on the LIFO (last in first out) principle.

## Creation and Use

By mixing in modules, instances of the class will then have access to the
instance methods defined in the module.
Unlike class inheritance, which only allows inheritance of one class,
multiple modules can be mixed into a class.

### Mix In

Modules get "mixed in" using keywords `include` or `prepend`.

### Lookup Path

If two modules shared the same method,
the look up path will find the method in the most recently mixed in module.
If a module is added to the class using `prepend`,
the object looks in that module first before it looks at the class.

#### The rules of method lookup

1. Modules prepended to its class in reverse order of prepending
2. Its class
3. Modules included in its class in reverse order of inclusion
4. Modules prepended to its superclass
5. Its class's superclass
6. Modules included in its superclass
7. Likewise, up to `Object` (and its mix-in `Kernel`) and `BasicObject`.

### Super

_See the friend example [here](/sample_code/chap_four/modules.rb)._

`super` is a specialized but useful and common technique
for navigating the lookup path explicitly.

#### Handling Arguments

1. `super` called with no arguments will automatically forward the arguments
that were passed to the method from which it was called.
2. `super()` called with an empty argument list sends no arguments to
the higher-up method, even if arguments were passed to the current method.
3. `super(a, b, c)` called with specific arguments sends exactly those arguments.
