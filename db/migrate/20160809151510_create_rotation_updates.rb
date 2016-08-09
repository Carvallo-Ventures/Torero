class CreateRotationUpdates < ActiveRecord::Migration
  def change
    create_table :rotation_updates do |t|
      t.string :title
      t.string :content
      t.references :rotation, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
