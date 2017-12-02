class CreateObjectDataValues < ActiveRecord::Migration[5.0]
  def change
    create_table :object_data_values do |t|
      t.text :value
      t.references :object_datum, foreign_key: true

      t.timestamps
    end
  end
end
