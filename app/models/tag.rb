class Tag < ActiveRecord::Base

	has_many :tweeet_tags
	has_many :tweets, through: :tweeet_tags
end
