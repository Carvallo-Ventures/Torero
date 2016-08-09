class NotificationMailer < ApplicationMailer
	default from: "notificatinos@torero.com"

	def rotation_notification(user,rotation_update)
			@user= user
			@rotation_update=rotation_update
			@rotation=rotation_update.rotation_id
		mail(
			to: "#{user.email}",
			subject: "You have an update relating to your coop rotation"
			)
	end

	def student_notification(user, rotation)
		@user=user
		@rotation=rotation

		mail(
			to: "#{user.email}",
			subject: "You have been added to the #{rotation.title} group"
			)
	end
end
