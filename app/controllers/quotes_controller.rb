class QuotesController < ApplicationController

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.user_id = current_user.id
    respond_to do |f|
      if (@quote.save)
        f.html { redirect_to '', notice: "Great Quote!" }
      else
        f.html { redirect_to '', notice: "Oops! Something went wrong!" }
      end
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:user_id, :quote, :source)
  end

end


    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id # assign the post to the user who created it.
        respond_to do |f|
            if (@post.save) 
                f.html { redirect_to "", notice: "Post created!" }
            else
                f.html { redirect_to "", notice: "Error: Post Not Saved." }
            end
        end
    end


    private
    def post_params # allows certain data to be passed via form.
        params.require(:post).permit(:user_id, :content)
        
    end