class Prospect < ApplicationRecord
    # belongs_to :manager 
    # belongs_to :salesrep
    has_many :activities
end
