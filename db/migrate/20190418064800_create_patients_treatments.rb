class CreatePatientsTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :patients_treatments, id: false do |t|
      t.belongs_to :treatment, index: true
      t.belongs_to :patient, index: true
    end
  end
end
