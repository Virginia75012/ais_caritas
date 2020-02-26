class Flat < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  TYPOLOGY = ["studio", "t1", "t2", "t3", "t4", "t5"]
  CURRENT_STATE = ["libre", "occupe"]
  APPARTEMENT_CONDITION = ["travaux à prevoir", "à rafraîchir", "neuf"]
  ORIGIN_CONTACT = ["delegation secours catholique", "proprietaires actuels agence", "FAPIL", "ANAH", "internet", "presse", "autre"]
   validates :typology, inclusion: { in: TYPOLOGY }
   validates :current_state, inclusion: { in: CURRENT_STATE }
   validates :appartement_condition, inclusion: { in: APPARTEMENT_CONDITION }
   validates :origin_contact, inclusion: { in: ORIGIN_CONTACT }
end
