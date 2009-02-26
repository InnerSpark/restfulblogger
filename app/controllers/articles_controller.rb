class ArticlesController < ApplicationController
  def index
    @article = Article.paginate :page => params[:page], :per_page => 10, :order => 'created_at ASC'
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @article.to_xml }
    end
  end
  
  def show
    
      respond_to do |format|
        format.html
        format.xml { render :xml => @article.to_xml }
      end
  end
  
  def new
    
      respond_to do |format|
        format.html
        format.xml { render :xml => @article.to_xml }
      end
  end
  
  def create
    
      respond_to do |format|
        if @article.save
          flash[:notice] = 'Article was successfully submitted.'
          format.html { redirect_to  } # Need to finnish the paths
      end
  end
  
  def destroy
    #need to add functions
  end
end