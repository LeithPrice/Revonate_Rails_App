class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description

  enum condition: {
    Repairable_writeoff: 1,
    Statutory_writeoff: 2,
    Vintage_fixer_upper: 3,
    Mechanical_repair_needed: 4
  }


end
