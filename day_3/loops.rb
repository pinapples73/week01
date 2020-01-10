# counter = 0
# my_number = 5
#
# while(counter < my_number)
#   p "counter is #{counter}"
#   counter += 1
# end
#
# #
# # while(true)
# #   p "type something"
# #   line = gets.chomp()
# #   break if(line.downcase == 'q')
# #   p "you typed #{line}"
# # end
# p "--------------------"
# numbers = [1,2,3,4,5]
#
# for number in numbers
#   p  number * 3
# end
#
# p "--------------------"
#
# total = 0
# for number in numbers
#   total = total + number
# end
#
# p total

chickens = [
  {name: 'Margaret', age: 2, eggs: 0},
  {name: 'Hetty', age: 1, eggs: 2},
  {name: 'Henrietta', age: 3, eggs: 1},
  {name: 'Audrey', age: 2, eggs: 0},
  {name: 'Deirde', age: 18, eggs: 20}
]

for chicken in chickens
  p "#{chicken[:name]} is #{chicken[:age]}"
end

total_eggs = 0

for chicken in chickens
  total_eggs += chicken[:eggs]
  chicken[:eggs] = 0
end

p "Total eggs #{total_eggs}"


for chicken in chickens
  if chicken[:eggs] > 0
    p 'eggggss!!!' # will never be printed
  end
end
