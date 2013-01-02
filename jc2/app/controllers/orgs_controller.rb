class OrgsController < ApplicationController

  def index
    @orgs = Org.scoped
    @orgs = @orgs.where(:name => params[:name].strip) unless params[:name].blank?
    @orgs = @orgs.paginate(:page => params[:page])

    render :json => @orgs, :methods => :all_reports_statistic
  end

  def show
    @org = Org.find(params[:id])

    render :json => @org, :methods => [:all_reports_statistic, :annual_reports_statistic]
  end

end
