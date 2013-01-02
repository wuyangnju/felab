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

  def investment
    tmp_result = {}
    self.reports.each do |report|
      stock_file = "stocks/" + report.stock_code + ".csv"
      next unless Pathname.new(stock_file).exist?
      start_date = report.create_time.to_date
      value = 1.0
      update_daily_return tmp_result, start_date, value

      file = File.open(stock_file, "r")
      while (line = file.gets)
        fields = line.split(",")
        date = Date.strptime(fields[0], "%m/%d/%y")
        next unless (date > start_date)
        change = fields[6].to_f
        value *= (1 + change / 100) unless change.nil?
        update_daily_return tmp_result, date, value
      end
      file.close
    end
    tmp_result = tmp_result.sort
    result = {}
    return result unless (tmp_result.size > 0)
    result["start_date"] = tmp_result[0][0];
    result["end_date"] = tmp_result[-1][0];
    result["avg_values"] = []
    for i in 0..(tmp_result.size - 1) do
      result["avg_values"][i] = tmp_result[i][1]["value"] / tmp_result[i][1]["stock_count"]
    end
    return result
  end

  def update_daily_return (result, date, value)
    unless result.has_key?date
      result[date] = {}
      result[date]["value"] = 0.0
      result[date]["stock_count"] = 0
    end
    result[date]["value"] += value
    result[date]["stock_count"] += 1
  end
end