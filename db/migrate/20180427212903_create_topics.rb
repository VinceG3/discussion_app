class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :name

      t.timestamps
    end

    Topic.create(name: 'Uncategorized')
  end
end
