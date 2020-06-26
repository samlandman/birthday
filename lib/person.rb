require 'date'

class Person
  attr_reader :name, :day, :month, :birthday
  def initialize(name,day,month)
    @name = name
    @day = day
    @month = month
    @birthday = Date.parse("#{@day}-#{@month}-#{Date.today.year}")
    @days_until = (Date.today-@birthday).to_i
  end

  def birthday_gone
    if @birthday == Date.today
      "Happy Birthday #{@name}!"
    else
      "#{@name}, your birthday is in #{@days_until} days time!"
    end
  end

end
