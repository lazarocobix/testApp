class CreateAdmissionsDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions_diagnoses, id: false do |t|
      t.belongs_to :admission, index: true
      t.belongs_to :diagnosis, index: true
    end
  end
end
