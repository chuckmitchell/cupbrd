class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :name
      t.string :symbol
      t.integer :measurement_type

      t.timestamps
    end
  end
end
