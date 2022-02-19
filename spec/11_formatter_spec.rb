# frozen_string_literal: true

RSpec.describe 'A spec file to demonstrate how RSpec Formatters work' do
  context 'when running some tests' do
    # Run: $ rspec spec/this_file_spec.rb --format doc[progress(default)]
    it 'the test usually calls the expect() method at least once' do
      expect(1 + 1).to eq(3)
    end
  end
end
