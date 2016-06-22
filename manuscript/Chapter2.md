# Chapter 2

## More useful techniques

In the last chapter you created a variable called ages containing the vector 12 23 19.

How can you find the average age?

The average is defined as the total divided by the number of ages.

You could work out the total like this:

~~~~~~~~
      12+23+19
54
~~~~~~~~

Now you can divide that by 3 (the number of ages)

~~~~~~~~
            54÷3
18
~~~~~~~~

What if you had a dozen ages? That approach would get rather tedious. Luckily there is an easier way.

First, here is a shortcut for calculating totals.

~~~~~~~~
      +/ages
54
~~~~~~~~

+/ages (pronounced the _plus reduction_ of ages) tells APL to insert the + function between each item in `ages`.
That calculates the total.

Now you need an easy way to find out hom many items there are in `ages`. It's obvious if there are just three items,
but it would be tedious to count if there were 10, or fifty, or a thousand.

Here's the quick way to find out.

~~~~~~~~
      ⍴ages
3
~~~~~~~~

Used this way, the greek letter `⍴` (or rho) tells you the shape of the `ages` array.

You can combine the two fragments of code.

~~~~~~~~
      +/ages÷⍴ ages
18
~~~~~~~~

That works, but perhaps not for the reason you were expecting!

APl will evaluate the expression like this: _calculate the sum of (each age divided by the number of ages)_.
In other words, APL will do three divisions, one for each age, and sum the result.

That works out as the same value that you want to calculate, which is _divide the total age by the number of ages_.
That's a better approach, as it does one division instead of three.

You can tell APL to do that by using parentheses (round brackets). Here's the code:

~~~~~~~~
      (+/ages)÷⍴ ages
18
~~~~~~~~

## User-defined functions

You might need to calculate a lot of averages in some applications. It would be tedious to have to type the same code
over and over again, so APL lets you create _user-defined functions_.

The simplest way to do this is to use _direct definition_. To create a function that way, you type an expression
and give it a name.

The average will be a function which takes a single argument on its right which will be the array to be averaged.

By convention, you refer to that argument as ⍵.

Here's what you type to define your average function:

~~~~~~~~
      average ← {(+/⍵)÷⍴⍵}
~~~~~~~~

You can use it like this:

~~~~~~~~
      average ages
18
~~~~~~~~

The function will work for any number of items.

~~~~~~~~
      average 1 2 3 4 5 6 7 8 9
5
~~~~~~~~

## APL Operators - reduction

This example used reduction. In APL, reduction is defined to be an _operator_.
An operator takes one or more operands and creates a new function.

A _function_ (like +, -, and ⍴, among many others) takes one or two array arguments and returns an array result.

In _plus reduction_, the operator / takes + (the add function) and turns it into a new function, _sum_.

What do you think _times reduction_ would do? (You'd write that as ×/)

Try it out.

~~~~~~~~
      ×/ 2 3 
6
      ×/ 2 3 5
30
      ×/10 10 10
1000
~~~~~~~~

Times reduction calculates the product of a vector.

Suppose you have a box of size 2 cm by 3 cm by 6 cm. What is its volume?

~~~~~~~~
      size ← 2 3 6
      volume ← ×/size
      volume
36
~~~~~~~~

## Matrices

So far you've met vectors and scalars. One of APL's great strengths is that it can handle arrays of higher dimension.

You've probably met _matrices_ (arrays with two axes); you may have met _tensors_ (arrays with three or more axes).
APL handles them all with ease.

You can create a matrix using the _reshape_ function.

~~~~~~~~
      2 3⍴1 2 3 4 5 6
1 2 3
4 5 6
~~~~~~~~

That may look surprising, Earlier you saw `⍴` used with just one argument to its right; it returned the _shape_ of the argument.
When ⍴ is used with arguments to its left and right, it _reshapes_ the right argument according to the value specified
in the left argument.

What do you thing will be the result of executing `⍴ 2 3⍴ 1 2 3 4 5 6`?

APL reads this as 'return the shape of reshaping 1 2 3 4 5 6 into a 2-row, 3-column matrix' so the result is the
vector 2 3.

~~~~~~~~
      ⍴2 3⍴1 2 3 4 5 6
2 3
~~~~~~~~

If you ask APL to reshape an array and there are not enough elements to populate your result, APL cycles through the
array you provide as often as necessary.

~~~~~~~~
      2 3⍴1 2 3
1 2 3
1 2 3
~~~~~~~~

You can create multi-dimensional arrays just as easily.

~~~~~~~~
      bits←2 3 4⍴0 1
      bits
0 1 0 1
0 1 0 1
0 1 0 1
       
0 1 0 1
0 1 0 1
0 1 0 1
~~~~~~~~

As you can see, APL displays a 3-axis array one plane at a time with a blank row between them.

How can you find out how many axes an APL array has? Use `⍴⍴`, called _rank_.

Rank is not a new function. It is just the repeated use of `⍴` (or shape).

Recall that the shape of an array is an array that tells you its size in each dimension, so the rank
(the shape of the shape) tells you how many dimensions there are.

~~~~~~~~
      ⍴⍴ ages ⍝ ages is a vector
1
      ⍴⍴ mat ⍝ mat is a matrix
2
      ⍴⍴ bits ⍝ bits is a tensor
3
~~~~~~~~

What do you think is the rank of a scalar: a number on its own, like the variable `age`?

~~~~~~~~
      age←42
      ⍴⍴ age ⍝ age is a scalar
0
~~~~~~~~

A scalar has _rank zero_. Don't worry if that seems a little strange at first; just try to remember it,
and don't let it surprise you when you see it again!

## Monadic and Dyadic functions

Like `⍴` , many of APL's symbols have two meanings depending on whether they are used with one argument or two.
When you use a function with one argument, you say the function is _Monadic_. When you use a function with two arguments,
you describe it as _Dyadic_.

For example, the `÷` symbol, used dyadically, means division. Used monadically, it means _reciprocal_.
(The reciprocal of a number is 1 divided by that number).

~~~~~~~~
      1 2 4 8 ÷ 2
0.5 1 2 4
           ÷2
0.5
~~~~~~~~

