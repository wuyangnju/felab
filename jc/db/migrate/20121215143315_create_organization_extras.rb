class CreateOrganizationExtras < ActiveRecord::Migration
  def change
    create_table :organization_extras do |t|
      t.references :organization
      t.integer :report_correctness_count
      t.integer :report_count
      t.float :report_correctness_ratio
    end
    add_index :organization_extras, :organization_id    
  end
end
