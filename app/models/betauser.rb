class Betauser < ActiveRecord::Base
    validates :name,  format: { with: /[A-Za-z\s]+/, message: "Please enter a valid name." }
    validates :email, format: { with: /.+@.+/, message: "Please enter a valid email." }, uniqueness: { case_sensitive: true, message: "Congratulations you have already signed up. Thanks for your support." }
end
