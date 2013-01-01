class OrgsController < ApplicationController

  def index
    @orgs = Org.paginate(:page => params[:page]);

    render :json => @orgs;
  end

  def show
    @org = Org.find(params[:id])

    render :json => @org;
  end

end
