class CreateCatagories < ActiveRecord::Migration
    def change
        create_table :catagories do |t|
            t.string :catagory_name

            t.timestamps
        end
    end
end
