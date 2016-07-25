class EpicenterController < ApplicationController
  
before_filter :authenticate_user!,except: [:show_user]
  def feed
@following_tweets =[]
Tweet.all.each do |tweet|
    if current_user.following.include?(tweet.user_id)
        @following_tweets.push(tweet)
        end
     end
  end
  def show_user
    @user = User.find(params[:id])
  end
  def now_following
  	current_user.following.push(params[:id].to_i)
  	current_user.save

  	redirect_to :back
  end
  def unfollow
  	current_user.following.delete(params[:id].to_i)
  	current_user.save

  	redirect_to :back
  end
end

def following
	@user = User.find(params[:id])
	@users = []
	User.all.each do |u|
		if @user.following.include?(u.id)
			@users.push(u)
		end
	end
end


def tag_tweets
	@tag = Tag.find(params[:id])
end
