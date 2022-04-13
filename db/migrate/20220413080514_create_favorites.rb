class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|

      t.string :customer_id,  null: false
      t.string :admin_id,     null: false
      t.string :review_id,    null: false

      t.timestamps
    end
  end
end
