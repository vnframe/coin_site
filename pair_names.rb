def pairs(names)
  pair = names.shuffle.each_slice(2).to_a
    if names.length % 2 == 0
    else
      last_one = pair.pop
      last_one = last_one[0]
      pair[0] << last_one
    end    
  #   #  teams = ""
  #   # pair.each do |value|
  #   #   if value.include? (value[2])
  #   #     teams << value[0] + ", " + value[1] + " and " + value[2] + "<br>"
  #   #   else
  #   #     teams << value[0] + " and " + value[1] + "<br>"
  #   #   end
  #   # end
  #  teams
  # pair.map!{ |name1,name2,name3| "#{name1} "", " "#{name2}" ", " "#{name3}"}.join"<br>"
    pair
end