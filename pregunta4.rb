class Dog
attr_accessor :nombre,:raza,:color

  def initialize(carac={})
      @nombre = carac[:nombre]
      @raza = carac[:raza]
      @color = carac[:color]
  end

  def bark
    puts "#{self.nombre} está ladrando!"
  end

end

#  ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog1 = Dog.new(propiedades)
dog1.bark
