class Torta
  @@tortas = { "milanesa" => 5, "hawaiana" => 10, "cubana" => 15 }
   @@times = []
  def initialize(type, cantidad)
    @type = type
    @cantidad = cantidad
  end

  def pedido
    if @type == @@tortas.keys[0]
      @@times << @@tortas[@type]
    elsif @type == @@tortas.keys[1]
      @@times << @@tortas[@type]
    elsif @type == @@tortas.keys[2]
      @@times << @@tortas[@type]
    else
      "Confirma el pedido"
    end
  end

  def horno
    p "El horno tiene #{@@times.length} torta(s)"
    @@times.each do |time|
      p "La torta #{@@tortas.key time} debera estar #{time} min en el horno"
    end
    puts "Comienza en conteo:" 
    
    p self.temporizador
    # temporizador = loop do 
    #   t = Time.now
    #   puts "#{t.hour} : #{t.min} : #{t.sec}"
    #   sleep 5 
    # end
  end

  def temporizador
    temporizador = loop do 
      t = Time.now
      puts "#{t.hour} : #{t.min} : #{t.sec}"
      sleep 5 
    end 
  end

  def alert
  end

end

pedido1 = Torta.new("milanesa", 1)
p pedido1.pedido
p pedido1.horno