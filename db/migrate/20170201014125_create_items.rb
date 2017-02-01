class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.decimal :quantity, default: 1
      t.integer :unit_id, index: true
      t.integer :count, default: 1
      t.integer :food_id, index: true
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
