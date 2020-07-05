class AddDcFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :dcFlg, :string
  end
end
