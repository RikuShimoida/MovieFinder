class AddActorToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :actor, :string
  end
end
