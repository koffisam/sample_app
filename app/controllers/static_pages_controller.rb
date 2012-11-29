class StaticPagesController < ApplicationController
  def home
  	@feed_items = current_user.feed.paginate(page: params[:page]) if signed_in?
  	@micropost =  current_user.microposts.build if signed_in?
  	
  end

  def help
  end

  def about
  end

  def contact
  end
end
