class Report < ActiveRecord::Base
  belongs_to :org
  has_and_belongs_to_many :authors
  attr_accessible :benchmark, :close, :create_time, :high, :low, :rating, :report_title, :report_type, :report_url, :right, :scrape_time, :source, :stock_code, :target_increase_lower, :target_increase_upper, :target_price, :target_time_lower, :target_time_upper, :web_publish_time

  def self.all_reports_statistic reports
    reports_count = 0
    reports_right_count = 0
    reports.each do |report|
      reports_count += 1
      reports_right_count += 1 unless report.right == 0
    end
    return {
        "reports_count" => reports_count,
        "reports_right_count" => reports_right_count,
        "reports_right_ratio" => reports_right_count * 1.0 / reports_count
    }
  end

  def self.annual_reports_statistic reports
    result = {}
    reports.each do |report|
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
