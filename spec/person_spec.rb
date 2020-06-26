require 'person.rb'

describe Person do
  describe '#initialize' do
    it 'returns its own name' do
      person = Person.new("name",1,2)
      expect(person.name).to eq "name"
    end
    it 'has a day of birth on initialize' do
      person = Person.new("name",1,2)
      expect(person.day).to eq(1)
    end
    it 'has a month of birth initialize' do
      person = Person.new("name",1,2)
      expect(person.month).to eq(2)
    end
  end
end
