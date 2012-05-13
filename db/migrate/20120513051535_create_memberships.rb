class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :group_id
      t.integer :responder_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
