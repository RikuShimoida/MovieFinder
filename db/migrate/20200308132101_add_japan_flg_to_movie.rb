class AddJapanFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :japanFlg, :string
  end
end
