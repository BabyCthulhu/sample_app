module UsersHelper

  # Returns the Gravatar (http://gravatar.com) for the given user
  def gravatar_for(user, options = {})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png"

    image_options = { alt: user.name, class: "gravatar" }

    if options[:size]
      image_options[:width] = image_options[:height] = options[:size] 
    end

    image_tag(gravatar_url, image_options)
  end
end
