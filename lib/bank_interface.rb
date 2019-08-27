# frozen_string_literal: true

# this class models the bank interface
class BankInterface
  def initialize
    @balance = 0
    @statement_history = [['date || credit || debit || balance']]
  end

  def print_statement
    @statement_history.join("\n")
  end

  def deposit(amount_to_deposit, date_deposited)
    @balance += amount_to_deposit
    @statement_history << ["#{date_deposited} || #{format('%.2f', amount_to_deposit)} || || #{format('%.2f', @balance)}"]
  end

  def withdraw(amount_to_withdraw, date_deposited)
    @balance -= amount_to_withdraw
    @statement_history << ["#{date_deposited} || || #{format('%.2f', amount_to_withdraw)} || #{format('%.2f', @balance)}"]
  end
end
