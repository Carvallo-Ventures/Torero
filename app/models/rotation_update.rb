class RotationUpdate < ActiveRecord::Base
	belongs_to :rotation


		def send_notifications!
			#TODO: Get all unique users assigned to the rotation
			users= rotation.coops.uniq
			#TODO: Send an email to each of those users 
			users.each do |user|
				NotificationMailer.rotation_notification(user, self).deliver_later
			end
		end
end
