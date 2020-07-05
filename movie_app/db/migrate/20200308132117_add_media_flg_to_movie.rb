class AddMediaFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :mediaFlg, :string
  end
end
