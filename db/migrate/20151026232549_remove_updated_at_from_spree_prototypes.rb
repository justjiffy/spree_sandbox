class RemoveUpdatedAtFromSpreePrototypes < ActiveRecord::Migration
  def change
  	remove_column :spree_prototypes, :updated_at, :datetime
  end
end
