class StaticPagesController < ApplicationController
  def home
  	@feed_items = current_user.feed.paginate(page: params[:page])
  	@micropost =  current_user.microposts.build if signed_in?
  	
  end

  def help
  end

  def about
  end

  def contact
  end
end
