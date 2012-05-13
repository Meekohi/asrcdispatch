class CreateResponders < ActiveRecord::Migration
  def change
    create_table :responders do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :homephone
      t.string :cellphone
      t.text :address

      t.timestamps
    end
  end
end
