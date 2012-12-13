class CreateReportAuthors < ActiveRecord::Migration
  def change
    create_table :report_authors do |t|
      t.references :report
      t.references :author
    end
    add_index :report_authors, :report_id
    add_index :report_authors, :author_id
  end
end
