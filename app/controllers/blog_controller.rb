class BlogController < ApplicationController

  def index
    @articles = Article.page(params[:page]).per(5)
    
    respond_to do |format|
      format.html
      format.js {}
    end
  end

  def article
    @artcile = Article.find(params[:id])
  end

  def about
  end

  def contact
  end
end
