class Habitacion
  def initialize muebles
    @muebles = muebles
  end

  def imprimir_muebles
    @muebles.each { |mueble, cantidad| puts "#{mueble}: #{cantidad}" }
  end
  attr_reader :furniture
end

class Departamento
  # este atajo permite crear getter y setters sin escrbir tanto en Ruby,
  # mas o menos como también permite hacerlo C#
  attr_reader :habitaciones

  def initialize habitaciones
    @habitaciones = habitaciones
  end
end

# Creamos una habitacion con 2 camas y un placard, pasando un HashMap
habitacion_principal = Habitacion.new({cama: 2, placard: 1})
# Ruby permite usar unicode para definir variables, así que escribimos baño
baño = Habitacion.new({inodoro: 1, bidet: 1, bañera: 1})

# Creamos un departamento de una habitación
depto = Departamento.new({habitacion: habitacion_principal, baño: baño})

# Imprimimos muebles por consola
depto.habitaciones[:habitacion].imprimir_muebles

# Usamos :habitacion porque es un literal de Ruby que se llama "Symbol"
# Internamente funciona como un entero y se usa para referirse a elementos 
# en los HashMaps entre otras

# Imprimimos mobiliario del baño
depto.habitaciones[:baño].imprimir_muebles