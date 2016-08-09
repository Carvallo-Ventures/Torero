class Rotation < ActiveRecord::Base
	belongs_to :user
	has_many :todo_items, :dependent => :delete_all
	has_many :coops, :dependent => :delete_all
	has_many :rotation_updates, :dependent => :delete_all
	
	validates :title, presence: true
	validates :start_date, presence: true


	def send_notifications!
		#TODO: Get all unique users assigned to the rotation
		users= rotation.coops.uniq
		#TODO: Send an email to each of those users 
		users.each do |user|
			NotficationMailer.rotation_notification(user, self).deliver_later
		end
	end
end
