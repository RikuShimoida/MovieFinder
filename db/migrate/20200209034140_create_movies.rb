class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :loveFlg
      t.string :depressedFlg
      t.string :ForeignFlg
      t.string :mysteriousFlg
      t.string :actionFlg
      t.string :horrorFlg

      t.timestamps
    end
  end
end
