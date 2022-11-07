class CreateReveiws < ActiveRecord::Migration[6.1]
  def change
    create_table :reveiws do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :star_rating
      t.string :comment
    end
  end
end
