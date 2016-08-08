# model spec tests for the rotation model 


require 'rails_helper'

describe Rotation do 
	it 'has a valid factory' do
		#FactoryGirl.create(:rotation).should be_valid
		expect(FactoryGirl.create(:rotation)).to be_valid
	end
	it 'is invalid without a title'
	it 'is invalid without  start_date'
end