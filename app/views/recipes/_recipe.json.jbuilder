json.extract! recipe, :id, :title, :content, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
