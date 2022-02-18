# frozen_string_literal: true

RSpec.describe 'An Example Group with positive and negative Examples' do
  context 'when testing Ruby\'s build-in math library' do
    # Run: $ rspec spec/this_file_spec.rb -t[--tag] positive[negative]
    it 'can do normal numeric operations', positive: true do
      expect(1 + 1).to eq(2)
    end

    it 'generates an error when expected', negative: false do
      expect { 1 / 0 }.to raise_error(ZeroDivisionError)
    end
  end
end
