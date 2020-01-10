# # my_first_hash = Hash.new()
# # my_second_hash ={}
#
# meals = { 'breakfast' => 'yoghurt',
#           'lunch' => 'soup',
#           'dinner' => 'risotto'}
#
# p meals['lunch']
#
# meals['supper'] = 'pancakes'
# p meals
#
# meals['dinner'] = 'pasta'
# p meals
#
# meals.delete('breakfast')
# p meals
#
#
# #helpful methods
# p meals.keys()

# p :my_symbol
# p :hello
#
# meals = { :breakfast => 'yoghurt',
#           :lunch => 'soup' }
#
# meals = { breakfast: 'yoghurt',
#           lunch: 'soup' }
#
# p meals[:breakfast]

countries = {
  uk:{
    capital: 'London',
    population: 64
    },
  germany:{
    capital: 'Berlin',
    population: 100
    }
  }

p countries[:germany][:population]
