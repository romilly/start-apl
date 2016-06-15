# Introduction

(currently just a skeleton)

## Who should read this book

## Reasons to learn APL

Here are some good reasons to learn this powerful language

1. APL is concise and expressive, so you can try out new ideas very quickly.
1. APL is focused on arrays, so it will change the way you think about programming (in a good way).
1. The demand for APL developers exceeds the supply, so it can help you find a job.
1. It's challenging and fun, so it will help you stretch your mind.

## Criticisms of APL and why you should ignore them

Here's a story from APL's distant past. It was originally told by Alan Perlis, one of the giants of Computer Science.

(TODO; Add story and other material)


## Reasons not to learn APL

_This section intentionally left blank_


## What you will learn.

You'll learn enough APL to write useful code and you will be able to continue your exploration of APL
using other resources.

This book does **not** cover advanced topics like web applications, GUIs or interfaces with the Operating System.
It **does** suggest resources which cover those topics.

One great fact about APL is that you can do a lot with a little knowledge.

Here are some concise APL expressions. Each does something useful, and you will learn how and why to read and write code
like these examples early in the book.

The titles below tell you which chapter each example comes from.

TODO: Add examples to chapters and review content plan.

### Histogram (Chapter 1)

~~~~~~~~
       hist←'.⎕'[x∘.>⍳⌈/x] ⍝ display histogram of positive integer values
       hist 3 10 5 2
⎕⎕⎕.......
⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⎕⎕⎕⎕⎕.....
⎕⎕........
~~~~~~~~

 
### Word Count (Chapter 2)

`wc ← {⍺←' '⋄+/s<1⌽s←1,⍵∊⍺} ⍝ word count ignoring leading, training and repeated delimiters. Default delimiter is space`

### Balanced Brackets (Chapter 2)

`bp←{0=+/1 ¯1 0['()'⍳⍵]} ⍝ returns 0 if parentheses are unbalanced, 1 if they are balanced`


### Rot13 (Chapter 3)

### Missing Values (Chapter 3)

### Linear Regression ()Chapter xx)


## The _Try APL_ website

## Running APL on your own hardware

### Installing APL on your Raspberry Pi

### Installing APL on other computers

### Using the RIDE

## Conventions in this book
