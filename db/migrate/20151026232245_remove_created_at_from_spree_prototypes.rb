class RemoveCreatedAtFromSpreePrototypes < ActiveRecord::Migration
  def change
  	remove_column :spree_prototypes, :created_at, :datetime
  end
end
