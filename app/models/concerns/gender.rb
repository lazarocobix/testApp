module Gender
    extend ActiveSupport::Concern
    included do 
        enum gender: [:male, :female, :other]
    end
end