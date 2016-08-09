class Coop < ActiveRecord::Base
	belongs_to :Rotation

	validates :name, presence:true
	validates :email, presence:true, format: /@/, uniqueness: true
end
