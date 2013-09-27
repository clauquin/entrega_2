class purchase
     attr_reader :carrito 
     def new
      carrito= Array.new
     end
     def add (p)
         carrito[]=p
     end
     def delete
     end
     def total
         carrito
     end
     def apply_discount
     end       
