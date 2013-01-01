class AuthorsController < ApplicationController

  def index
    @authors = Author.scoped;
    @authors = @authors.where(:org_id => params[:org_id]) unless params[:org_id].blank?
    @authors = @authors.paginate(:page => params[:page]);

    render :json => @authors;
  end

  def show
    @author = Author.find(params[:id])

    render :json => @author;
  end
end
