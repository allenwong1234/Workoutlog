class Account < ApplicationRecord
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :name, presence: true, length: { minimum: 3 }
    validates :password, presence: true, length: { in: 8..20 }
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "must be formatted as ex. name@email.com" }
    validates :email, presence: true, length: { minimum: 7 }
    validates :dob, presence: true, format: { with: /\d{2}\/\d{2}\/\d{4}/, message: "must be formatted as ex. 08/24/2009"} 
    validates :weight, presence: true, format: { with: /\A[+-]?\d+\z/, message: "must be numerical values only"} 
    
end 
