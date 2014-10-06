days_of_week = ["Monday", "Tuesday", "Wednesday",
	 "Thursday", "Friday", "Saturday", "Sunday"]

# Enter temperatures

temperatures = []

days_of_week.each do |name_of_day|
	puts "Dear Mr. operator, enter Temperature for " + name_of_day
	temperatures << gets.to_i	
end

# Calculate average temperature

sum = 0

temperatures.each do |temp_of_day|
	sum = sum + temp_of_day
end

puts "Average temperature is #{sum/7.0}"

# Calculate min temperature

min = temperatures[0]
min_day = days_of_week[0]

temperatures.each_with_index do |temp_of_day, i|
	if min > temp_of_day
		min = temp_of_day
		min_day = days_of_week[i]		
	end
end

puts "Min temperature was at #{min_day} and equals to #{min}"

