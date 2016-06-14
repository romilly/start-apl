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

+/ (pronounced the _plus reduction_ of ages) tells APL to insert the + function between each item in `ages`.
That calculates the total.

Now you need an easy way to find out hom many items there are in `ages`. It's obvious if there are just three items,
but it would be tedious to count if there were 10, or fifty, or a thousand.

Here's the quick way to find out.

~~~~~~~~
      ⍴ages
3
~~~~~~~~

Used this way, the greek letter ⍴ (or rho) tells you the shape of the `ages` array.

You can combine the two fragments of code.

~~~~~~~~
      +/ages÷⍴ages
18
~~~~~~~~

That works, but perhaps not for the reason you were expecting!

APl will evaluate the expression like this: _calculate the sum of (each age divided by the number of ages)_.
In other words, APL will do three divisions, one for each age, and sum the result.

That works out as the same value that you want to calculate, which is _divide the total age by the number of ages_.
That's a better approach, as it does one division instead of three.

You can tell APL to do that by using parentheses (round brackets). Here's the code:

~~~~~~~~
      (+/ages)÷⍴ages
18
~~~~~~~~

## User-defined functions

You might need to calculate a lot of averages in some applications. It would be tedious to have to type the same code
over and over again, so APL lets you create _user-defined functions_.

The simplest way to do this is to use _direct definition_. To create a fuiction that way, you type an expression
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

## APL Operators

This example used reduction. In APL, reduction is considered to be an _operator_.
An operator takes one or more operands and creates a new function.

In _plus reduction_, the operator / takes + (the addition function) and turns it into a new function, _sum_.

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

Times reduction calculates the product of a vector. Sometimes that's useful.
Suppose you have a box of size 2 cm by 3 cm by 6 cm. What is its volume?

~~~~~~~~
      size ← 2 3 6
      volume ← ×/size
      volume
36
~~~~~~~~
