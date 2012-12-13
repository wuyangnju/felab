class CreateReportOrganizations < ActiveRecord::Migration
  def change
    create_table :report_organizations do |t|
      t.references :report
      t.references :organization
    end
    add_index :report_organizations, :report_id
    add_index :report_organizations, :organization_id
  end
end
