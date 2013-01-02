class Org < ActiveRecord::Base
  attr_accessible :name
  has_many :reports

  def all_reports_statistic
    Report.all_reports_statistic self.reports
  end

  def annual_reports_statistic
    Report.annual_reports_statistic self.reports
  end
end
