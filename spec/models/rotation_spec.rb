# model spec tests for the rotation model 


require 'rails_helper'

describe Rotation do 
	it 'has a valid factory' do
		#FactoryGirl.create(:rotation).should be_valid
		expect(FactoryGirl.create(:rotation)).to be_valid
	end

	it 'is invalid without a title' do
	user=FactoryGirl.build(:rotation, title: nil)
	expect(user).to_not be_valid
	#expect(FactoryGirl.build(:rotation, title: nil)).to_not be_valid
	#both work. one is cleaner than the otehr
	end

	it 'is invalid without  start_date' do
	expect(FactoryGirl.build(:rotation, start_date: nil)).to_not be_valid
	end

	it 'returns a sorted array of results that match'
end