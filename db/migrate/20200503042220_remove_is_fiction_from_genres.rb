class RemoveIsFictionFromGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :is_fiction, :boolean
  end
end
