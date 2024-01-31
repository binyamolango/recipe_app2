class CreateFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.string :name, null: false, default: ""
      t.string :measurement_unit, null: false, default: "grams"
      t.decimal :price, precision: 5, scale: 2
      t.decimal :quantity, precision: 5, scale: 2

      t.timestamps
    end

    add_index :foods, :name, unique: true
    add_reference :foods, :user, null: false, foreign_key: { on_delete: :cascade }
  end
end
