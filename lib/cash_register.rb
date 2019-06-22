class CashRegister
  
  attr_accessor :total, :discount
  
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount =  discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items << "#{title} " * quantity
  end 
  
  def apply_discount
    if @discount > 0 
      @total = @total - (@discount/100.to_f) * @total
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def items
    @items
  end 
end 

