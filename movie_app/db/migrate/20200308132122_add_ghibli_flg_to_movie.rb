class AddGhibliFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :ghibliFlg, :string
  end
end
