class User < ActiveRecord::Base
  validates :name , presence: true
  # NHO: +1 for validations! What other attribite could use validations?
end
