class User < ActiveRecord::Base
	
	# added some validations
	validates :name, presence: true, unless: :has_social_login?
	validates :username, presence: true, uniqueness: true, unless: :has_social_login?
	validates :email, presence: true, uniqueness: true, unless: :has_social_login?
	validates :password, presence: true, confirmation: true, unless: :has_social_login?

	# this is part of rails
	# 3.2 and 4.0
	# it puts our unencrypted password into our database
	# as an encryted password into password digest
	has_secure_password validations: false

	def has_social_login?
		# question mark above is just part of the name
		facebook_id.present? or twitter_id.present? or linkedin_id.present?
		
	end


end
