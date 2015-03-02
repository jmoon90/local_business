class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :number
      t.string :type
      t.string :hours
      t.string :address
      t.references :city, index: true
      t.references :state, index: true

      t.timestamps
    end
  end
end
