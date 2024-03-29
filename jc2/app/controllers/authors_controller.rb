class AuthorsController < ApplicationController

  def index
    @authors = Author.scoped
    @authors = @authors.where(:org_id => params[:org_id]) unless params[:org_id].blank?
    @authors = @authors.where(:name => params[:name].strip) unless params[:name].blank?
    @authors = @authors.paginate(:page => params[:page], :per_page => 10)

    render :json => @authors, :include => {:org => {:only => :name}},
           :methods => :all_reports_statistic
  end

  def show
    @author = Author.find(params[:id])

    render :json => @author, :include => {:org => {:only => :name}},
           :methods => [:all_reports_statistic, :annual_reports_statistic, :investment]
  end
end
