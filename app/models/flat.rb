class Flat < ApplicationRecord
  belongs_to :user

  TYPOLOGY = %w[studio t1 t2 t3 t4 t5]
  CURRENT_STATE = %w[libre occupé]
  APPARTEMENT_CONDITION = %w[travaux à prevoir à rafraîchir neuf]
  ORIGIN_CONTACT = %w[délégation secours catholique propriétaires-actuels-agence FAPIL ANAH internet presse autre]
  validates :typology, inclusion: { in: TYPOLOGY }
  validates :typology, inclusion: { in: CURRENT_STATE }
  validates :typology, inclusion: { in: APPARTEMENT_CONDITION }
  validates :typology, inclusion: { in: ORIGIN_CONTACT }
end
