class Room
  def initialize furniture
    @furniture = {}
    furniture.each { |x| @furniture.add = x }
  end

  attr_reader :furniture
end

r = Room.new ["bed", "chair"]
puts r.furniture