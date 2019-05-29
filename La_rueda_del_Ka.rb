#puts "Ka. El Ka es una rueda, cuyo único propósito es girar, y al final vuelve al mismo lugar donde empieza. Lo que haces vuelve a perseguirte.\nEl tiempo es un rostro en el agua.\nSi es el Ka, vendrá como el viento, y tus planes resistirán ante él no más que un granero ante un ciclón."
#puts "Cuál es el número de tu ka-tet? "
class rueda

	def initialize num
		ka_num = Integer(num)
		ka_wheel = {0 => 0}
		langostruosidades = ["¿Pica chica?", "¿Dada cham?", "¿Deda chec?", "¿Toma choma?", "¿Duma chuma?"]
	end

	def calcular
		if !(is_prime? ka_num)
  			print "Has olvidado el rostro de tu padre.\n"
		elsif ka_num==1
  			print "Eso es Gan, pero no Dis.\n"
		else
  			i = 2
  			while ka_wheel.length < ka_num
    				if is_prime?(i) && !(ka_wheel.value? i%ka_num)
      					ka_wheel[i] = i%ka_num
      					puts langostruosidades[rand(5)]
    				end
    				i += 1
  			end
  			puts "La rueda del Ka de #{ka_num} es:"
  			ka_wheel.each_key{ |x| puts "#{x} => #{ka_wheel[x]}"}
  			print "Digamos gracias, sai.\n"
		end
	end
	
	def is_prime? (num)
  		for i in 2...num
    			return false if num%i==0
  		end
  		return true
	end
end
  
	
