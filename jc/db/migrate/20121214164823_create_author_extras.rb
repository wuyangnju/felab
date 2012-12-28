class CreateAuthorExtras < ActiveRecord::Migration
  def change
    create_table :author_extras do |t|
      t.references :author
      t.integer :report_correctness_count
      t.integer :report_count
      t.float :report_correctness_ratio
    end
    add_index :author_extras, :author_id
  end
end
