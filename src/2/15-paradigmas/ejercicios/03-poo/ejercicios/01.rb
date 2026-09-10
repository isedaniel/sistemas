class TV
  # incializo con un input, seteo output, encendido por defecto falso
  def initialize(input, on = false)
    @input = input
    @output = "viendo desde #{input}"
    @on = on
  end

  # encender la tv, cambio el estado y devuelvo el string "televisor encendido"
  def turn_on
    @on = true 
    "televisor encendido"
  end

  # apagar la tv, devuelve string "televisor apagado"
  def turn_off
    @on = false
    "televisor apagado"
  end

  # devuelve el valor de output solo si el tv está encendido
  def see 
    return @output if @on == true 
    "televisor apagado"
  end

  # cambiar input por un valor válido
  def change_input(input)
    # cambia el valor del input
    case input 
    when "hdmi", "hdmi1", "hdmi2", "vga", "rca"
        @input = input 
        @output = "viendo desde #{input}"
        @output
    else
        "input no soportado"
    end
  end
end

tv = TV.new("hdmi") # creamos TV con input HDMI

puts tv.see # => "televisor apagado"

puts tv.turn_on # => "televisor encendido"

puts tv.see # => "viendo desde hdmi"

puts tv.change_input "diplay-port" # => "input no soportado"

puts tv.see # => "viendo desde hdmi"

puts tv.turn_off # => "televisor apagado"