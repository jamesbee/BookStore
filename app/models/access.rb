class Access < ActiveRecord::Base
    attr_accessible :access_name, :board_editor, :good_editor, :user_editor
    validate :access_name, presence: true, uniqueness: true

    has_many :groups

    # ensure no referency to access
    before_destroy :ensure_not_referenced_by_any_group

    def ensure_not_referenced_by_any_group
        if groups.empty?
            return true
        else
            errors.add(:base, 'Access present')
            return false
        end
    end
end
