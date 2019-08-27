# frozen_string_literal: true

require 'bank_interface'

describe BankInterface do
  describe '#print_statement' do
    it 'returns balance' do
      expect(subject.print_statement). to eq BankInterface::DEFAULT_STARTING_BALANCE
    end
  end

  describe '#deposit' do
    it 'adds input value to your account' do
      subject.deposit(100)
      expect(subject.print_statement). to eq 100
    end
  end

  describe '#withdraw' do
    it 'removes input value from your account' do
      subject.deposit(100)
      subject.withdraw(60)
      expect(subject.print_statement). to eq 40
    end
  end
end
