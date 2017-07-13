class PagesController < ApplicationController

  # directs to individual user profile at user/:id
  def profile

    if (User.find_by_username(params[:id]))
      @username = params[:id]
      @avatar = @username.first.upcase
    else 
      redirect_to root_path, :notice=> "User not found!" 
    end

    @newQuote = Quote.new

    @quotes = Quote.all.where("user_id = ?", User.find_by_username(params[:id]).id)

    @user = User.find_by_username(params[:id])
    
  end

  # directs to all submitted quotes at /discover
  def discover
    @quotes = Quote.all
  end

  # directs to list of quotes submitted by people user is following at /
  def home
    @quotes = Quote.all
  end

  # directs to 'welcome to quotter' page at /index
  def index
    @quotes = Quote.all
  end
end
