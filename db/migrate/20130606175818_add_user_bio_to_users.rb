class AddUserBioToUsers < ActiveRecord::Migration
  def change
      add_column :users, :user_bio, :text
  end
end
