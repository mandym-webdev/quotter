class QuotesController < ApplicationController

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.user_id = current_user.id
    respond_to do |f|
      if (@quote.save)
        f.html { redirect_to :back, notice: "Great Quote!" }
      else
        f.html { redirect_to :back, notice: "Oops! Something went wrong!" }
      end
    end
  end

  def upvote 
    @quote = Quote.find(params[:id])
    @quote.upvote_by current_user
    redirect_to :back
  end  

  private

  def quote_params
    params.require(:quote).permit(:user_id, :quote, :source)
  end

end

