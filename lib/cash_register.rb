class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price *quantity
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    if discount != 0
=======
  attr_accessor :total, :discount
  
  def initialize(discount = 20)
    @total = 0
    @discount = 20
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end
  
    def apply_discount
      if discount != 0
>>>>>>> 0a385beedda83e878aa5a33eb7483c1d7e842142
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
<<<<<<< HEAD
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
  
end
=======
    end
  end
>>>>>>> 0a385beedda83e878aa5a33eb7483c1d7e842142
