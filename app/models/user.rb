class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  def slug
    if !@slug
    name = self.username
    name_single_word_array = name.split(" ")
    words = name_single_word_array.map do |word| 
        word.gsub(/[@#$%&*!';()]/, "")
        word.downcase 
    end
    slug = words.join("-")
    @slug = slug
   else
    @slug
   end
  end


  def self.find_by_slug(slug)
    self.find_by(slug: slug)
  end




end
