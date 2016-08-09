class Rotation < ActiveRecord::Base
	belongs_to :user
	has_many :todo_items

	validates :title, presence: true
	validates :start_date, presence: true
end
