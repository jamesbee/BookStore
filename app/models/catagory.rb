class Catagory < ActiveRecord::Base
    attr_accessible :catagory_name, :parent_catagory_id
    belongs_to :parent_catagory, class_name: :Catagory
    has_many :child_catagories, class_name: :Catagory, foreign_key: :parent_catagory_id

end
