# Chapter 3

## Character Data

So far you've seen APL's ability to process numbers. What about text?

APL arrays can contain character data as well as numbers, and many
of the functions that you've learned work on character data in just the
same way.

You create a character vector by enclosing its contents in single
quotation marks. Try this:

~~~~~~~~
      'Handling text in APL is easy!'
Handling text in APL is easy!
~~~~~~~~

As you'd expect, character data can be assigned to a variable.

~~~~~~~~
      description ← 'APL is the life and the soul of the party.'
~~~~~~~~

Character vectors in APL correspond to strings in other languages.

In APL you can create _empty_ character vectors:

~~~~~~~~
      empty ← ''
      empty

      ⍴ empty
0
~~~~~~~~

I> The variable name _empty_ is not a special name. I just used it to
make clear that it contained an empty vector.

You can create an empty character vector by typing a couple of quotation
marks `''` with no text between them.

An empty vector has a length of zero. That shouldn't be too surprising;
it has nothing in it.

Can you think of another way of creating an empty character vector?

Maybe with reshape?

~~~~~~~~
      0⍴'some text'

~~~~~~~~

You can create an empty numeric vector using the same trick:

~~~~~~~~
      0⍴1 2 3

      
~~~~~~~~

Alternatively you can use `⍳`:

~~~~~~~~
      ⍳0

~~~~~~~~

Finally, there's a special symbol `⍬` that you can use to refer to the
empty numeric vector. It's called _zilde_ because it's a zero combined with
`~` -a _tilde_.

~~~~~~~~
      ⍬

      ⍴⍬
0
~~~~~~~~

### Catenate with empty arrays

What happens if you join an empty vector to a vector with something in it?

~~~~~~~~
      ⍬,⍳3
1 2 3
      '','Hello'
Hello
      'Hello',''
Hello
~~~~~~~~

The result is just the non-empty vector.

## Shape and reshape with character arrays.

You can use both monadic and dyadic `⍴` on character arrays.

~~~~~~~~
      ⍴description
42
      15⍴ description
APL is the life
~~~~~~~~

I> In the example above you can see a space after `⍴`. It's there to make the
APL easier for you to read, but whitespace outside quotation marks is
optional in APL.

You can create character matrices.

~~~~~~~~
      4 3⍴'CATDOGCOWHEN'
CAT
DOG
COW
HEN
~~~~~~~~

I> You can also create higher-rank character arrays if you need
them.


You can use indexing to select characters from a character vector.

~~~~~~~~
      'The quick brown fox'[14 7 15]
win
~~~~~~~~

You can also index data from a character matrix, in just the same way
you did with numeric matrices.

~~~~~~~~
      countries ← 4 7⍴'EnglandFrance GermanySpain    '
      countries
England
France 
Germany
Spain  
      countries[3 2;]
Germany
France 
      countries[4 3 1;2]
pen
~~~~~~~~

## Catenate and Ravel revisited

You can use catenate and ravel on character arrays. They work in just
the same way they do with numeric arrays.

~~~~~~~~
      'Hello ','World'
Hello World
~~~~~~~~

You can easily write a _Hello World_ function in APL.


~~~~~~~~
      greet ←{ 'Hello ',⍵}
      greet 'World'
Hello World
      greet 'Romilly'
Hello Romilly
      greet 'You!'
Hello You!
~~~~~~~~


As with numbers, you can use ravel `,` to turn a matrix into a vector.

~~~~~~~~~
      ,countries
EnglandFrance GermanySpain 
~~~~~~~~~

## Catenate and matrices

You can use catenate with matrices as well as with vectors.

~~~~~~~~
      a ← 2 3⍴⍳6
      a
1 2 3
4 5 6
      b ← 10+2 3⍴⍳6
      b
11 12 13
14 15 16
      a,b
1 2 3 11 12 13
4 5 6 14 15 16
~~~~~~~~

The second matrix is catenated to the right of the first one.

Can you catenate one matrix on top of the other? Yes, using `⍪`.

~~~~~~~~
      a⍪b
 1  2  3
 4  5  6
11 12 13
14 15 16
~~~~~~~~

What happens if the matrices have different sizes?

~~~~~~~~
      c←20+3 3⍴⍳9
      c
21 22 23
24 25 26
27 28 29
      a,c
LENGTH ERROR
      a,c
     ∧
      a⍪c
 1  2  3
 4  5  6
21 22 23
24 25 26
27 28 29
~~~~~~~~

APL doesn't know what you want if you try to catenate a two-row matrix
alongside a three-row matrix, so it returns a _LENGTH ERROR_.

If you want to catenate a three-column matrix on top of a three-column
matrix, that's fine.


