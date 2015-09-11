class CreateJoinTableGroupsTeachers < ActiveRecord::Migration
  def change
    create_join_table :groups, :teachers do |t|
      t.index [:group_id, :teacher_id]
      t.index [:teacher_id, :group_id]
    end
  end
end
