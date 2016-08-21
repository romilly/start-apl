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

In APL you can create _empty_ character vectors like this:

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
`~` which is called _tilde_.

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

You can use both monadic and dyadic `⍴` (shape and reshape) on character arrays.

~~~~~~~~
      ⍴description
42
      15⍴ description
APL is the life
~~~~~~~~

I> In the example above you can see a space after `⍴`. It's there to make the
APL easier for you to read.

Whitespace outside quotation marks is
optional in APL, so you don't have to use a space there if you don't want to.

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

You can find out the rank (number of dimensions) of a character array in exactly the same
way that you did for numeric arrays:

~~~~~~~~
      description
APL is the life and the soul of the party.
      ⍴description
42
      ⍴⍴description
1
      countries
England
France 
Germany
Spain  
      ⍴countries
4 7
      ⍴⍴countries
2
~~~~~~~~

Like numeric scalars, character scalars have empty shape and zero rank.

~~~~~~~~
      ⍴'A'

      ⍴⍴'A'
0
~~~~~~~~

## Indexing character arrays


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

When you catenate two arrays they must be _conformable_;
the way to join them must be clear and unambiguous.

You can always catenate a vector with a scalar or vector.

You can catenate two matrices if they have the same number of items in
the dimension that's going to be extended: columns if you're using `,`
and rows if you're using `⍪`. 

What about catenating a matrix and a vector?
Sales currently contains four columns of quaterly sales data:

~~~~~~~~
      sales
10  9 12 16
 8 10 11 14
 9  6 10 18
~~~~~~~~

Let's append a fifth quarter's figures.

~~~~~~~~
      sales,11 9 12
10  9 12 16 11
 8 10 11 14  9
 9  6 10 18 12
~~~~~~~~

What if we have a new product? How can we add a new row to the sales matrix?

~~~~~~~~
      sales⍪9 8 15 17
10  9 12 16
 8 10 11 14
 9  6 10 18
 9  8 15 17
~~~~~~~~

So, summing up what you've seen so far:
1. _catenate_ (represented by a comma) joins two arrays along their **last** dimension.
1. _catenate first_ (represented by a comma combined with a bar) joins two arrays along
their **first** dimension.


## Specifying an axis

What if an array has rank three? (Recall that rank three means that the array has
three dimensions).

A while back you created an array _international sales_ with three dimensions.

~~~~~~~~
      ⍴international_sales
3 2 4
      international_sales
7 4 6 8
7 6 6 9
       
8 5 5 4
7 4 6 8
       
6 7 6 5
7 4 6 9
~~~~~~~~

The array has three planes, two rows per plane and four columns per row.

The three planes might represent countries, the two rows could be products,
and the four columns might be months.

What happens if we catenate the array to itself?

(In this case that wouldn't be a meaningful operation. It's just a way for you
to explore catenation on three-dimensional arrays.)
 
~~~~~~~~
       international_sales,international_sales
7 4 6 8 7 4 6 8
7 6 6 9 7 6 6 9
               
8 5 5 4 8 5 5 4
7 4 6 8 7 4 6 8
               
6 7 6 5 6 7 6 5
7 4 6 9 7 4 6 9
~~~~~~~~
 
As you can see this appends the second copy of the `international_sales` data to the
right of the first.
 
In other words, by default *catenate extends columns* which form the *last dimension*
of an array.

While informative, that example was not very realistic. What about some operations
which might actually arise in a real application.
 
If we had a new month's data, that might have three rows (one per county) and
two columns (one per product).

The additional sales data would look like this:

~~~~~~~~
      new_sales_data←3 2⍴10 9 5 9 6 8 
      new_sales_data 
10 9
 5 9
 6 8
~~~~~~~~

You can catenate it to the existing data like this:

~~~~~~~~
    international_sales, new_sales_data  
7 4 6 8 10
7 6 6 9  9
          
8 5 5 4  5
7 4 6 8  9
          
6 7 6 5  6
7 4 6 9  8
~~~~~~~~

I> You didn't assign the result of the catenation, so it displayed in your
session but the international_sales array was unchanged.

Similarly, you could catenate an extra country like this:

~~~~~~~~
    international_sales⍪2 4⍴9 8 9 8 7 8 6 9  
7 4 6 8
7 6 6 9
       
8 5 5 4
7 4 6 8
       
6 7 6 5
7 4 6 9
       
9 8 9 8
7 8 6 9
~~~~~~~~








~~~~~~~~

~~~~~~~~









