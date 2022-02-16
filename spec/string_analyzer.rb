# frozen_string_literal: true

class StringAnalyzer
  def has_vowels?(str)
    !!(str =~ /[aeiou]+/i)
  end
end
