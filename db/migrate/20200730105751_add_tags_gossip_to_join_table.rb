class AddTagsGossipToJoinTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :join_table_tags_gossips, :gossip, foreign_key: true
    add_reference :join_table_tags_gossips, :tag, foreign_key: true
  end
end
