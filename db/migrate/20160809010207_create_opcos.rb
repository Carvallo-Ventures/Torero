class CreateOpcos < ActiveRecord::Migration
  def change
    create_table :opcos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
