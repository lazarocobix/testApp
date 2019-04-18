class CreateObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :observations do |t|
      t.string :name
      t.text :description
      t.date :moment

      t.timestamps
    end
  end
end
