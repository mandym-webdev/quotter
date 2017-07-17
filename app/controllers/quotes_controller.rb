class QuotesController < ApplicationController

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.user_id = current_user.id
    respond_to do |format|
      if (@quote.save)
        format.html { redirect_to :back, notice: "Great Quote!" }
        format.js
      else
        format.html { redirect_to :back, notice: "Oops! Something went wrong!" }
        format.js
      end
    end
  end

  def upvote 
    @quote = Quote.find(params[:id])
    @quote.upvote_by current_user
    redirect_to :back
  end  

  def random_quote
    @random_quote = Quote.where(id: Quote.pluck(:id).sample(5))
  end

  private

  def quote_params
    params.require(:quote).permit(:user_id, :quote, :source)
  end

end

