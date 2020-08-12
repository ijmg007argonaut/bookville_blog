class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.text :title
      t.string :authorfirst
      t.string :authorlast
      t.integer :pages
      t.string :isbn
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
