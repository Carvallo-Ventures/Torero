class Rotation < ActiveRecord::Base
	belongs_to :user
	has_many :todo_items, :dependent => :delete_all
	has_many :coops, :dependent => :delete_all
	has_many :rotation_updates, :dependent => :delete_all
	
	validates :title, presence: true
	validates :start_date, presence: true


end
