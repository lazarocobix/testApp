class CreateMedicationOrdersPatients < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_orders_patients, id: false do |t|
      t.belongs_to :medication_order, index: true
      t.belongs_to :patient, index: true
    end
  end
end
