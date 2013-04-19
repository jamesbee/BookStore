class CreateAccesses < ActiveRecord::Migration
    def change
        create_table :accesses do |t|
            t.string :access_name
            t.boolean :user_editor
            t.boolean :good_editor
            t.boolean :board_editor

            t.timestamps


        end
    end
end
