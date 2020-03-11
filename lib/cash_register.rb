require 'pry'
class CashRegister
  
  attr_accessor:discount, :total
  def initialize(d=0)
  @total = 0 
  @discount = d 
  @item = []
  end
  
  def total=(num)
    @total = num
  end

  def add_item(title,price, q=1)
    self.total += price*q
    i = 0 
    while i<q do
    @item << title
   end
  end

  def apply_discount
    if @discount>0
       @total = @total*(1-@discount.to_f/100)
     "After the discount, the total comes to $#{total.to_i}."
     else
     "There is no discount to apply."
    end
  end
 
 def items
  @item
 end


end
