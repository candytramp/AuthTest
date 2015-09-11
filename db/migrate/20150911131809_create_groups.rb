class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :number
      t.text :direction

      t.timestamps null: false
    end
  end
end
