class CreateCoops < ActiveRecord::Migration
  def change
    create_table :coops do |t|
      t.string :name
      t.string :email
      t.references :rotation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
