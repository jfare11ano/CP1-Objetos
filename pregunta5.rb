# para que los datos estén
#contenidos en un hash donde los números serán las claves y la traducción los valores. El
#método generate_hash además debe retornar la traducción del número recibido como
#argumento

class Morseable
attr_accessor :number,:code
        def initialize(number)
          @number = number
          diccionary = {0=> '-----',1=> '.----',2=> '-.---',3=> '--.--',4=> '---.-',5=> '----.',
             6=> '-....',7=> '--...',8=> '---..',9=> '----.'}
          @code = diccionary.fetch(number)
          end

        def generate_hash(number)
          exit = {self.number=>self.code}
        end

        def to_morse
          self.generate_hash(@number)
        end
end

m = Morseable.new(8)
print m.to_morse
