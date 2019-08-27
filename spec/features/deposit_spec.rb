# frozen_string_literal: true

require 'bank_interface'

describe BankInterface do
  it 'adds to your balance and returns your new balance' do
    subject.deposit(100)
    expect(subject.print_statement). to eq 100
  end
end