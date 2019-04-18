class MedicationOrder < ApplicationRecord
    include MassUnit

    belongs_to :order_frequency
end
