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


def edit
#byebug
  @article = Article.find(params[:id])
end


def create
  @article = Article.new(params.require(:article).permit(:title, :discription))
  if @article.save
      flash[:notice] = "article was created seccesfully."
      redirect_to @article
  else
      render 'new'
  end
end

def update
#  byebug
  @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :discription))
      flash[:notice] = "articl updated successfully"
      redirect_to @article
    else
        render 'edit'
    end

  end




end
