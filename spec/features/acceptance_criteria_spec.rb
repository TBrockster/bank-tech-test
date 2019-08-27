# frozen_string_literal: true

require 'bank_interface'

describe BankInterface do
  it 'passes acceptance criteria' do
    my_bank_interface = BankInterface.new
    my_bank_interface.deposit(1000, '10/01/2012')
    my_bank_interface.deposit(2000, '13/01/2012')
    my_bank_interface.withdraw(500, '14/01/2012')
    expect(my_bank_interface.print_statement). to eq("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00")
  end
end
