class AuthorsController < ApplicationController

  def index
    @authors = Author.scoped;
    @authors = @authors.where(:org_id => params[:org_id]) unless params[:org_id].blank?
    @authors = @authors.where(:name => params[:name].strip) unless params[:name].blank?
    @authors = @authors.paginate(:page => params[:page]);

    render :json => @authors;
  end

  def show
    @author = Author.find(params[:id])
    @author.
    render :json => @author;
  end
end
