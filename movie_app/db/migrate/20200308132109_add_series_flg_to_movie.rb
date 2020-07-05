class AddSeriesFlgToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :seriesFlg, :string
  end
end
