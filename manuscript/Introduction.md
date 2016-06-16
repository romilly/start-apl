# Introduction

## Who should read this book

You should read this book if you want to

* find out what programming in APL is like
* learn how to use the language effectively
* decide if APL is appropriate for your project
* take part in the Dyalog annual APL problem-solving competition

The book is written for people learning Dyalog APL.
 
You can run Dyalog APL on a Raspberry Pi for free. There are free educational and low-cost personal licenses available
for Windows, Linux and OS/X. You'll find more information in the Appendices.

## What you will learn.

You'll learn enough APL to write useful code and you will be able to continue your exploration of APL
using other resources.

This book does **not** cover advanced topics like web applications, GUIs or interfaces with the Operating System.
It **does** suggest resources which cover those topics.

One great fact about APL is that you can do a lot with a little knowledge.

In the section on APL power examples later in this introduction you can see some of the code you'll have mastered
in the first three chapters of this book.


## Reasons to learn APL

Here are some good reasons to learn this powerful language

1. APL is concise and expressive, so you can try out new ideas very quickly.
1. APL is focused on arrays, so it will change the way you think about programming (in a good way).
1. APL is challenging and fun, so it will help you stretch your mind.
1. The APL community is full of bright and helpful people, so you will expand your network of contacts.
1. The demand for APL developers exceeds the supply, so knowing APL can help you find a job.

## Myths about APL

Here's a story from APL's distant past. It was originally told by Professor Alan Perlis,
one of the giants of Computer Science.

>Ken (Iverson) was showing some slides — and one of his slides had something on it that I was later to learn was an APL one-liner.
>And he tossed this off as an example of the expressiveness of the APL notation.
>I believe the one-liner was one of the standard ones for indicating the nesting level of the parentheses in an algebraic expression.
>But the one-liner was very short — ten characters, something like that — 
>and having been involved with programming things like that for a long time and realizing that it took a reasonable amount of code to do,
>I looked at it and said, “My God, there must be something in this language.”
>Bauer, on my left, didn’t see that. What he saw or heard was Ken’s remark that APL is an extremely appropriate language
>for teaching algebra, and he muttered under his breath to me, in words I will never forget,
>“As long as I am alive, APL will never be used in Munich.”
>And Dijkstra, who was sitting on my other side, leaned toward Bauer and said, “Nor in Holland.”
>The three of us were listening to the same lecture, but we obviously heard different things.

_Taken from a transcription of a talk given by Professor Perlis at the APL’78 Conference held at Foothill College,
Los Altos, CA. on 1978-03-29. via Roger Hui. You can read the full transcript_
[here](http://www.jsoftware.com/papers/perlis78.htm)

One of the many things that distinguished Perlis was his [growth mindset](http://mindsetonline.com/whatisit/about/).

Some people don't have that growth mindset. They look at what's different about APL,
or recall myths that they have heard, and decide to ignore the language without investigating it.

Here are a few of the myths I still hear about APL, along with my perspective on them.

### Myth: APL is hard to read.

APL **is** hard to read if you haven't learned the language.

So is Chinese, but there are over a billion people who can read Chinese,
and APL is _much, much_ easier to learn!

It takes most people a few days to 'get their eye in' to the point where the APL characters no longer look strange.
From then on they can read well-written APL with ease, and they can read bad APL code if they have to.

### Myth: APL is hard to learn

It  is, for some people, but not for most. I've taught hundreds of students, and talked to instructors who have taught
thousands more. We've had broadly similar experiences.

Of our large group of students

* some became expert. They fell in love with the language and used it whenever they could.
* most became competent. They used APL effectively when they needed to.
* a few disliked it.
* one or two became outstanding. They produced a steady stream of elegant, expressive, innovative solutions over many years.

Many of the past winners of Dyalog's annual problem solving contest **learned enough APL to win the competition in one
or two weeks**.

### Myth: APL is slow

Badly written APL is about as slow as badly written Python. Well-written APL is as fast as (or faster than) well-written C.

### Myth: APL is dead

It's true that the hundreds of thousands of 1980s customers who used IBM mainframe APL packages like ADI and ADRS have
long since migrated to using databases, report generators and spreadsheets.

By contrast, the number of serious APL developers has grown steadily, and today APL skills are in demand. Most of the large
APL users run apprenticeship schemes or their equivalent to ensure a steady supply of skilled APL developers.

## Reasons not to learn APL

_This section intentionally left blank_

## APL power examples

Here are some concise APL expressions. Each does something useful, and you will learn how and why to read and write
code like these examples early in the book.

The titles below tell you which chapter each example comes from.

TODO: Add examples to chapters and review content plan.

### Histogram (Chapter 2)

~~~~~~~~
       hist←'.⎕'[x∘.>⍳⌈/x] ⍝ display histogram of positive integer values
       hist 3 10 5 2
⎕⎕⎕.......
⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⎕⎕⎕⎕⎕.....
⎕⎕........
~~~~~~~~

### Word Count (Chapter 2)

**wc** is like the Unix word count. wc ignores leading, trailing and repeated delimiters.
The default delimiter for wc is space.

~~~~~~~~
       wc ← {⍺←' '⋄+/s<1⌽s←1,⍵∊⍺}
       wc 'How many beans make five?'
5
    ' :"'  wc 'He responded:"Can I quote you on that?"'
8
~~~~~~~~

### Balanced Parentheses (Chapter 2)

**bp** returns 0 if parentheses are unbalanced, 1 if they are balanced

~~~~~~~~
      bp←{0=+/1 ¯1 0['()'⍳⍵]}
      bp '((wow))'
1 
      bp ''
1
      bp '(out of balance))'
0
~~~~~~~~

### Prime numbers (Chapter 3)

Find all the primes up to N using the _Sieve of Eratosthenes_

~~~~~~~~
      primes←{(2=+⌿0=c∘.|c)/c←⍳⍵}
      primes 10
2 3 5 7
      primes 100
2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97
      
~~~~~~~~

### Linear Regression ()Chapter xx)

TBD

## The _Try APL_ website

TBD

## Running APL on your own hardware

See the appendices.

### Installing APL on your Raspberry Pi

TBD


## Conventions in this book
