# вивід простого рядку
puts "ФІТНЕС"   # коментар в кінці рядку

puts "Як тебе звати? "
name = gets
puts "Привіт " + name

puts "Якій в тебе зріст?"
height = gets.to_i

puts "Яка в тебе вага?"
weight = gets.to_i

if height - weight < 100
	puts name.chop + ", Треба меньше жерти"
end
if height - weight > 100
	puts name + ", Треба быльше жерти"
end
if height - weight == 100
	puts name + ", У вас ідеальна фігура"
end


