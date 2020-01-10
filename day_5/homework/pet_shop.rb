def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(shop_name)
  return shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop_name, amount_cash)
  return shop_name[:admin][:total_cash] += amount_cash
end

def pets_sold(shop_name)
  return shop_name[:admin][:pets_sold]
end

def increase_pets_sold(shop_name, amount_pets)
  return shop_name[:admin][:pets_sold] += amount_pets
end

def stock_count(shop_name)
  return shop_name[:pets].length()
end

def pets_by_breed(shop_name, breed)
  pet_by_breed = []
  for pet in shop_name[:pets]
      if breed == pet[:breed]
        pet_by_breed.push(pet)
      end
  end
  return pet_by_breed
end

def find_pet_by_name(shop_name, pet_name)
  for pet in shop_name[:pets]
    if pet_name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop_name, pet_name)
  for pet in shop_name[:pets]
    if pet_name == pet[:name]
      shop_name[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop_name, new_pet)
  shop_name[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount_cash)
  customer[:cash] -= amount_cash
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

#----------OPTIONAL--------------------

def customer_can_afford_pet(customer, new_pet)
  customer_cash = customer[:cash]
  pet_cost = new_pet[:price]

  if customer_cash >= pet_cost
    return true
  else
    return false
  end
end

# def sell_pet_to_customer(shop_name, sold_pet, customer)
#   if sold_pet != nil
#     if customer_can_afford_pet(customer, sold_pet) == true
#       customer[:pets].push(sold_pet)
#       shop_name[:admin][:pets_sold] += 1
#       customer[:cash] -= sold_pet[:price]
#       shop_name[:admin][:total_cash] += sold_pet[:price]
#     end
#   end
# end

#---------refactor of above code--------------

def sell_pet_to_customer(shop_name, sold_pet, customer)
  if sold_pet != nil
    if customer_can_afford_pet(customer, sold_pet) == true
      add_pet_to_customer(customer, sold_pet)
      increase_pets_sold(shop_name, 1)
      remove_customer_cash(customer, sold_pet[:price])
      add_or_remove_cash(shop_name, sold_pet[:price])
    end
  end
end
