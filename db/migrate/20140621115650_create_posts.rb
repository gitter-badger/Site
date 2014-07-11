class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.boolean :mr
      t.boolean :vg
      t.boolean :tp
      t.boolean :wa

      t.timestamps
    end
  end
end
