class AddMarvelFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :marvelFlg, :string
  end
end
