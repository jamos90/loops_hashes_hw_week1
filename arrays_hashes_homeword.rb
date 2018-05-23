# Exercise A

# Given the following data structure:

# stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
#
# # Complete these tasks:
#
# #1. Add `"Edinburgh Waverley"` to the end of the array
#
# stops.push("Edinbrugh")
# p stops
#
# #2. Add `"Glasgow Queen St"` to the start of the array
#
# stops.insert(0, "Glasgow")
# p stops
#
# #3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
#
# stops.insert(4, "Polmont")
# p stops
#
# #4. Work out the index position of `"Linlithgow"
#
# p stops.index("Linlithgow")
#
# #5. Remove `"Livingston"` from the array using its name
#
# stops.delete("Livingston")
# p stops
#
# #6. Delete `"Cumbernauld"` from the array by index
#
# stops.delete_at(1)
# p stops
#
# #7. How many stops there are in the array?
#
# p stops.length
#
# #8. How many ways can we return `"Falkirk High"` from the array?
#
# p stops[2]
# p stops[-5]
# for stations in stops
#   if stations == "Falkirk High"
#     p stations
#   end
# end
# p stops.select {|n| n=="Falkirk High" }
# p stops.fetch(2)
# p stops.fetch(-5)
#
# #9. Reverse the positions of the stops in the array
#
# p stops.reverse()
#
# #10. Print out all the stops using a for loop
#
# for stations in stops
#  p stations
# end

# Exercise B

# Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# Complete these tasks:

#1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)

#  p users["Erik"][:twitter]
#
# #2. Get Erik's hometown
#
# p users["Erik"][:home_town]
#
# #3. Get the array of Erik's lottery numbers
# p users["Erik"][:lottery_numbers]
#
# #4. Get the type of Avril's pet Monty
#
# p users["Avril"][:pets][0][:species]
#
# #5. Get the smallest of Erik's lottery numbers
#
# p users["Erik"][:lottery_numbers[2]]
#
# #6. Return an array of Avril's lottery numbers that are even
#
# p users["Avril"][:lottery_numbers].select{|num| num.even?}
#
# #7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
#
# p users["Erik"][:lottery_numbers].push(7)
#
# #8. Change Erik's hometown to Edinburgh
#
# users["Erik"][:home_town] = "Edinburgh"
# p users["Erik"][:home_town]
#
# #9. Add a pet dog to Erik called "Fluffy"
#
# p users["Erik"][:pets] => {name: "fluffy", species:"dog"}
#
# #10. Add another person to the users hash



# Exercise C

# Given the following data structure:

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# Complete these tasks:

#1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.



#2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).

united_kingdom << {name: "Northern Island",
population: 1811000,
capital: "Belfast"}

p united_kingdom


#3. Use a loop to print the names of all the countries in the UK.

   for country in united_kingdom
  p "The countries in the UK are #{:name}"
end


#4. Use a loop to find the total population of the UK.

total_population = 0

for country in united_kingdom
  total_population += country[:population]
end

p total_population
