class CreateJoinTableTagsGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_tags_gossips do |t|

      t.timestamps
    end
  end
end
