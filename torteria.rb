class Torteria
  @@tortas = { "milanesa" => 5, "hawaina" => 10, "cubana" => 15 }
  @@times = []
  def pedidos(tipo_t, cantidad)
    #@@tortas = { "milanesa" => 5, "hawaina" => 10, "cubana" => 15 }
    if tipo_t == @@tortas.keys[0]
      @@times << @@tortas[tipo_t]
    elsif tipo_t == @@tortas.keys[1]
      @@times << @@tortas[tipo_t]
    elsif tipo_t == @@tortas.keys[2]
      @@times << @@tortas[tipo_t]
    else
      "Confirma el pedido"
    end
    # case tipo_t
    # when tipo_t == @@tortas.keys[0] then @@times << @@tortas[tipo_t]
    # when tipo_t == @@tortas.keys[1] then @@times << @@tortas[tipo_t]
    # when tipo_t == @@tortas.keys[2] then @@times << @@tortas[tipo_t]
    # end 
  end

  def horno
    p "El horno tiene #{@@times.length} tortas"
    @@times.each do |time|
      p "La torta #{@@tortas.key time} debera estar #{time} min en el horno"
    end
  end 

  def alert
    
  end
end

pedido_1 = Torteria.new
pedido_2 = Torteria.new
pedido_3 = Torteria.new

pedido_1.pedidos("milanesa", 1)
pedido_2.pedidos("hawaina", 1)
pedido_3.pedidos("cubana", 1)
pedido_1.horno
# pedidos("milanesa", 1)
# p horno