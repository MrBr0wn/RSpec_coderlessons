# frozen_string_literal: true

require '2_string_analyzer'

describe StringAnalyzer do
  context 'With valid input' do
    it 'should detect when a string contains vowels' do
      sa = StringAnalyzer.new
      test_string = 'uwu'
      expect(sa.has_vowels?(test_string)).to be true
    end

    it 'should detect when a string doesn\'t contain vowels' do
      sa = StringAnalyzer.new
      test_string = 'sdfghj'
      expect(sa.has_vowels?(test_string)).not_to be true
    end
  end
end
