class CreateAccessGroups < ActiveRecord::Migration
    def change
        create_table(:accesses_groups, id: false) do |t|
            t.integer :access_id
            t.integer :group_id

            t.timestamps
        end
    end
end
