def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  result = false
  snack_array = person[:favourites][:snacks]
  for snack in snack_array
    if food == snack
      result = true
    end
  end
  return result
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_monies(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def lend(lender, lendee, money)
  lender_before = lender[:monies]
  lendee_before = lendee[:monies]
  lender[:monies] -= money
  lendee[:monies] += money
  result = false
  if (lender_before != lender[:monies]) && (lendee_before != lendee[:monies])
    result = true
  end
  return result
end

def join_snacks(people)
  combined_snacks = []
  for person in people
    combined_snacks.concat(person[:favourites][:snacks])
  end
  return combined_snacks
end
