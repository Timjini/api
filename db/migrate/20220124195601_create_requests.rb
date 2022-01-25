class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :category
      t.integer :status

      t.timestamps
    end
  end
end
