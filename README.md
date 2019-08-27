# BankInterface

## Installation

First, clone this repository, then:

> cd bank-tech-test
> bundle install

## Purpose

The purpose of this program is to track the date and amount of deposits and withdrawals, as well as keep a running total of a balance, for a hypothetical bank account.

## Approach

I considered using classes for deposits and withdrawals, and storing them in an array on BankInterface, but I believe that this strategy of storing each transaction as an fully formatted entry on a 'statement history' array is the simplest way of meeting the acceptance criteria.

## Operation

> Open in a REPL, such as IRB or Pry.
> require_relative './lib/bank_interface'
> MyBankInterface = BankInterface.new

then play around with methods such as:
MyBankInterface.deposit(amount, date) 
MyBankInterface.withdraw(amount, date)
MyBankInterface.print_statement

N.B. amount should be an integer ( e.g. 100), and the date a string (e.g. '01/01/2001')

## Testing

Running the command 'rspec' in the cli will run the tests, as well as output the coverage.