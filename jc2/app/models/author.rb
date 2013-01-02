class Author < ActiveRecord::Base
  belongs_to :org
  has_and_belongs_to_many :reports
  attr_accessible :name

  def all_reports_statistic
    reports_count = 0
    reports_right_count = 0
    self.reports.each do |report|
      reports_count += 1
      reports_right_count += 1 unless report.right == 0
    end
    return {
        "reports_count" => reports_count,
        "reports_right_count" => reports_right_count,
        "reports_right_ratio" => reports_right_count * 1.0 / reports_count
    }
  end

  def annual_reports_statistic
    result = {}
    self.reports.each do |report|
      year = report.create_time.year
      result[year] = {"reports_count" => 0, "reports_right_count" => 0} unless result.has_key?year
      result[year]["reports_count"] += 1
      result[year]["reports_right_count"] += 1 unless report.right == 0
    end
    result.each do |year, statistic|
      statistic["reports_right_ratio"] = statistic["reports_right_count"] * 1.0 / statistic["reports_count"]
    end
    return result
  end
end
