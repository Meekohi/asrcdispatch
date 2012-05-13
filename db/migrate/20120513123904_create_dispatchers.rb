class CreateDispatchers < ActiveRecord::Migration
  def change
    create_table :dispatchers do |t|
      t.integer :group_id
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
