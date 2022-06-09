require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  name_list = spicy_foods.map do |food|
     food[:name]
  end
   name_list
end

def spiciest_foods(spicy_foods)
  spicy_foods.filter do |i|
  i[:heat_level] > 5
  end
end


def print_spicy_foods(spicy_foods)
  spicy_foods.map do |food|
  puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end 
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
  food[:cuisine] == cuisine
  end
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  spicy_foods.sort do |f1,f2|
  f1[:heat_level] <=> f2[:heat_level]
  end
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  spicy = spiciest_foods(spicy_foods)
  print_spicy_foods(spicy)
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  total = 0
  spicy_foods.each do |food|
    total += food[:heat_level]
  end
  total / spicy_foods.length
end
