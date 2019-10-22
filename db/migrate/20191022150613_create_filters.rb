class CreateFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :filters do |t|
      t.references :product, foreign_key: true
      t.references :sub_category, foreign_key: true

      t.timestamps
    end
  end
end
