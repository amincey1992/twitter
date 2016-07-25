class Tweet < ActiveRecord::Base

	belongs_to :user


	has_many :tweeet_tags
	has_many :tags, through: :tweeet_tags


	validates :message, presence: true
    validates :message, length: {maximum: 140, too_long: "A tweet is only 140 max. Everybody knows that!"}
end
