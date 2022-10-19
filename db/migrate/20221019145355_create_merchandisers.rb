class CreateMerchandisers < ActiveRecord::Migration[7.0]
  def change
    create_table :merchandisers do |t|
      t.string :username
      t.string :image
      t.string :email
      t.integer :phone_number
      t.string :password
      t.integer :user_id
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
