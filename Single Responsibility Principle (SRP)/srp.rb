#Código ruim (não tem apenas uma responsabilidade)
class Order
  def initialize(items)
    @items = items
  end

  def calculate_total
    @items.sum { |item| item[:price] * item[:quantity] }
  end

  def save_to_database
    # código para salvar pedido no banco de dados
  end

  def send_email_confirmation
    # código para enviar confirmação por e-mail
  end
end

#Código bom (responsabilidade única)
class Order # Representar o pedido
  def initialize(items)
    @items = items
  end

  def calculate_total
    @items.sum { |item| item[:price] * item[:quantity] }
  end
end

class OrderRepository
  def save(order) # Salvar pedido no banco de dados
    
  end
end

class EmailService
  def send_order_confirmation(order) # Enviar confirmação por e-mail
    
  end
end
