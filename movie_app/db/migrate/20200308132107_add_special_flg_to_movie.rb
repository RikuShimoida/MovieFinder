class AddSpecialFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :specialFlg, :string
  end
end
