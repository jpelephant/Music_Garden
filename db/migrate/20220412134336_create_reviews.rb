class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|

      t.integer :customer_id,   null: false
      t.integer :admin_id,      null: false
      t.string :name,           null: false
      t.string :heading,        null: false
      t.string :group_name,     null: false
      t.string :member
      t.text :comment,          null: false
      t.integer :gender,        default: 0
      t.float :rate,            null: false
      t.date :year

      t.timestamps              null: false
    end
  end
end
