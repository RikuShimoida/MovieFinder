class AddUsefulFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :usefulFlg, :string
  end
end
