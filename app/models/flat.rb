class Flat < ApplicationRecord
  belongs_to :user

  TYPOLOGY = %w[studio t1 t2 t3 t4 t5]
  CURRENT_STATE = %w[libre occupé]
  APPARTEMENT_CONDITION = %w[travaux à prevoir à rafraîchir neuf]
  ORIGIN_CONTACT = %w[délégation secours catholique propriétaires-actuels-agence FAPIL ANAH internet presse autre]
   validates :typology, inclusion: { in: TYPOLOGY }
   validates :current_state, inclusion: { in: CURRENT_STATE }
   validates :appartement_condition, inclusion: { in: APPARTEMENT_CONDITION }
   validates :origin_contact, inclusion: { in: ORIGIN_CONTACT }
end
