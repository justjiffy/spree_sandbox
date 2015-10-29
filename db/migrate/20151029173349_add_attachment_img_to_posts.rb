class AddAttachmentImgToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :posts, :img
  end
end
