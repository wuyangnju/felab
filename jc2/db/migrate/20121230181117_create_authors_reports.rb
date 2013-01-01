class CreateAuthorsReports < ActiveRecord::Migration
  def change
    create_table :authors_reports do |t|
      t.references :author
      t.references :report
    end
    add_index :authors_reports, :author_id
    add_index :authors_reports, :report_id
  end
end
