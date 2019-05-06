module UsersHelper
	def user_avatar
		if current_user.avatar.attached?
			 image_tag(@user.avatar, style:'width:100%')
		else
			image_tag('http://chittagongit.com//images/default-profile-icon/default-profile-icon-24.jpg', style:'width:100%')
		end
	end
end
