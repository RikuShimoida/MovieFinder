class AddSexyFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :sexyFlg, :string
  end
end
