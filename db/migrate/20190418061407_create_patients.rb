class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.integer :age
      t.string :middle_name
      t.string :last_name
      t.string :mr
      t.date :dob
      t.integer :gender
      t.belongs_to :admission, index: true

      t.timestamps
    end
  end
end
