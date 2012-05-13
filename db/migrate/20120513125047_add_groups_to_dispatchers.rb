class AddGroupsToDispatchers < ActiveRecord::Migration
  def change
    add_column :dispatchers, :group_id, :integer

  end
end
