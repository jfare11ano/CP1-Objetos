class Car
  attr_accessor :position
  @@counter = 0

  def initialize  # puedo pasarle un hash como argumento datos = {}
    @posicion = 0
    @@counter += 1
  end

  def go_forward
    @posicion += 1
  end

#  def position  # lo mismo que attr_accesor
#    @position
#  end

#  def position= (new_position) # lo mismo que attr_accesor
#    @position = new_position
#  end

end

auto1 = Car.new
auto1.position
auto1.position = 1000
puts auto1.position
