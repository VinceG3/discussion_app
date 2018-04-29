class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.string :name
      t.belongs_to :aspect, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end
