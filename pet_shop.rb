def pet_shop_name(pet_shop_hash)
  # p pet_shop_hash[:name]
  return pet_shop_hash[:name]
end

def total_cash(pet_shop)
 return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(till, cash)
  return till[:admin][:total_cash]+=cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pets, number)
  return pets[:admin][:pets_sold]+=number
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end


def pets_by_breed(pet_shop, breed)
  breed_list = []
  for pet in pet_shop[:pets]
    if breed==pet[:breed]
      breed_list << breed
    end
  end
    return breed_list
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
     return pet
   end
 end
 return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
     pet_shop[:pets].delete(pet)
   end
 end
end


def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets] << pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  return customer[:cash] -= cash
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end
