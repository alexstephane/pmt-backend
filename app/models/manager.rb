class Manager < ApplicationRecord
    has_many :salesreps
    has_many :prospects
    has_many :activities, through: :prospects
    has_secure_password

end
