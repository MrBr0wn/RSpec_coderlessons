# frozen_string_literal: true

describe 'How to run specific Examples with Tags' do
  # $ rspec spec -t[--tag] slow[fast] for running
  it 'is a slow test', slow: true do
    sleep 5
    puts 'This test is slow!'
  end

  it 'is a fast test', fast: true do
    puts 'This test is fast!'
  end
end
