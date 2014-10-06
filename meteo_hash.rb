days_of_week = ["Monday", "Tuesday", "Wednesday",
	 "Thursday", "Friday", "Saturday", "Sunday"]

# Enter temperatures

meteo_days = []

days_of_week.each do |name_of_day|
	puts "Dear Mr. operator, enter data for " + name_of_day
	puts "temperature: "
	temperature = gets.to_i	
	puts ".. and speed of wind: "
	speed_of_wind = gets.to_i	
	meteo_days << {:name_of_day => name_of_day, :temperature =>  temperature,
		:speed_of_wind => speed_of_wind}
end

p meteo_days

# Calculate average temperature

sum = 0

meteo_days.each do |day_of_week_structure|
	sum = sum + day_of_week_structure[:temperature]
end

puts "Average temperature is #{sum/7.0}"

# Calculate min temperature

min = meteo_days[0][:temperature]

meteo_days.each do |meteo_day|
	if min > meteo_day[:temperature]
		min = meteo_day[:temperature]
	end
end

min_days = meteo_days.select{|meteo_day| meteo_day[:temperature] == min}
  .map{|meteo_day| meteo_day[:name_of_day]}.join(",")

puts "Min temperature was #{min}"
puts "It happened at #{min_days}"

# Calculate average speed of wind

sum = 0

meteo_days.each do |day_of_week_structure|
	sum = sum + day_of_week_structure[:speed_of_wind]
end

puts "Average speed of wind is #{sum/7.0}"

# Calculate min speed of wind

min = meteo_days[0][:speed_of_wind]

meteo_days.each do |meteo_day|
	if min > meteo_day[:speed_of_wind]
		min = meteo_day[:speed_of_wind]
	end
end

min_days = meteo_days.select{|meteo_day| meteo_day[:speed_of_wind] == min}
  .map{|meteo_day| meteo_day[:name_of_day]}.join(",")

puts "Min speed of wind was #{min}"
puts "It happened at #{min_days}"

