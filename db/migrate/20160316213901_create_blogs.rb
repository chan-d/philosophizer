class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :post
      t.references :user

      t.timestamps null: false
    end
  end
end
