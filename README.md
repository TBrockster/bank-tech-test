# BankInterface

## Installation

First, clone this repository, then:

> cd bank-tech-test
> bundle install

## Operation

> Open in a REPL, such as IRB or Pry.
> require_relative './lib/bank_interface'
> MyBankInterface = BankInterface.new

then play around with methods such as:
MyBankInterface.deposit(amount, date) 
MyBankInterface.withdraw(amount, date)
MyBankInterface.print_statement

N.B. amount should be an integer (100), and the date a string ('01/01/2001')