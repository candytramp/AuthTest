class CreateJoinTableGroupsRooms < ActiveRecord::Migration
  def change
    create_join_table :groups, :rooms do |t|
      t.index [:group_id, :room_id]
      t.index [:room_id, :group_id]
    end
  end
end
