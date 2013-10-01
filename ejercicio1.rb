module Animal
      def initialize
      end
      def caminar(n)
         puts "se mueve"
      end
      def nada
         puts " esta nadando"
      end
      def desplazarse
        puts 'se desplaza'
      end   
end

class Mamifero
    
   def algo
    puts "algo"
   end
end

class Hombre < Mamifero 
   include Animal  
   def habla
     puts "hola"
   end  
end
class Perro < Mamifero 
   include Animal  
   def ladra
     puts "guau"
   end  
end

class Ave
    def otro_algo
    puts "algo"
   end
end
class Aguila < Ave
   include Animal
   def volar
     puts "vuela"
   end
end

class Reptiles
    def algo_algo
    puts "algo"
   end
end
class Boa < Reptiles
   include Animal
   def presiona
     puts "aprieta"
   end  
end
class Cobra < Reptiles
   include Animal
   def morder
     puts "muerde"
   end  
end
class Cococdrilo  < Reptiles
   include Animal
end

class Anfibios
  def algo_frio
    puts "algo"
   end
end
class Sapo < Anfibios
   include Animal
   def saltar
     puts "salta"
   end  
end
class Peces
  def algo_mojado
    puts "algo"
   end
end
class Pinguinos < Peces
   include Animal
end
class Ballena < Peces
   include Animal  
end
class Tiburon < Peces
   include Animal
end
# casos de prueba
h = Hombre.new
h.habla
h.camina
a = Aguila.new
a.volar
s = Sapo.new
s.saltar
p = Perro.new
p.vuela
