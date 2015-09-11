class CreateJoinTableGroupsSubjects < ActiveRecord::Migration
  def change
    create_join_table :groups, :subjects do |t|
      t.index [:group_id, :subject_id]
      t.index [:subject_id, :group_id]
    end
  end
end
