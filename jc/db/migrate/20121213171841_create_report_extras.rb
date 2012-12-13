class CreateReportExtras < ActiveRecord::Migration
  def change
    create_table :report_extras do |t|
      t.float :high
      t.float :low
      t.float :close
      t.float :right
      t.references :report
    end
    add_index :report_extras, :report_id
  end
end
