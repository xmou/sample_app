module UsersHelper
	def full_title(page_title)
    base_title = "Pieces"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
	def gravatar_for(user, options = { size: 50 })
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar_id}.png?s=#{size}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
