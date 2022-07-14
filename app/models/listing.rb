class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description
  has_one_attached :picture


  enum condition: {
    Nothing_but_bones: 1,
    Only_good_for_parts: 2,
    Needs_a_ground_up_repair: 3,
    Mechanically_fine_but_needs_full_body_work: 4,
    Body_is_fine_but_needs_major_mechanical_work: 5,
    Someone_with_spanners_could_fix_it: 6
  }


end
