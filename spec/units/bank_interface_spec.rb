# frozen_string_literal: true

require 'bank_interface'

describe BankInterface do
  it { is_expected.to respond_to(:deposit).with(2).arguments }
  it { is_expected.to respond_to(:withdraw).with(2).arguments }

  it 'adds deposit to balance and returns the correct format' do
    subject.deposit(50, '27/08/2019')
    expect(subject.print_statement). to eq("date || credit || debit || balance\n27/08/2019 || 50.00 || || 50.00")
  end

  it 'withdaws amount from balance and returns the correct format' do
    subject.withdraw(50, '31/10/2019')
    expect(subject.print_statement). to eq("date || credit || debit || balance\n31/10/2019 || || 50.00 || -50.00")
  end
end
