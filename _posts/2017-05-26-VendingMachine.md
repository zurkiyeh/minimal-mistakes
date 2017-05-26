---
title: VHDL Vending Machine 
date: 2017-05-26 11:00:00
---



## Synopsis

At the top of the file there should be a short introduction and/ or overview that explains **what** the project is. This description should match descriptions added for package managers (Gemspec, package.json, etc.)

## Code Example

Show what the library does as concisely as possible, developers should be able to figure out **how** your project solves their problem by looking at the code example. Make sure the API you are showing off is obvious, and that your code is short and concise.

## Motivation

A short description of the motivation behind the creation and maintenance of the project. This should explain **why** the project exists.

## Installation

Provide code examples and explanations of how to get the project.

## API Reference

Depending on the size of the project, if it is small and simple enough the reference docs can be added to the README. For medium size to larger projects it is important to at least provide a link to where the API reference docs live.

## Tests

Describe and show how to run the tests with code examples.

## Contributors

Let people know how they can dive into the project, include important links to things like issue trackers, irc, twitter accounts if applicable.

## License

A short snippet describing the license (MIT, Apache, etc.)




# VHDL VendingMachine

This is a VHDL project to implement a Vending Machine. The purpose of the project is to employ RTL design to implement a simple vending
machine. For simplicity, the vending machine has two choices of items -This can easily be expanded to many more-. The value of each item 
must be predefined by the user -Can be either hardcoded, or variable during simulation-.

Upon simulations, Users must select their choice of items by setting the variable C either to 0 or 1. Then, users must feed the vending 
machine with values which represents coins, the machine will add up the inserted coins (a coin check will happen every clock cycle) until 
total adds up to equal or greater than the price that corrosponds with the users choice. After that, the vending machine will dispense the
item and give back the change that the costumer owes. The process then is restarted and the machine is ready to accept new values and a
new choice. At any point in time if an item has not been dispensed yet, costumers can reset and get their money back. 

This implementation consists of two main components; a Control Subsystem and a Data Subsystem. The Control  subsystems is a simple state
machine which handles the different states of the vending machine. It controls the Enable and Reset flags of the various registers along
with dispensing the items.

As for the Data subsystem, it executes the mathmatical operations of the system. It recieves the value of the coin from the Control
subsystem and adds it to an accumulator. It also outputs the total and the change amounts to the user. The Data subsystem contains all the
registers of the vending machine, along with the adder and the comparitor. It also feeds the values of the comparitor to the Control
subsystem as an internal signal which in turn uses it to change the states.
