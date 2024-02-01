class CreateRecipeFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_foods do |t|
      t.decimal :quantity

      t.timestamps
    end

    add_reference :recipe_foods, :recipe, null: false, foreign_key: { on_delete: :cascade }
    add_reference :recipe_foods, :food, null: false, foreign_key: { on_delete: :cascade }
  end
end
