class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.string :preparation_time
      t.string :cooking_time
      t.boolean :public

      t.timestamps
    end
  end
end
