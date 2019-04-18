class CreateAdmissionsSymptoms < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions_symptoms, id: false do |t|
      t.belongs_to :admission, index: true
      t.belongs_to :symptom, index: true
    end
  end
end
