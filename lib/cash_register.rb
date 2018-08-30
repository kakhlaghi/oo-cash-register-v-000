require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item, :price
  self.item = []
  def initialize(discount = 20)
    self.total = 0
    self.discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.item << item
    self.price = price
    self.total += price * quantity
  
  end
  
  def apply_discount
      self.total = self.total * (1-(self.discount/100.0))
    if self.total != 0
      return "After the discount, the total comes to $#{self.total.to_i}."
    else 
      return "There is no discount to apply."
    end
    
  end
  
  def items
    self.item
  end
  
  def void_last_transaction
  
  end
end  