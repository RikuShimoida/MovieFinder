class AddMusicalFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :musicalFlg, :string
  end
end
