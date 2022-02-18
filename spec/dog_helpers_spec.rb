# frozen_string_literal: true

require 'dog'

describe Dog do
  it 'should be able to create and walk a good boy' do
    dog = Dog.new(true)
    dog.walk_dog

    expect(dog.good_boy).to be true
    expect(dog.has_been_walked).to be true
  end

  it 'should be able to create walk a bad boy' do
    dog = Dog.new(false)
    dog.walk_dog

    expect(dog.good_boy).to be false
    expect(dog.has_been_walked).to be true
  end
end

# Using the helpers for lessen code. Equal that what above

describe Dog do
  def create_and_walk_dog(good_or_bad)
    dog = Dog.new(good_or_bad)
    dog.walk_dog
    dog
  end

  it 'should be able to create and walk good boy' do
    dog = create_and_walk_dog(true)

    expect(dog.good_boy).to be true
    expect(dog.has_been_walked).to be true
  end

  it 'should be able to create and walk bad boy' do
    dog = create_and_walk_dog(false)

    expect(dog.good_boy).to be false
    expect(dog.has_been_walked).to be true
  end
end
