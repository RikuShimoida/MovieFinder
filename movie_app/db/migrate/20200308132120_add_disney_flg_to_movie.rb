class AddDisneyFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :disneyFlg, :string
  end
end
