class CreateBooks < ActiveRecord::Migration
    def change
        create_table :books do |t|
            t.float :onsale, precision: 8, scale: 2
            t.string :book_info, limit: 60
            t.integer :call_number
            t.integer :catagory_id

            t.timestamps
        end
    end
end
