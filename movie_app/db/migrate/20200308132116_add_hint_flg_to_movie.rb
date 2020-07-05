class AddHintFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :hintFlg, :string
  end
end
