class Pet
  def initialize(attrs)
    @attrs = attrs
  end

  def owner_name
    @attrs['Name']
  end

  def name
    @attrs['Pet Name']
  end

  def type
    @attrs['Pet Type']
  end
end