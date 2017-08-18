class CreateJoinTableRoleUser < ActiveRecord::Migration[5.1]
  def change
   create_table :roles_users, id: false do |t|
     t.integer :role_id
     t.integer :user_id
     
     t.index [:role_id, :user_id]
     t.index [:user_id, :role_id]
   end
 end
end
