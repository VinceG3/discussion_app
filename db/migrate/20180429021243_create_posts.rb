class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :contents
      t.belongs_to :discussion, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
