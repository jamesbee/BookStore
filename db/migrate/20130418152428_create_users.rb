class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :salt
      t.string :email
      t.string :last_login_ip
      t.string :last_login_time

      t.timestamps
    end
  end
end
