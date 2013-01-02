class AuthorsController < ApplicationController
  respond_to :json

  def index
    @authors = Author.scoped
    @authors = @authors.where(:org_id => params[:org_id]) unless params[:org_id].blank?
    @authors = @authors.where(:name => params[:name].strip) unless params[:name].blank?
    @authors = @authors.paginate(:page => params[:page])

    respond_with(@authors)
  end

  def show
    @author = Author.find(params[:id])
    @author.sex = "male"
    respond_with(@author)
  end
end
