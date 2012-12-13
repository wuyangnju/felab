class Report < ActiveRecord::Base
  attr_accessible :benchmark, :create_time, :rating, :report_title, :report_type, :report_url, :scrape_time, :source, :stock_code, :target_increase_lower, :target_increase_upper, :target_price, :target_time_lower, :target_time_upper, :web_publish_time
end
