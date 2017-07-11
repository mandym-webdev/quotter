class PagesController < ApplicationController

  # directs to individual user profile at user/:id
  def profile

    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else 
      redirect_to root_path, :notice=> "User not found!" 
    end

  end

  # directs to all submitted quotes at /discover
  def discover
  end

  # directs to list of quotes submitted by people user is following at /
  def home
  end

  # directs to 'welcome to quotter' page at /index
  def index
  end
end
