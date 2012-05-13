class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :location
      t.integer :status
      t.text :information

      t.timestamps
    end
  end
end
