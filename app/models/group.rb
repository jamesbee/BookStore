class Group < ActiveRecord::Base
    attr_accessible :group_name
    validates :group_name, presence: true, uniqueness: true

    has_many :accesses
    has_many :users

    # ensure no referency to group
    before_destroy :ensure_not_referenced_by_any_access

    def ensure_not_referenced_by_any_access
        if accesses.empty?
            return true
        else
            errors.add(:base, 'Access present')
            return false
        end
    end
end
