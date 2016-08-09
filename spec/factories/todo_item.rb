require 'faker'

FactoryGirl.define do
	factory :todo_item do 
		content {Faker::StarWars.quote}
		due_date {Faker::Date.forward(20)}
end
end