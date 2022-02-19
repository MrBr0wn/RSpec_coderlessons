# frozen_string_literal: true

RSpec.describe 'An Example Group with a metadata variable', foo: 17 do
  context 'and a context with another variable', bar: 12 do
    it 'can access the metadata variable of the outer Example Group' do |example|
      expect(example.metadata[:foo]).to eq(17)
    end

    it 'can access the metadata variable in the context block' do |example|
      expect(example.metadata[:bar]).to eq(12)
    end
  end
end

# Equal that what above. Additionally shows the entire hash
RSpec.describe 'An Example Group with a metadata variable', foo: 17 do
  context 'and a context with another variable', bar: 12 do
    it 'can access the metadata variable in the context block' do |example|
      expect(example.metadata[:foo]).to eq(17)
      expect(example.metadata[:bar]).to eq(12)
      example.metadata.each do |k, v|
        puts "key: #{k}\nvalue: #{v}\n\n"
      end
    end
  end
end