# Chapter 1

## Getting started

Time to start APL - and start learning!

To begin your first APL session on a Raspberry Pi, run __Dyalog__ from the __Programming__ menu.

(If you're using RIDE to connect to a Raspberry Pi or some other computer with APL installed, follow the
instructions in Appendix 2 - once I've written them!)

![Dyalog menu](images/dy1.png)

The APL environment includes a
[REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) - a Read-Evaluate-Print-Loop.

That means that you can write code and try it out right away. That's a great way to learn a lanugage,
and it's also a great way to develop software.

In the examples that follow, code that __you__ type is indented by six spaces. Once you start your session
you'll see that APL inserts those spaces for you when it's your turn to type.

APL's output is **not** indented, so you can see what you should type and what you should expect APL to output.

So - here goes. Type

~~~~~~~~
      2 + 2
4
~~~~~~~~


Try some more:

~~~~~~~~
       10 - 4
6
       4 - 5
¯1
~~~~~~~~

Note how APL represents negative numbers using a `¯` symbol. The `¯` (called __high minus__) is part of the way you
write the value __negative one__. That's different from the - symbol (called __minus__) which tells APL to do a
subtraction.

Plus and minus are __primitive functions__ in APL. What about multiply and divide? Of course APL does those too.

APL uses the same symbols that I was taught at school: `×` for multiply, and `÷` for divide.

If you're running on a Raspberry Pi or a Windows computer you can hold down the Windows key to type APL symbols.

If you're using RIDE on some other computer you will need to configure your keyboard for APL. You'll find instructions
in Appendix 3.

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

A lot of calculations need to be done on vectors, and APL's built-in looping makes this really easy.

Try some more examples:

~~~~~~~~
      2 3 4 5 × 1 2 1 2
2 6 4 10
      3 4 2 5 - 4 0 ¯1 3
¯1 4 3 2
      120 ÷ 2 3 4 5 6
60 40 30 24 20
      0.1 0.1 0.1 0.1 × 3 5 4 2
0.3 0.5	0.4 0.2
~~~~~~~~

That last example works, but it's a bit tedious to type. Fortunately there is an easy shortcut.

~~~~~~~~
      0.1 + 3 5	4 2
3.1 5.1	4.1 2.1
~~~~~~~~

If you ask APL to multiply (or add, or subtract, or divide) a number on its own and a vector of numbers, APL will use the
single number repeatedly. A single number on its own is called a __scalar__. The repeated use of a scalar when you're
adding it to a vector is called __scalar extension__.
 
What happens if you try to add two vectors of different lengths?

~~~~~~~~
      1 2 3 + 4 5 6 7
LENGTH ERROR
      1 2 3+4 5 6 7
     ∧
~~~~~~~~

APL doesn't kow what you want to do, so it treats the expression as an error.

Don't worry about causing APL errors. APL will try to tell you what went wrong, and you won't break anything :)

## Assigning values to variables

It would be rather tedious if you had to type values in to APL every time you wanted to use them. Fortunately, you can
tell APl to remember values you want to use repeatedly. Suppose you are currently 23. Type:

~~~~~~~~
      age ← 23
      age + 10
33
~~~~~~~~

The first line you typed told APL to assign the value 23 to a new variable __age__.

In the second line you asked APL to add 10 to your current age, and APL displayed the result.

Notice that APL will display a result if you don't tell it what to do with it.

APL variables can contain vectors as well as scalars.

~~~~~~~~
      ages ← 12 23 19
      ages
12 23 19
      ages×2
24 46 38

~~~~~~~~

## System commands

If you've been working on an APL session for a while it can be useful to check what variables you have created.

APl has a __system command__ to do that. System commands in APL don't create values, but they do other useful things.
One such command will tell you the names of all the variables you have defined. Try it out:

~~~~~~~~
      )vars
age ages
~~~~~~~~

In APL, system commands start with an open right bracket. The __vars__ command tells you the name of the variables that
are currently defined.

When you work in an APL session, the variables you create are held in what APL calls the __current workspace__.

A workspace can also contain functions and other things. We'll cover these later in this book.

