class TweeetTag < ActiveRecord::Base

	belongs_to :tweet
	belongs_to :tag
end
