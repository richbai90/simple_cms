class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalink
      t.integer :position
      t.boolean :visible
      t.integer :subject_id

      t.timestamps null: false
    end
    add_index :pages, :name
    add_index :pages, :permalink
    add_index :pages, :subject_id
  end
end
