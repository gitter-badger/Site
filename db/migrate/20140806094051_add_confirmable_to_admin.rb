class AddConfirmableToAdmin < ActiveRecord::Migration
  def change
       add_column :admins,  :unconfirmed_email,:string # Only if using reconfirmab
 add_column  :admins,:confirmation_token,   :string
add_column :admins,:confirmed_at,         :time
  add_column :admins,:confirmation_sent_at, :time
  end
end
