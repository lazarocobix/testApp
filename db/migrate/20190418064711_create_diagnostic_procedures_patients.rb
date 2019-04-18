class CreateDiagnosticProceduresPatients < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnostic_procedures_patients, id: false do |t|
      t.belongs_to :diagnostic_procedure, index: false
      t.belongs_to :patient, index: true
    end
  end
end
