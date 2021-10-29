def selects_all_female_bears_return_name_and_age
  "SELECT bears.name, bears.age FROM bears WHERE sex = 'F';"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "SELECT name FROM bears ORDER BY name ASC"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "SELECT bears.name, bears.age FROM bears WHERE alive = True ORDER BY age ASC;"
end

def selects_oldest_bear_and_returns_name_and_age
  "SELECT name, MAX(age) FROM bears"
end

def select_youngest_bear_and_returns_name_and_age
  "SELECT name, MIN(age) FROM bears"
end

def selects_most_prominent_color_and_returns_with_count
  "SELECT color, max(ColorCount) FROM bears, (SELECT count(color) AS ColorCount FROM bears GROUP BY color);"
end

def counts_number_of_bears_with_goofy_temperaments
  "SELECT count(temperament) FROM bears WHERE temperament = 'goofy'"
end

def selects_bear_that_killed_Tim
  "SELECT id, name, age, sex, color, temperament, alive FROM bears WHERE name is null"
end
