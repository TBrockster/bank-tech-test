# frozen_string_literal: true

require 'bank_interface'

describe BankInterface do
  it 'passes acceptance criteria' do
    subject.deposit(1000, '10/01/2012')
    subject.deposit(2000, '13/01/2012')
    subject.withdraw(500, '14/01/2012')
    expect(subject.print_statement). to eq("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00")
  end
end
