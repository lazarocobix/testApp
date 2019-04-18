module MedicationRoute
    extend ActiveSupport::Concern
    included do 
        enum route: [:PO, :IM, :SC]
    end
end