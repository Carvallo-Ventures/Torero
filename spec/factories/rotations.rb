
require 'faker'

FactoryGirl.define do
	factory :rotation do 
		title {Faker::StarWars.character}
		description {Faker::StarWars.quote}
		start_date {Faker::Date.between(2.days.ago, Date.today)}
		end_date {Faker::Date.forward(20)}
end
end