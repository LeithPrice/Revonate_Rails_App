class ChangeStateTypeToIntegerInListing < ActiveRecord::Migration[6.1]
  def change
    def up
      change_column :listings, :state, :integer
    end
  
    def down
      change_column :listings, :state, :string
    end
  end
end
