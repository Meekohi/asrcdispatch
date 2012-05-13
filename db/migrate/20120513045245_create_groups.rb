class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :fullname
      t.string :shortname
      t.text :location

      t.timestamps
    end
  end
end
