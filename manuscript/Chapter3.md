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

You can use both monadic and dyadic `⍴` on character data.

~~~~~~~~
      ⍴description
42
      15⍴ description
APL is the life
~~~~~~~~

In the example above there is a space after `⍴`. It's there to make the
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

(You can also create higher-rank character arrays, if you need
them.)


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
~~~~~~~~