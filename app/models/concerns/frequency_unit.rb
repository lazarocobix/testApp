module FrequencyUnit
    extend ActiveSupport::Concern
    included do 
        enum unit: [:hour]
    end
end