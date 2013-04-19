class User < ActiveRecord::Base
    attr_accessible :email, :last_login_ip, :last_login_time, :name, :salt, :password, :password_confirmation
    validate :name, presence: true, uniqueness: true
    has_secure_password

    after_destroy :ensure_one_admin_remains

    # ensure at least one superusr remains!
    def ensure_one_admin_remains
        raise "Can't delete last user" if User.count.zero?
    end
end
