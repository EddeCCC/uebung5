class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :plz
      t.string :city
      t.string :street

      t.timestamps
    end
  end
end
