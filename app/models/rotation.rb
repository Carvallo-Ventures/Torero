class Rotation < ActiveRecord::Base
	belongs_to :user
	has_many :todo_items, :dependent => :delete_all

	validates :title, presence: true
	validates :start_date, presence: true


end
