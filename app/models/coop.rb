class Coop < ActiveRecord::Base
	belongs_to :Rotation

	validates :name, presence:true
	validates :email, presence:true, format: /@/, uniqueness: true


		def send_notifications!(rotation)
			
			NotificationMailer.student_notification(self, rotation).deliver_later
		end
	
end
