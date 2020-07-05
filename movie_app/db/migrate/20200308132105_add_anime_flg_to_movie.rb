class AddAnimeFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :animeFlg, :string
  end
end
