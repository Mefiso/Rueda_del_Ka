require 'gtk3'
class Rueda

	def initialize num, handler
		@ka_num = Integer(num)
		@ka_wheel = {0 => 0}
		@langostruosidades = ["¿Pica chica?", "¿Dada cham?", "¿Deda chec?", "¿Toma choma?", "¿Duma chuma?"]
		@t1 = Thread.new{run()}
		@hand = handler
	end

	def run
		GLib::Idle.add{@hand.call(@ka_num.to_s, method(:calcular))}
	end
	
	def calcular window
		if !(is_prime? @ka_num)
  			GLib::Idle.add{window.update_text "Has olvidado el rostro de tu padre.\n"}
		elsif @ka_num==1
  			GLib::Idle.add{window.update_text "Eso es Gan, pero no Dis.\n"}
		else
  			i = 2
  			while @ka_wheel.length < @ka_num
    				if is_prime?(i) && !(@ka_wheel.value? i%@ka_num)
      					@ka_wheel[i] = i%@ka_num
      					GLib::Idle.add{window.update_text @langostruosidades[rand(5)]}
    				end
    				i += 1
  			end
  			GLib::Idle.add{window.update_text "La rueda del Ka de #{@ka_num} es:"}
  			@ka_wheel.each_key{ |x| GLib::Idle.add{window.update_text "#{x} => #{@ka_wheel[x]}"}}
  			GLib::Idle.add{window.update_text "Digamos gracias, sai.\n"}
		end
	end
	
	def is_prime? (num)
  		for i in 2...num
    			return false if num%i==0
  		end
  		return true
	end
end	
