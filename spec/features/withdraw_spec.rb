# frozen_string_literal: true

require 'bank_interface'

describe BankInterface do
  it 'withdraws from your balance' do
    subject.deposit(100)
    subject.withdraw(60)
    expect(subject.print_statement). to eq 40
  end
end
