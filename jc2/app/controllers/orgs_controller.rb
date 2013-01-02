class OrgsController < ApplicationController
  respond_to :json

  def index
    @orgs = Org.scoped
    @orgs = @orgs.where(:name => params[:name].strip) unless params[:name].blank?
    @orgs = @orgs.paginate(:page => params[:page])

    respond_with(@orgs)
  end

  def show
    @org = Org.find(params[:id])

    respond_with(@org)
  end

end
