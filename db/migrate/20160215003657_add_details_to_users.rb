class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :avatar, :string
    add_column :users, :location, :string
  end
end
