# Rueda_del_Ka
## Introduction
Well, this all began one day when a friend of mine told me that he had come up with an idea of a puzzle for a game that we are making. That puzzle, explained more widely in [Technical details](#Technical-details), consisted in the players trying to complete a wheel of buttons (pressing all of them) with a certain restriction: a button must be pressed when the count of prime numbers in order falls in it, starting for the first button you press.

This little program is a **GUI app** that uses event-dispatching thread and **multithreading** to discover the order in which buttons must be pressed for a different number of elements in a wheel. 0 is the first you push and the others are enumerated in clockwise order, so the prime number count is in that direction.

## Background
### Story
I realized that the wheel only completes if the number of elements in it is a prime number. Then I investigated more in it and deduced what was happening (see [Proof](#Proof)). Then I decided to write this program in order to practice multithreading programming and GUI programming, but also to learn some **Ruby** (this is my first program in ruby).

Also you will see that the sentences that appear in the window of the GUI make no sense. That is because they are iconic quotes of the book series *The Dark Tower* by Stephen King in its Spanish translation. My friend and I love that series, so that's why it is here. If you are not interested **just ignore them**. Then again, when in the first window you see the question *"¿Cuál es el número de tu Ka-tet?*, you just have to introduce the number of elements in the wheel you want to investigate.

### Proof

## Technical details
### Run it
