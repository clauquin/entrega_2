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
     def apply_discount (producto)
          @carrito.apply_discount do |purchase|
               iguales = @carrito.collect { |product| product.code ==  producto.code}
          @carrito.total -= {iguales.length / 3} * producto.precio if hammers.any?
          cantidad = @carrito.each { |product, sum| sum++ }
          purchase.total -= purchase.total * 0.2 if cantidad > 10?
      end
end       


p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
p.add p1
p.add p2

p.total  
