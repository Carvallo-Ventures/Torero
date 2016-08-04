class CreateRotations < ActiveRecord::Migration
  def change
    create_table :rotations do |t|
      t.string  :title
      t.string  :description
      t.date	:start_date
      t.date    :end_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
