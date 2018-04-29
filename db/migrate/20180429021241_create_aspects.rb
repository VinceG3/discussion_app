class CreateAspects < ActiveRecord::Migration[5.2]
  def change
    create_table :aspects do |t|
      t.string :name
      t.belongs_to :topic, foreign_key: true

      t.timestamps
    end
  end
end
