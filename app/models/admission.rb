class Admission < ApplicationRecord
    has_and_belongs_to_many :diagnoses
    has_and_belongs_to_many :symptoms
    has_and_belongs_to_many :observations

    def diagnoses_sentence
        diagnoses.map(&:description).join(", ") 
    end

    def symptoms_sentence
        symptoms.map(&:description).join(", ") 
    end

    def observations_sentence
        observations.map(&:description).join(", ") 
    end
end
