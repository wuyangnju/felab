class ReportsController < ApplicationController

  def index
    @reports = Report.paginate(:page => params[:page]);

    render :json => @reports;
  end

  def show
    @report = Report.find(params[:id])

    render :json => @report;
  end

end
