class Author < ActiveRecord::Base
  belongs_to :org
  has_and_belongs_to_many :reports
  attr_accessible :name

  def all_reports_statistic
    Report.all_reports_statistic self.reports
  end

  def annual_reports_statistic
    Report.annual_reports_statistic self.reports
  end
end