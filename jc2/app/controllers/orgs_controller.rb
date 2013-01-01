class OrgsController < ApplicationController

  def index
    @orgs = Org.scoped;
    @orgs = @orgs.where(:name => params[:name].strip) unless params[:name].blank?
    @orgs = @orgs.paginate(:page => params[:page]);

    render :json => @orgs;
  end

  def show
    @org = Org.find(params[:id])

    render :json => @org;
  end

end
