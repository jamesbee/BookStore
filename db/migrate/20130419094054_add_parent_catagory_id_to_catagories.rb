class AddParentCatagoryIdToCatagories < ActiveRecord::Migration
    def change
        add_column :catagories, :parent_catagory_id, :integer
    end
end
