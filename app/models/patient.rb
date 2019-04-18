class Patient < ApplicationRecord
    include Gender

    belongs_to :admission

    has_and_belongs_to_many :allergies
    has_and_belongs_to_many :diagnoses
    has_and_belongs_to_many :medication_orders
    has_and_belongs_to_many :diagnostic_procedures
    has_and_belongs_to_many :treatments

    def full_name
        "#{first_name} #{middle_name} #{last_name}"
    end

    def diagnoses_sentence
        diagnoses.map(&:description).join(", ") 
    end

    def allergies_sentence
        allergies.map(&:description).join(", ") 
    end

    def diagnoses_code_sentence
        diagnoses.map(&:code).join(", ") 
    end

    def diagnostic_procedures_sentence
        diagnostic_procedures.map{|d| "#{d.description} on #{d.moment.to_date} at #{d.moment.strftime("%I:%M:%S %z")}"}.join(", ") 
    end

    def medications_sentence
        medication_orders.map{|m| "#{m.name} , #{m.dosage}, #{m.route}, #{m.order_frequency.unit} to #{m.necessity}"}.join(", ") 
    end

    def treatments_sentence
        treatments.map{|t| "#{t.description} to #{t.necessity}"}.join(", ") 
    end
end
