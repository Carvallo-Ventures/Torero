class NotificationMailer < ApplicationMailer
	default from: "notificatinos@torero.com"

	def rotation_notification(user,rotation)
			@user= user
			@rotation=rotation
			
		mail(
			to: "#{user.email}",
			subject: "You have an update relating to your #{rotation.title} coop rotation"
			)
	end
end
