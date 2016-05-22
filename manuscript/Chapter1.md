# Chapter 1

One reason to love APL is that you can try things out as you learn them, and that's a great way to learn.

To follow these examples you'll need to start an APL session or log on to the [tryapl.org](http://tryapl.org/) website.

Once you've done that, you can type the code you'll see below.

In the examples that follow, code that you type is indented by six spaces. Once you start trying APL,
you'll see that APL inserts those spaces for you when it's ready for you to type.

So - here goes. Type

~~~~~~~~
      2 + 2
4
~~~~~~~~

TODO: add link to wikipedia
So far, so good. As you can see, the APL environment includes a [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) - a Read-Evaluate-Print-Loop.

That means that you can write code and try it out right away. As mentioned above, that's a great way to lern a lanugage,
and it's also a great way to develop software.

Try some more:

~~~~~~~~
       10 - 4
6
       4 - 5
¯1
~~~~~~~~

Note how APL represetns negative numbers using a `¯` symbol. The `¯` (called __high minus__) is part of the way you
write the value __negative one__. That's different from the - symbol (called __minus__) which tells APL to do a
subtraction.

Plus and minus are __primitive functions__ in APL. What about multiply and divide?

APL uses the same symbols that I was taught at school: `×` for multiply, and `÷` for divide.

If you're using the tryapl.org website, you can type these symbols by clciking on the APL Keyboard button at the top
right of your browser window. If you're running APL on a Raspberry Pi, you can hold down the Windows key to type APL
symbols.

* Type Windows- and you should see a `×` symbol
* Type Windows-equals to get the `÷` sign.

You can find more about how to type APL symbols at the end of this chapter.

Time to try out multiplication and division.

~~~~~~~~
      2 × 3
12
      5÷2
2.5
      12÷4  
3
      4÷3
1.333333333
~~~~~~~~

Now for something rather different. Try the experiment below,

~~~~~~~~
      1 2 3 + 4 5 6
5 7 9
~~~~~~~~

What's going on?

APL treat the two lists of numbers as __vectors__ and it adds the corresponding elements together.

A lot of calculations need to be done on vectors, and APL's built-in looping makes this realy easy.

Try some more examples:

~~~~~~~~

~~~~~~~~





## The Dyalog APL keyboard

If you get really hooked on APL you will want to invest in a Dyalog keyboard. Until then, you can use the photo below to
remind you of the locations of APL's special characters.

![Dyalog APL keyboard](images/dk_rc-800.jpg)