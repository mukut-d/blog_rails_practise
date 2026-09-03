class BlogsController < ApplicationController
  # these are all actions, each action has a view file.
  def index
    @articles = Article.order(:position)
  end

  # when you put @ in front of variable, it is called instance variable.
  def new
    @name = "Mukut"
    @last_name = "Das"

    @count = Article.count
    @article = Article.new(position: @count + 1)
  end

  def create
    puts params.inspect
    puts "========================="
    @article = Article.new(article_params)

    if @article.save
      redirect_to blogs_path
    else
      puts @article.errors.full_messages.inspect

      @name = "Mukut"

      @last_name = "Das"
      @count = Article.count
      @article = Article.new(position: @count + 1)
      render("new")
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to blogs_path(@article)
    else
      render("edit")
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to blogs_path
  end

  private

  def article_params
    params.require(:article).permit(:position, :name, :description)
  end
end
