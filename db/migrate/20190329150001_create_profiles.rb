class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :guitar

      t.timestamps
    end
  end
end
