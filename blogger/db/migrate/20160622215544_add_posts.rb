class AddPosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      # t.integer :id ## id is on every table, by default
      t.string :title
      t.text  :body
      t.timestamps
    end
  end
end
