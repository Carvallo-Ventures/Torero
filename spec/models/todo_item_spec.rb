require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  	it 'has a valid factory' do
		expect(FactoryGirl.create(:todo_item)).to be_valid
	end

  it "in invalid without content" do
  expect(FactoryGirl.build(:todo_item, content: nil)).to_not be_valid
	end

  it "is valid without a due date" do
  	expect(FactoryGirl.build(:todo_item, due_date: nil)).to be_valid
  end 
  
end
