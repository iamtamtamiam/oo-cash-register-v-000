class CashRegister
  
  attr_accessor :total, :discount
  
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount =  discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items << title
  end 
  
  def apply_discount
    @total = @total - (@discount/100.to_f) * @total
    puts "After the discount, the total comes to $
  end 
end 

