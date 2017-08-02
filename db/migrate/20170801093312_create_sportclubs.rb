class CreateSportclubs < ActiveRecord::Migration[5.1]
  def change
    create_table :sportclubs do |t|
      t.string :address
      t.string :postcode
      t.string :clubname
      t.integer :position
      t.string :mailaddress
      t.string :webpage
      t.string :phonenumber

      t.timestamps
    end
  end
end
