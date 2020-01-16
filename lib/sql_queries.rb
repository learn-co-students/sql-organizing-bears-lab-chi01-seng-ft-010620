
#   it 'selects all of the female bears and returns their name and age' do
#     expect(@db.execute(selects_all_female_bears_return_name_and_age)).to eq([["Tabitha", 6],["Melissa", 13], ["Wendy", 6]])
#   end

#   it 'selects all of the bears names and orders them in alphabetical order' do
#     expect(@db.execute(selects_all_bears_names_and_orders_in_alphabetical_order)).to eq([[nil],["Grinch"],["Melissa"],["Mr. Chocolate"],["Rowdy"],["Sargeant Brown"],["Tabitha"],["Wendy"]])
#   end

#   it 'selects all of the bears names and ages that are alive and order them from youngest to oldest' do
#     expect(@db.execute(selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest)).to eq([["Grinch", 2], ["Tabitha", 6], ["Wendy", 6], ["Rowdy", 10], ["Melissa", 13]])
#   end

#   it 'selects the oldest bear and returns their name and age' do
#     expect(@db.execute(selects_oldest_bear_and_returns_name_and_age)).to eq([["Mr. Chocolate", 20]])
#   end

#   it 'selects the youngest bear and returns their name and age' do
#     expect(@db.execute(select_youngest_bear_and_returns_name_and_age)).to eq([["Grinch", 2]])
#   end

#   it 'selects the most prominent color and returns it with its count' do
#     expect(@db.execute(selects_most_prominent_color_and_returns_with_count)).to eq([["dark brown", 3]])
#   end

#   it 'counts the number of bears with goofy temperaments' do
#     expect(@db.execute(counts_number_of_bears_with_goofy_temperaments)).to eq([[1]])
#   end

#   it 'selects the bear that killed Tim' do
#     expect(@db.execute(selects_bear_that_killed_Tim)).to eq([[8, nil, 20, "M", "black", "aggressive", 0]])
#   end
# end


def selects_all_female_bears_return_name_and_age
  "select name, age from bears where gender = 'F';"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "select name from bears order by name;"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "select name, age from bears where alive = 1
  ORDER BY age asc;"
end

def selects_oldest_bear_and_returns_name_and_age
  "select name, age from bears order by age desc limit 1; "
end

def select_youngest_bear_and_returns_name_and_age
  "select name, age from bears order by age asc limit 1;"
end

def selects_most_prominent_color_and_returns_with_count
  "select bears.color, COUNT(bears.color) FROM bears GROUP BY bears.color ORDER BY COUNT(*) DESC limit 1;"
end

def counts_number_of_bears_with_goofy_temperaments
  "select count(bears.temperament) from bears where bears.temperament = 'goofy';"
end

def selects_bear_that_killed_Tim
  "select * from bears where name IS NULL;"
end
