class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.references :org
    end
    add_index :authors, :org_id
  end
end
