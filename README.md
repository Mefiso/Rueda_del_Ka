# Rueda_del_Ka
## Introduction
Well, this all began one day when a friend of mine told me that he had come up with an idea of a puzzle for a game that we are making. That puzzle, explained more widely in [Technical details](#Technical-details), consisted in the players trying to complete a wheel of buttons (pressing all of them) with a certain restriction: a button must be pressed when the count of prime numbers in order falls in it, starting for the first button you press.

This little program is a **GUI app** that uses event-dispatching thread and **multithreading** to discover the order in which buttons must be pressed for a different number of elements in a wheel. 0 is the first you push and the others are enumerated in clockwise order, so the prime number count is in that direction.

## Background
### Story
I realized that the wheel only completes if the number of elements in it is a prime number. Then I investigated more in it and deduced what was happening (see [Proof](#Proof)). Then I decided to write this program in order to practice multithreading programming and GUI programming, but also to learn some **Ruby** (this is my first program in ruby).

Also, you will see that the sentences that appear in the window of the GUI may not make sense to you. That is because they are iconic quotes of the book series *The Dark Tower* by Stephen King in its Spanish translation. My friend and I love that series, and that's why they are here. If you are not interested **just ignore them**. Then again, when in the first window you see the question *"¿Cuál es el número de tu Ka-tet?"*, you just have to introduce the number of elements in the wheel you want to investigate.

### Proof
Let's explain again the game: imagine a set of buttons displayed forming a wheel; you press one, and then start counting advancing one button at a time (clockwise for example); when the count achieves a prime number, you press that button and continue counting until all buttons are pressed. What happens is that if the total number of buttons in the wheel is not a prime number, the process won't end. Better said, we can observe that the only buttons pressed will be: the ones in which the count is one of the prime factors of *n* (obviously), or those where the count is an element belonging to the reduced residue system modulo *n*, where *n* is the number of elements in the wheel. 

The reduced residue system modulo *n* contains all the elements of the integers modulo *n* that are coprimes with *n* and mutually incongruent modulo *n*. Thus, evidently, it will only contain all the elements of the integers modulo *n* if it *n* is a prime number. The question, then, is: why can only the the elements of the reduced residue system be pressed? 

Mathematically we observe:
![Image of Yaktocat](https://)
## Technical details
### Run it
