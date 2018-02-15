class OscarFemaleWinner < ApplicationRecord
    validates :year, :age, :name, :movie presence: true
end
