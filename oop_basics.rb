class Car

	attr_accessor :color, :gov_nom

	def color
		if @color == nil
			"White"
		else
			@color
		end
	end

	def describe
		puts "I am a Car of class #{self.class}"
		puts "My color is #{color}"
		puts "And my Gov Nom is #{gov_nom}"
	end

end

module ArmyToys

	attr_accessor :number_of_missles

	def number_of_missles
		if @number_of_missles == nil
			10
		else
			@number_of_missles
		end
	end

	def kick_ass
		puts "OMG! Ba bah"
		@number_of_missles = 0
	end
end

class Bus < Car
	def start_engine
		puts "pum pum pum pum"
	end
end


class Lamborgini < Car

	include ArmyToys

	def start_engine
		puts "ZZZZZZZZZZZZZZZZZZZZZZZ"
	end
end

class CoolBus <  Bus
	def start_engine
		puts "pum pum pum ZZZZZZZZZZZZZZZZZZ"
	end
end

some_mashine = Lamborgini.new

#some_mashine.color = "green"
some_mashine.gov_nom = "AF3674IY"

some_mashine.describe
some_mashine.start_engine
some_mashine.kick_ass

some_bus = CoolBus.new
some_bus.color = "red"
some_bus.gov_nom = "AF8234IY"

some_bus.describe
some_bus.start_engine
