class State < ApplicationRecord
    validates :uf, presence: true
    validates :name, presence: true
    
end
