module Animal
      def initialize
      end
      def caminar(n)
         puts "algo"
      end
      def nada
         puts "algo"
      end
      def desplazarse
        puts 'se desplaza'
      end   
end

class mamifero
end

class hombre < mamifero 
   include Animal  
   def habla
     puts "hola"
   end  
end
class perro < mamifero 
   include Animal  
   def ladra
     puts "hola"
   end  
end

class ave
end
class aguila < ave
   include Animal
   def volar
   end
end

class reptiles
end
class boa < reptiles
   include Animal
   def presiona
     puts "aprieta"
   end  
end
class cobra < reptiles
   include Animal
   def morder
     puts "muerde"
   end  
end
class cococdrilo  < reptiles
   include Animal
end

class anfibios
end
class sapo < anfibios
   include Animal
   def saltar
     puts "salta"
   end  
end
class peces
end
class pinguinos < peces
   include Animal
end
class ballena < peces
   include Animal  
end
class tiburon < peces
   include Animal
end
