class AddFieldToPost < ActiveRecord::Migration
  def change
    add_column :posts, :couns, :boolean
  end
end
