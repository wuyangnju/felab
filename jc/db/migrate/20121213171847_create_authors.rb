class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.references :oranization
    end
    add_index :authors, :oranization_id
  end
end
