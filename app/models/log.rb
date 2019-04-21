class Log < ApplicationRecord
    validates :date, presence: true, format: { with: /\d{2}\/\d{2}\/\d{4}/, message: "must be formatted as ex. 08/24/2009"} 
    validates :focus, format: { with: /\A[a-zA-Z ]*+\z/, message: "only allows letters and spaces" }
    validates :details, presence: true, length: { minimum: 10} 
end
