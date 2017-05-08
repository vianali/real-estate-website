class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :phone_number
      t.string :province
      t.string :address
      t.string :type
      t.text :description
      t.float :latitude
      t.float :longitude
      t.string :state
      t.string :price
      t.text :avalibility
      t.string :real_state_number

      t.timestamps null: false
    end
  end
end
