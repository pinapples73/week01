def add_array_lengths(array1, array2)
  return array1.length() + array2.length()
end

def sum_array(numbers)
  total = 0
  for number in numbers
    total += number
  end
  return total
end

def is_item_in_array(array, item)
  result = false
  for thing in array
    if thing == item
      result = true
    end
  end
  return result
end

def get_first_key(hash)
  return hash.keys[0]
end
