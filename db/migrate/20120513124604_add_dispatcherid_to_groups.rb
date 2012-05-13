class AddDispatcheridToGroups < ActiveRecord::Migration
  def up
    add_column :groups, :dispatcher_id, :integer
    remove_column :dispatchers, :group_id
  end
  def down
    remove_column :groups, :dispatcher_id
    add_column :dispatchers, :group_id, :integer
  end
end
