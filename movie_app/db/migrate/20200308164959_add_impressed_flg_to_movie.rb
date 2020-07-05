class AddImpressedFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :impressedFlg, :string
  end
end
