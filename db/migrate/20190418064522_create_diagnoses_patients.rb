class CreateDiagnosesPatients < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses_patients, id: false do |t|
      t.belongs_to :diagnosis, index: true
      t.belongs_to :patient, index: true
    end
  end
end
