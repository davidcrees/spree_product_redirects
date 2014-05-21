class CreateSpreeProductRedirects < ActiveRecord::Migration
  def change
    create_table :spree_product_redirects do |t|
      t.string :permalink
      t.references :product

      t.timestamps
    end
    add_index :spree_product_redirects, :permalink
  end
end
