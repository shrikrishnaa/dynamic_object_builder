class CreateObjectData < ActiveRecord::Migration[5.0]
  def change
    create_table :object_data do |t|
      t.string :name

      t.timestamps
    end
  end
end
