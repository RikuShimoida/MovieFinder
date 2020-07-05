class AddSupernaturalFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :supernaturalFlg, :string
  end
end
