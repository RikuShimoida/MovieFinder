class AddNonFictionFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :nonFictionFlg, :string
  end
end
