require 'pry'
class CashRegister
  attr_accessor :discount, :items, :total
  
  # initialize w/ optional variable: discount
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  # add an item to the system, #optional quantity argument
  # if quantity = nil, only add price
  # else multiply price by quanity and add that to total
  def add_item(title, price, quantity = nil)
    if quantity == nil
      @items << title
      @total += price
    else 
      quantity.times do
        @items << title
      end
      @total += price * quantity
    end
  end
  
  # if discount, apply it and return a message with the total;
  # else return a message saying there is no discount
  def apply_discount
    if self.discount === nil
      "There is no discount to apply."
    else
      self.total = (self.total * (1 - self.discount/100.to_f)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def void_last_transaction
    
  end
end