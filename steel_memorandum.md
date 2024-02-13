## Quote

Quote a list tells Scheme to treat a parenthesized form as a list in stead of procedure applications.
Quote a identifier (*i.e.* a keyword, a symbol, a variable) tells Scheme to treat it as a symbol (like in a algebraic
equation) rather than a variable (like in a mathematical expression).

## Symbols
Scheme share a notation between application (procedure args ...) and variables (obj1 obj2 ...).
It allows Scheme programs to be represented as Scheme data.

## Procedures

1. Predicates: suffixed with `?` and return a boolean constant.
2. Procedures causing a side-effect are suffixed with a `!`.
3. Procedures applications: a procedure which applies to a set of arguments.

### Lexikon

- Binding occurence: declaration.
- Environment: lexical context.
- Consing: adding an element at the beginning of a list.
- List: a sequence of pairs. Each pair's cdr is the next pair in the sequence.
- Constant object: the object itself is the value.
- Scope: region where a variable binding is visible.

### Notation

- A Dotted-pair notation (*i.e.* improper list, *viz* a pair whose cdr is not a list) is a external representation;
not a expression which evaluates to a pair.
- `Define` procedure expects either an identifier or a list composed of a function name and its arguments.

## Built-in data types

1. Immutable types: hashset, hashmap, list, vector
2. Mutable types: string, stream, struct.

## Evaluation

1. Find the procedure's value
2. Find the arg 1's value
3. Find the arg n's value
4. Apply the procedure's value to arguments' value.

### Let expressions and variables

(let ([var expr] ...) body ...) Useful to simplify an expression that would contain two identical or more 
subexpressions and avoid computing that common subexpression more than one.


##################### personal inquiry
I face some difficulties to grasp the let expression. Please how could I re-use it to (for example), display its object's evaluation?
e.g.:

(let ([a 4] [b -3]) (* a a) (* b b))


I understand that each form of the body (or bodies) are executed then the last form is evaluated. 
Therefore, the compiler evaluates this last parenthesized form to its external representation which is composed of the byte corresponding to a constant number object 9.

But my question is: how can I retrieve this value to communicate with external word and pipe it into the standard output?
The REPL actually performs this underlying work by printing the object to the terminal stdout: => 9

But what about when written out in a source file?
Running steel <myfile.scm> outputs no thing and I am pretty sure than adding the whole expression as an object to be applied to displayln procedure is as silly as it is clumsy:

(displayln (let ([a 4] [b -3]) (* a a) (* b b)))


Besides, a let expression has no name to refer to it later, without mentioning (I mention it anyway 🙂 ) that it is no longer visible in its parent scope.

Do I misunderstand completely the let purpose? 
