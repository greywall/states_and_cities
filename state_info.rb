require 'pry'

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@states.merge!(:TX => "Texas", :AR => "Arizona")

@cities = {
	OR: ['Portland','Salem'],
	FL: ['Miami','Orlando'],
	CA: ['San Fran', 'Tampa'],
	NY: ['New Jersey','New York City'],
	MI: ['Detroit','Flint'],
	TX: ['Dallas', 'Austin'],
	AR: ['Tucson', 'Pheonix']
}

def describe_state(state)
	state_code = @states[state.to_sym]
	city_code = @cities[state.to_sym].join(" , ")
	puts "#{state} is for #{state_code}. It's major cities are: #{city_code}"
end

describe_state('TX')

@taxes = {
	OR: 7.5,
	FL: 6,
	CA: 5,
	NY: 9,
	MI: 4,
	TX: 7,
	AR: 8
}

def calculate_tax(state,dollar_amount)
	state_tax = @taxes[state.to_sym]
	total_cost = dollar_amount.round(2) * state_tax
	puts total_cost
end

calculate_tax('CA',111.33)

def find_state_for_city(city)
	@cities.each do |key,value|
		if value.include? city
			puts key
		end
	end
end

find_state_for_city('Miami')


# puts @cities[:CA][0]






