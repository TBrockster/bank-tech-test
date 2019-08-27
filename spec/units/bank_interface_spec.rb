# frozen_string_literal: true

require 'bank_interface'

describe BankInterface do
  describe '#print_statement' do
    it 'account defaults to 0 balance' do
      expect(subject.print_statement). to eq BankInterface::DEFAULT_STARTING_BALANCE
    end
  end
end
