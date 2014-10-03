class NumberHolder

  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def add(number)
    @value += number
  end

  def subtract(number)
    @value -= number
  end

  def multiply(number)
    @value *= number
  end

end


number_holder = NumberHolder.new(10)

number_holder.add(5)
puts number_holder.value

# number_holder.multiply(2)
# puts number_holder.value

# number_holder.subtract(10)
# puts number_holder.value