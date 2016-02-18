class AddRemoveColumns < ActiveRecord::Migration
  def change
    remove_column :activities, :start
    remove_column :activities, :end

    add_column :activities, :start, :datetime
  end
end
