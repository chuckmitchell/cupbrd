class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.decimal :quantity, default: 1
      t.integer :unit_id, index: true
      t.integer :remaining, default: 100
      t.integer :food_id, index: true
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
