module MassUnit
    extend ActiveSupport::Concern
    included do 
        enum unit: [:mg]
    end
end