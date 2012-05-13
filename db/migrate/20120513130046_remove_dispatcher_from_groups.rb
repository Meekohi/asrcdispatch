class RemoveDispatcherFromGroups < ActiveRecord::Migration
  def up
    remove_column :groups, :dispatcher_id
      end

  def down
    add_column :groups, :dispatcher_id, :integer
  end
end
