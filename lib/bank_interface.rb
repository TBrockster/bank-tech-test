# frozen_string_literal: true

# this class models the bank interface
class BankInterface
  DEFAULT_STARTING_BALANCE = 0

  def initialize
    @balance = DEFAULT_STARTING_BALANCE
  end

  def print_statement
    @balance
  end

  def deposit(amount_to_deposit)
    @balance += amount_to_deposit
  end
end
