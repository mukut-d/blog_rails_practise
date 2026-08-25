class BlogsController < ApplicationController
  #these are all actions, each action has a view file
  def index
    @blogs = Article.order(:postion)
  end

  def new
    # when you put @ in front of variable, it is called instance variable 
    @name = "Mukut"
    @last_name = "Das"

    @article = Article.new
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
  
  end

  def update
  end  

  def show
    
  end 
  def destroy
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
