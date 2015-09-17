class CommentsController < ApplicationController
  filter_resource_access

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(body: params[:comment][:body], user_id: current_user.id)
    @count_comments = @article.comments.count

    respond_to do |format|
      format.html { redirect_to controller: :blog, action: :article, id: @article.id }
      format.js
    end
  end
  
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to controller: :blog, action: :article, id: @article.id
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
