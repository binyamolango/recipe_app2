class AddUserIdToRecipeFoods < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipe_foods, :user, foreign_key: true, null: true
    default_user_id = 1 # Replace with the ID of a default user

    RecipeFood.where(user_id: nil).update_all(user_id: default_user_id)

    change_column_null :recipe_foods, :user_id, false
  end
end