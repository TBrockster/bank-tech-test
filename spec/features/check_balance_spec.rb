# frozen_string_literal: true

require 'bank_interface'

describe BankInterface do
  it 'returns your balance' do
    expect(subject.print_statement). to eq BankInterface::DEFAULT_STARTING_BALANCE
  end
end
