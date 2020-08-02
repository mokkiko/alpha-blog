class ArticlesController < ApplicationController

def show
#  byebug
  @article = Article.find(params[:id])
end

def index
  @articles = Article.all
end

def new
  @article = Article.new

end


def create
  @article = Article.new(params.require(:article).permit(:title, :discription))
  if @article.save
      flash[:notice] = "article was created secsesfully."
      redirect_to @article
  else
      render 'new'

  end
end





end
