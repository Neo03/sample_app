module UsersHelper
	#Returns the gravatar for the given user(http://gravatar.com)
	def gravatar_for(user, options = {size: 60})
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
