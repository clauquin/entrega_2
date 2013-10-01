class Purchase
     attr_reader :carrito :total
     def new
      @carrito= Array.new;
      @total= 0
     end
     def add (p)
         @carrito.push(p)
     end
     def delete (p)
          @carrito.delete(p)
     end
     def total
         @total=@carrito.inject(0) {| sum, producto| sum + producto.precio}
     end
     def apply_discount
          @carrito.apply_discount do |purchase|
               hammers = purchase.products.collect { |product| product.code == yield }
          purchase.total -= purchase.total * 0.1 if hammers.any?
  end
     end       


p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
p.add p1
p.add p2

p.total  
