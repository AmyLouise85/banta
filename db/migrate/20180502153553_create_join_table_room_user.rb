class CreateJoinTableRoomUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :rooms, :users do |t|
      t.index :room_id
      t.index :user_id
    end
  end
end
