# frozen_string_literal: true

# this class models the bank interface
class BankInterface
  STATEMENT_HEADER = ['date || credit || debit || balance'].freeze
  def initialize
    @balance = 0
    @statement_history = []
  end

  def print_statement
    statement_print_out = @statement_history.dup
    statement_print_out << STATEMENT_HEADER
    statement_print_out.reverse.join("\n")
  end

  def deposit(amount_to_deposit, date_deposited)
    @balance += amount_to_deposit
    add_deposit_to_history(amount_to_deposit, date_deposited)
  end

  def withdraw(amount_to_withdraw, date_withdrawn)
    @balance -= amount_to_withdraw
    add_withdrawal_to_history(amount_to_withdraw, date_withdrawn)
  end

  private

  def add_deposit_to_history(amount_to_deposit, date_deposited)
    @statement_history << ["#{date_deposited} || #{format('%.2f', amount_to_deposit)} || || #{format('%.2f', @balance)}"]
  end

  def add_withdrawal_to_history(amount_to_withdraw, date_withdrawn)
    @statement_history << ["#{date_withdrawn} || || #{format('%.2f', amount_to_withdraw)} || #{format('%.2f', @balance)}"]
  end
end
