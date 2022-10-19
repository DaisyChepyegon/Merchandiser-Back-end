class CreateRoutePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :route_plans do |t|
      t.references :merchandiser, null: false, foreign_key: true
      t.references :manager, null: false, foreign_key: true
      t.references :outlet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
