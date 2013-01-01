class AuthorsController < ApplicationController

  def index
    @authors = Author.paginate(:page => params[:page]);

    render :json => @authors;
  end

  def show
    @author = Author.find(params[:id])

    render :json => @author;
  end
end
