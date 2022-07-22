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

  
# failed attempts at drop down boxes

#   enum state: {
#     Queensland: 1,
#     New_South_Wales: 2,
#     Victoria: 3,
#     Tasmania: 4,
#     South_Australia: 5,
#     Northern_Territory: 6,
#     Western_Australia: 7,
#     Australian_Capital_Territory: 8
# }

#   enum bodytype: {
#     Coupe: 1,
#     Hatch: 2,
#     Light_Truck: 3,
#     Sedan: 4,
#     Ute: 5,
#     Van: 6,
#     Wagon: 7,
#     Other: 8
#   }

    # enum seat: {
    #   One: 1,
    #   Two: 2,
    #   Three: 3,
    #   Four: 4,
    #   Five: 5,
    #   Six: 6,
    #   Seven: 7,
    #   Eight: 8
    # }
end
