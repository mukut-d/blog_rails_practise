class BlogsController < ApplicationController
  #these are all actions, each action has a view file
  def index
    @articles = Article.order(:postion)
  end

  def new
    # when you put @ in front of variable, it is called instance variable 
    @name = "Mukut"
    @last_name = "Das"

    @count = Article.count
    @article = Article.new(postion: @count + 1 + 3)
  end

  def create

    puts "========================"
    puts params.inspect
    puts "========================"

    @article = Article.new(article_params)
    if @article.save
      redirect_to blogs_path
    else
      puts @arctile.errors.full_messages

      render('new')
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
      render('edit')
    end    

  end  

  def show
     @article = Article.find(params[:id])
  end 

  def delete
    @article = Article.find(params[:id])
  end  

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to blogs_path
  end  

  private 
  
  def article_params
    params.require(:article).permit(
      :postion,
      :name,
      :description 
    )
  end  

end
