class AddReferencesToDev < ActiveRecord::Migration[7.0]
  def change
    add_reference :devs, :user, index: true
    remove_column :devs, :profit
    add_column :devs, :profile, :string
  end
end