When you have finished an APL session, you can save the contents of your workspace, and return to it when next
you use APL. Try the following commands:

~~~~~~~~
      )wsid course
was CLEAR WS
      )save
course saved Sun May 22 17:09:17 2016
~~~~~~~~

What did that do?

The first command gave a name to your workspace. (Previously it had no name, so APL showed that it was a clear
workspace.

Then you asked APL to save your workspace. It stored it on disk. If you look in your home directory, you should see a
file called __course__.

It's a binary file, so don't try to edit it!

Names are useful. If you are working on more than one project, you can have several workspaces, one for each project.
Each ahs a name which will help you find the workspace you want to use for any given session.

## Finishing your session

Once you've finished a session you can close APL down by typing a system command:

~~~~~~~~
      )off
~~~~~~~~

APL will close down.

If you want to get your work back, restart APL from the Programming menu. You will start a new session with a new
clear workspace. To resume your work you must load your saved workspace. Type

~~~~~~~~
      )load course
./course saved Sun May 22 17:09:17 2016
~~~~~~~~

Now you can check that the workspace still contains your variable:

~~~~~~~~
      )vars
age ages
      age
23
~~~~~~~~

Well done! You've taken the first step to mastering APL. Now try the following simple exercises to consolidate what
you've learned.

## Exercises

### 1.1

Create a variable called __income__ containing the vector 10000 11570 11000 12550. (This might contain someone's income
for the last four quarters of the year.)

Create another variable containing the vector 7250 8345 9547 12650. This might show how much that person spent
in each quarter.

Now calculate and display what they saved each quarter. Of course, if they spent more than they earned the savings will
be negative.

### 1.2

Create a variable __weights__ containing the numbers 10.2 8,3 7.5 and convert from pounds to kilogrammes.
A pound is roughly 0.45 kilogrammes,


## The Dyalog APL keyboard

Here's the layout of the UK APL keyboard.

~~~~~~~~
┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬─────────┐
│¬   │! ⌶ │" ⍫ │£ ⍒ │$ ⍋ │% ⌽ │^ ⍉ │& ⊖ │* ⍟ │( ⍱ │) ⍲ │_ ! │+ ⌹ │Backspace│
│` ⋄ │1 ¨ │2 ¯ │3 < │4 ≤ │5 = │6 ≥ │7 > │8 ≠ │9 ∨ │0 ∧ │- × │= ÷ │         │
├────┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬──────┤
│Tab    │Q   │W   │E ⍷ │R   │T ⍨ │Y   │U   │I ⍸ │O ⍥ │P ⍣ │{ ⍞ │} ⍬ │Enter │
│       │q ? │w ⍵ │e ∊ │r ⍴ │t ~ │y ↑ │u ↓ │i ⍳ │o ○ │p * │[ ← │] → │      │
├───────┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┬───┴┐     │
│Caps    │A   │S   │D   │F   │G   │H   │J ⍤ │K ⌸ │L ⌷ │: ≡ │@ ≢ │~   │     │
│Lock    │a ⍺ │s ⌈ │d ⌊ │f _ │g ∇ │h ∆ │j ∘ │k ' │l ⎕ │; ⍎ │' ⍕ │#   │     │
├──────┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴──┬─┴────┴─────┤
│Shift │| ⊣ │Z   │X   │C   │V   │B   │N   │M   │< ⍪ │> ⍙ │? ⍠ │Shift       │
│      │\ ⊢ │z ⊂ │x ⊃ │c ∩ │v ∪ │b ⊥ │n ⊤ │m | │, ⍝ │. ⍀ │/ ⌿ │            │
├──────┴┬───┴─┬──┴───┬┴────┴────┴────┴────┴────┴┬───┴──┬─┴────┼─────┬──────┤
│Ctrl   │Win  │Alt   │                          │Alt Gr│Win   │Menu │Ctrl  │
│       │     │      │                          │      │      │     │      │
└───────┴─────┴──────┴──────────────────────────┴──────┴──────┴─────┴──────┘
~~~~~~~~

If you get really hooked on APL you will want to invest in a Dyalog keyboard.

![Dyalog APL keyboard](images/dk_rc-800.jpg)