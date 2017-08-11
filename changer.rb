def coinchanger(num)
  your_change = {quarter: 0, dime: 0, nickel: 0, penny: 0}
  #will return coin values of change
  coin_values = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  num = num.to_i
  coin_values.each { |key, value| while value <= num
   your_change[key] += 1
  num = num - value
end}
your_change.collect { |k, v| "#{v} #{k}, " }.join
end
# def hashconverter(your_change)
# 	change = ""
# 	your_change.each do |key, value|
# 		if value > 0
# 		change << " " + value.to_s + " " + key.to_s+ "s"
# 	    end
		
# 	end
# 	change
# end