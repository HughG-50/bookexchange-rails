class AddCategoryToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :category, :integer
  end
end
