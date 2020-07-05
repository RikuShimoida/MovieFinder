class AddFuturisticFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :futuristicFlg, :string
  end
end
