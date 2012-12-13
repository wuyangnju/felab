class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :report_title
      t.datetime :create_time
      t.datetime :web_publish_time
      t.string :report_type
      t.string :report_url
      t.string :stock_code
      t.string :rating
      t.float :target_price
      t.string :source
      t.datetime :scrape_time
      t.float :target_increase_lower
      t.float :target_increase_upper
      t.string :benchmark
      t.float :target_time_lower
      t.float :target_time_upper
    end
  end
end
