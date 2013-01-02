class ReportsController < ApplicationController
  respond_to :json

  def index
    @reports = Report.scoped
    @reports = @reports.where(:org_id => params[:org_id]) unless params[:org_id].blank?
    @reports = @reports.joins(:authors).where('authors.id' => params[:author_id]) unless params[:author_id].blank?
    @reports = @reports.paginate(:page => params[:page])

    respond_with(@reports)
  end

  def show
    @report = Report.find(params[:id])

    respond_with(@report)
  end

end
