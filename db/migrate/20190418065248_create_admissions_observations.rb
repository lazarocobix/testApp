class CreateAdmissionsObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions_observations, id: false do |t|
      t.belongs_to :admission, index: true
      t.belongs_to :observation, index: true
    end
  end
end
