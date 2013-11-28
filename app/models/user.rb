class User < ActiveRecord::Base
	
	# addedsome validations
	validates :name, presence: true
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true

	# this is part of rails
	# 3.2 and 4.0
	# it puts our unencrypted password into our database
	# as an encryted password into password digest
	has_secure_password


end
