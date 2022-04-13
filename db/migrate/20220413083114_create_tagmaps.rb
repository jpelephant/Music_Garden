class CreateTagmaps < ActiveRecord::Migration[5.2]
  def change
    create_table :tagmaps do |t|

      t.integer :tag_id,      null: false
      t.integer :review_id,   null: false

      t.timestamps
    end
  end
end
