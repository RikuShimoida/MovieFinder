class AddThrillFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :thrillFlg, :string
  end
end
