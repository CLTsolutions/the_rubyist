# Instance Variables

Enables objects to remember state.

## Differences

Work much like other variables with a few key differences.

1. Start with `@`.
2. Only visible to object in which they belong (`self`).
3. If initialized in one method inside a class,
  it can be used by any method on the class.
4. Their survival across method calls makes them suitable
  for maintaining state in the object.
