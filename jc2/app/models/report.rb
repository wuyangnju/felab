class Report < ActiveRecord::Base
  belongs_to :org
  has_and_belongs_to_many :authors;
  attr_accessible :benchmark, :close, :create_time, :high, :low, :rating, :report_title, :report_type, :report_url, :right, :scrape_time, :source, :stock_code, :target_increase_lower, :target_increase_upper, :target_price, :target_time_lower, :target_time_upper, :web_publish_time
end
