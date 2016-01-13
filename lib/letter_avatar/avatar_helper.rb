# encoding: UTF-8
module LetterAvatar
  module AvatarHelper

    def letter_avatar_for(name, size = 64, options)
      LetterAvatar::Avatar.generate(name, size, options)
    end

    def letter_avatar_url_for(avatar_path)
      avatar_path.to_s.sub('public/','/')
    end

    def letter_avatar_tag(name, size = 64, options = {})
      image_tag(letter_avatar_url_for(letter_avatar_for(name, size, options)), options)
    end

  end
end
