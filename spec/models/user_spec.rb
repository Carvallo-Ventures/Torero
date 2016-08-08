# model spec tests for the user model 


require 'rails_helper'

describe User do
	it 'has a valid factory'
	it 'is invalid without a password'
	it 'is invalid without an email'
	it 'is invalid without a specific role'
end
