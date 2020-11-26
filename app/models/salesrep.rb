class Salesrep < ApplicationRecord
    
    belongs_to :manager
    has_many :prospects
    has_many :activities, through: :prospects
    has_secure_password
end
