class CreateAllergiesPatients < ActiveRecord::Migration[5.2]
  def change
    create_table :allergies_patients, id: false do |t|
      t.belongs_to :allergy, index: true
      t.belongs_to :patient, index: true
    end
  end
end
