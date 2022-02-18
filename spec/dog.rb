# frozen_string_literal: true

class Dog
  attr_reader :good_boy, :has_been_walked

  def initialize(good_or_not)
    @good_boy = good_or_not
    @has_been_walked = false
  end

  def walk_dog
    @has_been_walked = true
  end
end
