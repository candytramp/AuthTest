class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :lname
      t.datetime :birthday

      t.timestamps null: false
    end
  end
end
