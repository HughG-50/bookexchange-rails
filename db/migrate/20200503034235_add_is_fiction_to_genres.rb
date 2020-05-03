class AddIsFictionToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :is_fiction, :boolean
  end
end
