class ReportsController < ApplicationController

  def index
    @reports = Report.scoped
    @reports = @reports.where(:org_id => params[:org_id]) unless params[:org_id].blank?
    @reports = @reports.joins(:authors).where('authors.id' => params[:author_id]) unless params[:author_id].blank?
    @reports = @reports.paginate(:page => params[:page])

    render :json => @reports, :include => {:authors => {:only => [:id, :name]}, :org => {:only => :name}}
  end

  def show
    @report = Report.find(params[:id])

    render :json => @report, :include => {:authors => {:only => [:id, :name]}, :org => {:only => :name}}
  end

end
